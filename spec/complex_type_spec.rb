require 'shipping_api/complex_type'
require 'shipping_api/complex_types/currency'

describe ShippingApi::ComplexType do
  describe 'initializaion' do
    it 'raises an RangeError when given code is out of range' do
      expect do
        ShippingApi::Currency.new(123)
      end.to raise_error(RangeError)
    end
  end
end
