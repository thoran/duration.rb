module Duration
  class Second

    attr_accessor :seconds

    def initialize(seconds = nil)

    end

    def to_time
      1 #?
    end

    def milliseconds
      Duration::Milliseconds.new(1000)
    end

  end
end
