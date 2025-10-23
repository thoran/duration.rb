# Duration/Numeric.rb
# Duration::Numeric

# 20251021
# 0.3.1

module Duration
  module Numeric
    def milliseconds
      Duration::Milliseconds.new(self)
    end
    alias_method :millisecond, :milliseconds

    def seconds
      Duration::Seconds.new(self)
    end
    alias_method :second, :seconds

    def minutes
      Duration::Minutes.new(self)
    end
    alias_method :minute, :minutes

    def hours
      Duration::Hours.new(self)
    end
    alias_method :hour, :hours

    def days
      Duration::Days.new(self)
    end
    alias_method :day, :days

    def weeks
      Duration::Weeks.new(self)
    end
    alias_method :week, :weeks

    def months
      Duration::Months.new(self)
    end
    alias_method :month, :months
  end
end

Numeric.include(Duration::Numeric)
