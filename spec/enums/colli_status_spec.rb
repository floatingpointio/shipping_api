require 'shipping_api/base_enum'
require 'shipping_api/enums/colli_status'

describe ShippingAPI::ColliStatus do
  describe 'initializaion' do
    it 'raises an RangeError when given code is out of range' do
      expect do
        ShippingAPI::ColliStatus.new(123)
      end.to raise_error(RangeError)
    end
    it 'doesn\'t raise an error when given a proper code' do
      expect do
        ShippingAPI::ColliStatus.new(rand(1..4))
      end.not_to raise_error
    end
  end
end
