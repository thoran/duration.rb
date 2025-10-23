# 20240521, 22, 23, 24

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

  def +(arg)
    if arg.class.is_one_of?(*period_classes)
      Minutes.new(@n + arg.to_minutes.to_i)
    else
      Minutes.new(@n + arg)
    end
  end

  def -(arg)
    if arg.class.is_one_of?(*period_classes)
      Minutes.new(@n - arg.to_minutes.to_i)
    else
      Minutes.new(@n - arg)
    end
  end
end
