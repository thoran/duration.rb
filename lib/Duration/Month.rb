module Duration
  class Month

    attr_accessor :months

    def initialize(months = nil)
      @months = months
    end

    def to_time
      months * days
    end

    def days
      Duration::Day.new(30) # This is sort of a placeholder...
    end

    # These methods will have to be custom
    def ago

    end

    def hence

    end

  end
end
