# Duration.rb
# Duration

# 20130609
# 0.0.0

# Todo:
# 1. Implement using refinements.

# 53.weeks.ago
# 53.weeks.hence

# 2.days => instance of Duration (period of time)
# 2.days.ago => point in time, which can be converted to a date, etc.

class Integer

  def months
    Duration::Month.new(self)
  end
  alias_method :month, :months

  def weeks
    Duration::Week.new(self)
  end
  alias_method :week, :weeks

  def days
    Duration::Day.new(self)
  end
  alias_method :day, :days

  def hours
    Duration::Hour.new(self)
  end
  alias_method :hour, :hours

  def minutes
    Duration::Minute.new(self)
  end
  alias_method :minute, :minutes

  def seconds
    Duration::Second.new(self)
  end
  alias_method :second, :seconds

end

module Duration

  class Common

    def ago
      Time.now - self.to_time
    end

    def hence
      Time.now + self.to_time
    end

  end

  class Month

    attr_accessor :months

    def initialize(months = nil)
      @months = months
    end

    def to_time
      months * days
    end

    def days
      Duration::Day.new(30) # This is sort of a placeholder...
    end

    # These methods will have to be custom
    def ago

    end

    def hence

    end

  end

  class Week #< Common

    attr_accessor :weeks

    def initialize(weeks = nil)
      @weeks = weeks
    end

    def ago
      Time.now - self.to_time
    end

    def hence
      Time.now + self.to_time
    end

    private

    def days
      Duration::Day.new(7)
    end

    private

    def to_time
      weeks * days
    end

  end

  class Day

    attr_accessor :days

    def initialize(days = nil)
      @days = days
    end

    def ago
      Time.now - self.to_time
    end

    def hence
      Time.now + self.to_time
    end

    private

    def to_time
      days * hours
    end

    def hours
      Duration::Hour.new(24)
    end

  end

  class Hour

    attr_accessor :hours

    def initialize(hours = nil)
      @hours = hours
    end

    def to_time
      hours * minutes
    end

    def minutes
      Duration::Minutes.new(60)
    end

  end

  class Minute

    attr_accessor :minutes

    def initialize(minutes = nil)
      @minutes = minutes
    end

    def to_time
      minutes * seconds
    end

    def seconds
      Duration::Second.new(60)
    end

  end

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

  class Milliseconds

    attr_accessor :milliseconds

    def initialize(milliseconds = nil)

    end

    def to_time
      1000
    end

  end

end
