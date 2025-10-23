# Duration/Days.rb
# Duration::Days

require_relative './Common'
require_relative './Hours'
require_relative './Weeks'

module Duration
  class Days
    include Common

    def to_milliseconds
      to_hours.to_milliseconds
    end

    def to_seconds
      to_hours.to_seconds
    end

    def to_minutes
      to_hours.to_minutes
    end

    def to_hours
      Duration::Hours.new(@days * 24)
    end

    def to_days
      self
    end

    def to_weeks
      Duration::Weeks.new(@days/7)
    end

    def to_months
      to_weeks.to_months
    end

    def to_i
      @days.to_i
    end

    def to_f
      @days
    end

    private

    def initialize(days = nil)
      @days = days.to_f
    end
  end
end
