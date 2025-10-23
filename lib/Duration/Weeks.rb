# Duration/Weeks.rb
# Duration::Weeks

# 20251021
# 0.3.1

require_relative './Common'
require_relative './Days'
require_relative './Months'

module Duration
  class Weeks
    include Common

    def to_milliseconds
      to_days.to_milliseconds
    end

    def to_seconds
      to_days.to_seconds
    end

    def to_minutes
      to_days.to_minutes
    end

    def to_hours
      to_days.to_hours
    end

    def to_days
      Duration::Days.new(@weeks * 7)
    end

    def to_weeks
      self
    end

    def to_months
      Duration::Months.new(@weeks / 52 * 12)
    end

    def to_i
      @weeks.to_i
    end

    def to_f
      @weeks
    end

    private

    def initialize(weeks = nil)
      @weeks = weeks.to_f
    end
  end
end
