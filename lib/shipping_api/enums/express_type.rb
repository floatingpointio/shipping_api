module ShippingAPI
  class ExpressType < BaseEnum
    NAMES = {
      21 => 'T1030',
      22 => 'T0830',
      100	=> 'EoBD'
    }
    DESCRIPTIONS = {
      21 => 'Delivery until 10:30',
      22 => 'Delivery until 08:30',
      100	=> 'Delivery until the end of business day'
    }
  end
end
