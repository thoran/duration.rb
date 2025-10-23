# 20240521, 22, 23, 24

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

  def +(arg)
    if arg.class.is_one_of?(*period_classes)
      Days.new(@n + arg.to_days.to_i)
    else
      Days.new(@n + arg)
    end
  end

  def -(arg)
    if arg.class.is_one_of?(*period_classes)
      Days.new(@n - arg.to_days.to_i)
    else
      Days.new(@n - arg)
    end
  end
end
