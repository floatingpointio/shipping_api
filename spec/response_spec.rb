require 'shipping_api/response'

describe ShippingApi::Response do
  describe '#initialize' do

    valid_response = {
      :Foo => 'bar',
      :Bar => 'baz',
      :IsValid => true,
      :ModelErrors => nil,
      :ValidationErrors => nil
    }

    invalid_response = {
      :IsValid => false,
      :ValidationErrors => [10000, 10001],
      :ModelErrors => {
        :SomeField => "Required",
        :AnotherField => "Required",
      }
    }

    faked_client = Faraday.new do |builder|
      builder.adapter :test, Faraday::Adapter::Test::Stubs.new do |stub|
        stub.get('/api/valid/response') {|env| [ 200, {}, valid_response.to_json ] }
        stub.get('/api/invalid/response') {|env| [ 200, {}, invalid_response.to_json ] }
      end
    end

    it 'returns hash containing data from response with stripped out error fields on success' do
      response = ShippingApi::Response.new faked_client.get '/api/valid/response'
      expect(response.data).to eq({'Foo' => 'bar', 'Bar' => 'baz'})
    end

    it 'returns hash containing model and validation errors on failure' do
      response = ShippingApi::Response.new faked_client.get '/api/invalid/response'

      expect(response.errors[:validation]).to eq [{code: 10000, msg: 'InvalidApiKey'},
                                                  {code: 10001, msg: 'PickupFromAndToDateMismatch'}]
      expect(response.errors[:model]).to match_array [{field: 'SomeField', msg: 'Required'},
                                                       {field: 'AnotherField', msg: 'Required'}]
    end

  end
end
