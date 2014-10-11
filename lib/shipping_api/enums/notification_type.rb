module ShippingApi
  class NotificationType < BaseEnum
    NAMES = {
      0	=> 'None',
      1	=> 'AutomaticViaEmaie',
      2	=> 'AutomaticViaSme',
      3	=> 'Both'
    }

    def description
      ''
    end
  end
end
