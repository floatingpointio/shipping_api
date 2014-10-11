require 'shipping_api/base_enum'
require 'shipping_api/enums/shipment_status'

describe ShippingApi::ShipmentStatus do
  describe 'initializaion' do
    it 'raises an RangeError when given code is out of range' do
      expect do
        ShippingApi::ShipmentStatus.new(123)
      end.to raise_error(RangeError)
    end
    it 'doesn\'t raise an error when given a proper code' do
      expect do
        ShippingApi::ShipmentStatus.new(((1..8).to_a + [11]).sample)
      end.not_to raise_error
    end
  end
end
