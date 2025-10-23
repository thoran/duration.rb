# Seconds.rb
# Seconds

# 20130714
# 0.0.0

class Seconds

  def initialize(n = nil)
    @n = n.to_i
  end

  def to_seconds
    @n
  end
  alias_method :to_i, :to_seconds

  def to_minutes
    @n.to_f/60
  end

  def to_hours
    @n.to_f/60/60
  end

  def to_days
    @n.to_f/60/60/24
  end

  def to_minutes_and_seconds
    @n.divmod(60)
  end

  def to_hours_and_minutes
    minutes, seconds = @n.divmod(60)
    hours, minutes = minutes.divmod(60)
    minutes = (((minutes * 60) + seconds)/60.to_f).round
    [hours, minutes]
  end

  def to_hours_minutes_and_seconds
    minutes, seconds = @n.divmod(60)
    hours, minutes = minutes.divmod(60)
    [hours, minutes, seconds]
  end

  def to_i
    @n
  end

end
