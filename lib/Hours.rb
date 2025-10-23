# Hours.rb
# Hours

# 20130714
# 0.0.0

class Hours

  def initialize(n = nil)
    @n = n.to_i
  end

  def to_seconds
    @n * 60 * 60
  end

  def to_minutes
    @n * 60
  end

  def to_hours
    @n
  end
  alias_method :to_i, :to_hours

  def to_days
    @n.to_f/24
  end

  def to_minutes_and_seconds
    to_minutes.divmod(60)
  end

  def to_hours_and_minutes
    [@n, 0]
  end

  def to_days_and_hours
    to_days.divmod(24)
  end

  def to_i
    @n
  end

end
