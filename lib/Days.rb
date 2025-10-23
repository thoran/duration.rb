# Days.rb
# Days

# 20130714
# 0.0.0

class Days

  def initialize(n = nil)
    @n = n
  end

  def to_seconds
    @n * 60 * 60 * 24
  end

  def to_minutes
    @n * 60 * 24
  end

  def to_hours
    @n * 24
  end

  def to_days
    @n
  end
  alias_method :to_i, :to_days

  def to_weeks
    @n * 7
  end

  def to_minutes_and_seconds
    to_minutes.divmod(60)
  end

  def to_hours_and_minutes
    to_hours.divmod(60)
  end

  def to_days_and_minutes
    [@n, 0]
  end

  def to_i
    @n
  end

end
