# 20240521, 22, 23, 24

class Object
  def period_classes
    [Seconds, Minutes, Hours, Days, Weeks]
  end
end

class Seconds
  def initialize(n = nil)
    @n = n.to_i
  end

  def to_i
    @n
  end

  def to_seconds
    self
  end

  def to_minutes
    Minutes.new(@n.to_f/60)
  end

  def to_hours
    Hours.new(@n.to_f/60/60)
  end

  def to_days
    Days.new(@n.to_f/24/60/60)
  end

  def to_weeks
    Weeks.new(@n.to_f/7/24/60/60)
  end

  def to_minutes_and_seconds
    numeric_result = self.to_i.divmod(60)
    [Minutes.new(numeric_result.first), Seconds.new(numeric_result.last)]
  end

  def to_hours_and_minutes
    numeric_result = self.to_i.divmod(60)
    [Hours.new(numeric_result.first), Minutes.new(numeric_result.last)]
  end

  def to_days_and_hours
    numeric_result = self.to_i.divmod(60)
    [Hours.new(numeric_result.first), Minutes.new(numeric_result.last)]
  end

  def to_weeks_and_days
    numeric_result = self.to_i.divmod(60)
    [Hours.new(numeric_result.first), Minutes.new(numeric_result.last)]
  end
end

class Minutes
  def initialize(n = nil)
    @n = n.to_i
  end

  def to_i
    @n
  end

  def to_seconds
    Seconds.new(@n * 60)
  end

  def to_minutes
    self
  end

  def to_hours
    Hours.new(@n.to_f/60)
  end

  def to_days
    Days.new(@n.to_f/24/60)
  end

  def to_weeks
    Weeks.new(@n.to_f/7/24/60)
  end

  def to_minutes_and_seconds
    [self, Seconds.new(0)]
  end

  def to_hours_and_minutes
    numeric_result = self.to_i.divmod(60)
    [Hours.new(numeric_result.first), Minutes.new(numeric_result.last)]
  end

  def to_days_and_hours
    numeric_result = self.to_i.divmod(60)
    [Hours.new(numeric_result.first), Minutes.new(numeric_result.last)]
  end

  def to_weeks_and_days
    numeric_result = self.to_i.divmod(60)
    [Hours.new(numeric_result.first), Minutes.new(numeric_result.last)]
  end
end

class Hours
  def initialize(n = nil)
    @n = n.to_i
  end

  def to_i
    @n
  end

  def to_seconds
    Seconds.new(@n * 60 * 60)
  end

  def to_minutes
    Minutes.new(@n * 60)
  end

  def to_hours
    self
  end

  def to_days
    Days.new(@n.to_f/24)
  end

  def to_weeks
    Weeks.new(@n.to_f/7/24)
  end

  def to_minutes_and_seconds
    [Minutes.new(to_minutes.to_i), Seconds.new(0)]
  end

  def to_hours_and_minutes
    [self, Minutes.new(0)]
  end

  def to_days_and_hours
    numeric_result = self.to_i.divmod(24)
    [Days.new(numeric_result.first), Hours.new(numeric_result.last)]
  end

  def to_weeks_and_days
    numeric_result = to_days.to_i.divmod(7)
    [Weeks.new(numeric_result.first), Days.new(numeric_result.last)]
  end
end

class Days
  def initialize(n = nil)
    @n = n.to_i
  end

  def to_i
    @n
  end

  def to_seconds
    Seconds.new(@n * 24 * 60 * 60)
  end

  def to_minutes
    Minutes.new(@n * 24 * 60)
  end

  def to_hours
    Hours.new(@n * 24)
  end

  def to_days
    self
  end

  def to_weeks
    Weeks.new(@n.to_f/7)
  end

  def to_minutes_and_seconds
    [Minutes.new(to_minutes.to_i), Seconds.new(0)]
  end

  def to_hours_and_minutes
    [Hours.new(to_hours.to_i), Minutes.new(0)]
  end

  def to_days_and_hours
    [self, Hours.new(0)]
  end

  def to_weeks_and_days
    numeric_result = self.to_i.divmod(7)
    [Weeks.new(numeric_result.first), Days.new(numeric_result.last)]
  end
end

class Weeks
  def initialize(n = nil)
    @n = n.to_i
  end

  def to_i
    @n
  end

  def to_seconds
    Seconds.new(@n * 7 * 24 * 60 * 60)
  end

  def to_minutes
    Minutes.new(@n * 7 * 24 * 60)
  end

  def to_hours
    Hours.new(@n * 7 * 24)
  end

  def to_days
    Days.new(@n * 7)
  end

  def to_weeks
    self
  end

  def to_minutes_and_seconds
    numeric_result = to_minutes.to_i.divmod(60)
    [Minutes.new(numeric_result.first), Seconds.new(numeric_result.last)]
  end

  def to_hours_and_minutes
    numeric_result = to_hours.to_i.divmod(60)
    [Hours.new(numeric_result.first), Minutes.new(numeric_result.last)]
  end

  def to_days_and_hours
    numeric_result = to_days.to_i.divmod(24)
    [Days.new(numeric_result.first), Hours.new(numeric_result.last)]
  end

  def to_weeks_and_days
    [self, Days.new(0)]
  end
end

class Numeric
  def seconds
    ::Seconds.new(self)
  end
  alias_method :second, :seconds

  def minutes
    ::Minutes.new(self)
  end
  alias_method :minute, :minutes

  def hours
    ::Hours.new(self)
  end
  alias_method :hour, :hours

  def days
    ::Days.new(self)
  end
  alias_method :day, :days

  def weeks
    ::Weeks.new(self)
  end
  alias_method :week, :weeks
end

def main
  p 1.second
  p 2.seconds
  p 2.seconds.to_i
  p 61.seconds

  p 1.minute
  p 2.minutes
  p 2.minutes.to_i

  p 1.hour
  p 2.hours
  p 2.hours.to_i

  p 1.day
  p 2.days
  p 2.days.to_i

  p 1.week
  p 2.weeks
  p 2.weeks.to_i

  p 1.minute.to_seconds

  p 1.hour.to_seconds
  p 1.hour.to_minutes

  p 1.day.to_seconds
  p 1.day.to_minutes
  p 1.day.to_hours

  p 1.week.to_seconds
  p 1.week.to_minutes
  p 1.week.to_hours
  p 1.week.to_days

  p 1.second.to_seconds
  p 1.second.to_minutes
  p 1.second.to_hours
  p 1.second.to_days
  p 1.second.to_weeks

  p 1.minute.to_minutes
  p 1.minute.to_hours
  p 1.minute.to_days
  p 1.minute.to_weeks

  p 1.hour.to_hours
  p 1.hour.to_days
  p 1.hour.to_weeks

  p 1.day.to_days
  p 1.day.to_weeks

  p 1.day.to_weeks

  p 61.seconds.to_minutes_and_seconds

  p 61.minutes.to_minutes_and_seconds
  p 61.minutes.to_hours_and_minutes

  p 25.hours.to_hours_and_minutes
  p 25.hours.to_days_and_hours
  p 1000.hours.to_weeks_and_days

  p 8.days.to_minutes_and_seconds
  p 8.days.to_hours_and_minutes
  p 8.days.to_days_and_hours
  p 8.days.to_weeks_and_days
end

main
