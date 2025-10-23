module Duration
  class Week #< Common

    attr_accessor :weeks

    def initialize(weeks = nil)
      @weeks = weeks
    end

    def ago
      Time.now - self.to_time
    end

    def hence
      Time.now + self.to_time
    end

    private

    def days
      Duration::Day.new(7)
    end

    private

    def to_time
      weeks * days
    end

  end
end
