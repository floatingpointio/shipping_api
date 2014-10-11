module ShippingApi
  class Currency < ComplexType
    NAMES = {
      0	=> 'National',
      1	=> 'Euro'
    }
    def description
      ''
    end
  end
end
