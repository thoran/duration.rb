module Duration
  class Day

    attr_accessor :days

    def initialize(days = nil)
      @days = days
    end

    def ago
      Time.now - self.to_time
    end

    def hence
      Time.now + self.to_time
    end

    private

    def to_time
      days * hours
    end

    def hours
      Duration::Hour.new(24)
    end

  end
end
