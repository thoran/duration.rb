# Duration/Months.rb
# Duration::Months

# 20251021
# 0.3.1

require_relative './Common'
require_relative './Weeks'

module Duration
  class Months
    include Common

    def to_milliseconds
      to_weeks.to_milliseconds
    end

    def to_seconds
      to_weeks.to_seconds
    end

    def to_minutes
      to_weeks.to_minutes
    end

    def to_hours
      to_weeks.to_hours
    end

    def to_days
      to_weeks.to_days
    end

    def to_weeks
      Duration::Weeks.new(@months / 12 * 52)
    end

    def to_months
      self
    end

    def to_i
      @months.to_i
    end

    def to_f
      @months
    end

    private

    def initialize(months = nil)
      @months = months.to_f
    end
  end
end
