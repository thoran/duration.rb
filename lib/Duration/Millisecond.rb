module Duration
  class Millisecond

    attr_accessor :milliseconds

    def initialize(milliseconds = nil)

    end

    def to_time
      1000
    end

  end
end
