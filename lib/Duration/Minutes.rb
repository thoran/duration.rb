# Duration/Minutes.rb
# Duration::Minutes

# 20251021
# 0.3.1

require_relative './Common'
require_relative './Seconds'
require_relative './Hours'

module Duration
  class Minutes
    include Common

    def to_milliseconds
      to_seconds.to_milliseconds
    end

    def to_seconds
      Duration::Seconds.new(@minutes * 60)
    end

    def to_minutes
      self
    end

    def to_hours
      Duration::Hours.new(@minutes/60)
    end

    def to_days
      to_hours.to_days
    end

    def to_weeks
      to_hours.to_weeks
    end

    def to_months
      to_hours.to_months
    end

    def to_i
      @minutes.to_i
    end

    def to_f
      @minutes
    end

    private

    def initialize(minutes = nil)
      @minutes = minutes.to_f
    end
  end
end
