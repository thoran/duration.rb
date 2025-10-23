module Duration
  class Hour

    attr_accessor :hours

    def initialize(hours = nil)
      @hours = hours
    end

    def to_time
      hours * minutes
    end

    def minutes
      Duration::Minutes.new(60)
    end

  end
end
