# Duration/Hours.rb
# Duration::Hours

require_relative './Common'
require_relative './Minutes'
require_relative './Days'

module Duration
  class Hours
    include Common

    def to_milliseconds
      to_minutes.to_milliseconds
    end

    def to_seconds
      to_minutes.to_seconds
    end

    def to_minutes
      Duration::Minutes.new(@hours * 60)
    end

    def to_hours
      self
    end

    def to_days
      Duration::Days.new(@hours/24)
    end

    def to_weeks
      to_days.to_weeks
    end

    def to_months
      to_days.to_months
    end

    def to_i
      @hours.to_i
    end

    def to_f
      @hours
    end

    private

    def initialize(hours = nil)
      @hours = hours.to_f
    end
  end
end
