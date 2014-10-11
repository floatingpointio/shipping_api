module ShippingApi
  class BillingUnit < BaseEnum
    NAMES = {
      12	=> 'LETT',
      13	=> 'SBX',
      14	=> 'MBX',
      15	=> 'LBX',
      16	=> 'XLBX'
    }
    DESCRIPTIONS = {
      12	=> 'Letter',
      13	=> 'Small box',
      14	=> 'Medium box',
      15	=> 'Large box',
      16	=> 'Extra large box'
    }
  end
end
