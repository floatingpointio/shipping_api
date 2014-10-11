require 'shipping_api/base_enum'
require 'shipping_api/enums/ex_works_type'

describe ShippingApi::ExWorksType do
  describe 'initializaion' do
    it 'raises an RangeError when given code is out of range' do
      expect do
        ShippingApi::ExWorksType.new(123)
      end.to raise_error(RangeError)
    end
    it 'doesn\'t raise an error when given a proper code' do
      expect do
        ShippingApi::ExWorksType.new([4, 44].sample)
      end.not_to raise_error
    end
  end
end
