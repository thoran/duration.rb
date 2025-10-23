# Duration/Milliseconds.rb
# Duration::Milliseconds

# 20251021
# 0.3.1

require_relative './Common'
require_relative './Seconds'

module Duration
  class Milliseconds
    include Common

    def to_milliseconds
      self
    end

    def to_seconds
      Duration::Seconds.new(@milliseconds/1000)
    end

    def to_minutes
      to_seconds.to_minutes
    end

    def to_hours
      to_seconds.to_hours
    end

    def to_days
      to_seconds.to_days
    end

    def to_weeks
      to_seconds.to_weeks
    end

    def to_months
      to_seconds.to_months
    end

    def to_i
      @milliseconds.to_i
    end

    def to_f
      @milliseconds
    end

    private

    def initialize(milliseconds = nil)
      @milliseconds = milliseconds.to_f
    end
  end
end
