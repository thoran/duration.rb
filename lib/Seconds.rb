# 20240521, 22, 23, 24

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

  def +(arg)
    if arg.class.is_one_of?(*period_classes)
      Seconds.new(@n + arg.to_seconds.to_i)
    else
      Seconds.new(@n + arg)
    end
  end

  def -(arg)
    if arg.class.is_one_of?(*period_classes)
      Seconds.new(@n - arg.to_seconds.to_i)
    else
      Seconds.new(@n - arg)
    end
  end
end
