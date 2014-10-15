require 'shipping_api/base_enum'
require 'shipping_api/enums/currency'

describe ShippingAPI::BaseEnum do
  describe '#initialize' do
    it 'raises an RangeError when given code is out of range' do
      expect do
        ShippingAPI::Currency.new(123)
      end.to raise_error(RangeError)
    end
  end
end
