require 'shipping_api/base_enum'
require 'shipping_api/enums/express_type'

describe ShippingAPI::ExpressType do
  describe 'initializaion' do
    it 'raises an RangeError when given code is out of range' do
      expect do
        ShippingAPI::ExpressType.new(123)
      end.to raise_error(RangeError)
    end
    it 'doesn\'t raise an error when given a proper code' do
      expect do
        ShippingAPI::ExpressType.new([21, 22, 100].sample)
      end.not_to raise_error
    end
  end
end
