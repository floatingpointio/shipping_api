require 'webmock/rspec'
require 'vcr'
require 'dotenv'

require 'shipping_api'

Dotenv.load

VCR.configure do |c|
  c.cassette_library_dir = 'spec/fixtures/vcr_cassettes'
  c.default_cassette_options = {
    record: :once,
    re_record_interval: 60 * 60 * 24 # 1 day
  }
  c.hook_into :webmock
  c.allow_http_connections_when_no_cassette = true
  c.ignore_localhost = true
end

WebMock.allow_net_connect!

describe ShippingApi::Endpoints do

  before(:all) do
    @client = ShippingApi::Client.new ENV['API_URL'], ENV['API_KEY']
  end

  describe '#get_locations' do
    it 'gets locations by name' do

      VCR.use_cassette('get_locations') do
        response = @client.get_locations('zagreb')

        expect(response.data['PostalLocations']).to be_kind_of Array

        expect(response.valid?).to be true
        expect(response.model_errors).to be nil
        expect(response.validation_errors).to be nil
      end
    end
  end

end
