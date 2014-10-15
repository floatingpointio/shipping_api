require 'webmock/rspec'
require 'vcr'
require 'dotenv'

require 'shipping_api'
require 'spec_helper'

describe ShippingApi::Endpoints do

  before(:all) do
    @client = ShippingApi::Client.new ENV['API_URL'], ENV['API_KEY']
  end

  shared_examples 'every valid response' do
    it 'has no errors hash' do
      expect(response['errors']).to be nil
    end
  end

  describe '#create_shipment' do
    context 'given a hash representing Shipment data' do
      let(:response) do
        VCR.use_cassette('create_shipment') do
          @client.create_shipment(post_data('create_shipment'))
        end
      end

      it_behaves_like 'every valid response'
      it 'returns the Shipment data' do
        expect(response).to be_a Hash
        expect(response['CreatedShipmentId']).to be_a Integer
      end
    end
  end

  # describe '#get_locations' do
  #   context 'given a location name' do
  #     it_behaves_like 'every valid response'
  #     it 'returns all locations matching that name' do
  #       VCR.use_cassette('get_locations') do
  #         response = @client.get_locations('zagreb')
  #         expect(response.data['PostalLocations']).to be_kind_of Array
  #       end
  #     end
  #   end
  # end

  # describe '#get_shipment_status_by_shipment_id' do
  #   context 'given a shipment id' do
  #     it 'returns the shipment status' do
  #       VCR.use_cassette('get_shipment_status_by_shipment_id') do
  #         response = @client.get_shipment_status_by_shipment_id(12)
  #         expect(response.data['PostalLocations']).to be_kind_of Array
  #       end
  #     end
  #   end
  # end
end
