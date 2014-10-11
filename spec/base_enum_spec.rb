require 'shipping_api/base_enum'
require 'shipping_api/enums/currency'

describe ShippingApi::BaseEnum do
  describe '#initialize' do
    it 'raises an RangeError when given code is out of range' do
      expect do
        ShippingApi::Currency.new(123)
      end.to raise_error(RangeError)
    end
  end
end
