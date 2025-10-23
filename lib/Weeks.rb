# 20240521, 22, 23, 24

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

  def +(arg)
    if arg.class.is_one_of?(*period_classes)
      Weeks.new(@n + arg.to_weeks.to_i)
    else
      Weeks.new(@n + arg)
    end
  end

  def -(arg)
    if arg.class.is_one_of?(*period_classes)
      Weeks.new(@n - arg.to_weeks.to_i)
    else
      Weeks.new(@n - arg)
    end
  end
end
