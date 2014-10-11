module ShippingApi
  class ShipmentStatus < ComplexType
    NAMES = {
      1	=> 'Pending',
      2	=> 'Successful',
      3	=> 'Failed',
      4	=> 'DataDefined',
      5	=> 'Canceled',
      6	=> 'AwaitingPickup',
      7	=> 'PickupInitiated',
      8	=> 'PartiallyPrinted',
      11 => 'PickupInitiatedWhilePending'
    }

    def description
      ''
    end
  end
end
