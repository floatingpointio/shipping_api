require 'shipping_api'

describe ShippingApi::Client do

  describe 'initialization' do
    it 'checks provided arguments by using a struct' do
      expect do
        c = ShippingApi::Client.new(is: 'this', nonsense: 'yes')
      end.to raise_error(ArgumentError)
    end
  end
  
  describe "#config" do
    it 'provides access to config' do
      c = ShippingApi::Client.new(api_key: '238h4regnudfjls')
      expect(c.config).to be_a ShippingApi::Client::Configuration
    end

    it 'prevents changing config once client has been inited' do
      c = ShippingApi::Client.new(api_key: 'something')
      expect do
        c.config.api_key = 'else'
      end.to raise_error(NoMethodError)
    end
  end
end
