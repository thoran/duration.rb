# Duration/Seconds.rb
# Duration::Seconds

# 20251021
# 0.3.0

require_relative './Common'
require_relative './Milliseconds'
require_relative './Minutes'

module Duration
  class Seconds
    include Common

    def to_milliseconds
      Duration::Milliseconds.new(@seconds * 1000)
    end

    def to_seconds
      self
    end

    def to_minutes
      Duration::Minutes.new(@seconds/60)
    end

    def to_hours
      to_minutes.to_hours
    end

    def to_days
      to_minutes.to_days
    end

    def to_weeks
      to_minutes.to_weeks
    end

    def to_months
      to_minutes.to_months
    end

    def to_i
      @seconds.to_i
    end

    def to_f
      @seconds
    end

    private

    def initialize(seconds = nil)
      @seconds = seconds.to_f
    end
  end
end
