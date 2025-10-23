module Duration
  class Minute

    attr_accessor :minutes

    def initialize(minutes = nil)
      @minutes = minutes
    end

    def to_time
      minutes * seconds
    end

    def seconds
      Duration::Second.new(60)
    end

  end
end
