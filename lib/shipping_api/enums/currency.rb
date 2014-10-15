module ShippingAPI
  class Currency < BaseEnum
    NAMES = {
      0	=> 'National',
      1	=> 'Euro'
    }
    def description
      ''
    end
  end
end
