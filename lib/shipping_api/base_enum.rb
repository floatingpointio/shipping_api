module ShippingAPI
  class BaseEnum
    def initialize(code)
      @code = code
      fail RangeError, 'unknown code'\
        unless self.class::NAMES.keys.include? @code
    end

    def name
      self.class::NAMES[@code]
    end

    def description
      self.class::DESCRIPTIONS[@code]
    end
  end
end
