require 'shipping_api/base_enum'
require 'shipping_api/enums/notification_type'

describe ShippingApi::NotificationType do
  describe 'initializaion' do
    it 'raises an RangeError when given code is out of range' do
      expect do
        ShippingApi::NotificationType.new(123)
      end.to raise_error(RangeError)
    end
    it 'doesn\'t raise an error when given a proper code' do
      expect do
        ShippingApi::NotificationType.new(rand(0..3))
      end.not_to raise_error
    end
  end
end
