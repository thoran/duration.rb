class Minutes

  def initialize(n = nil)
    @n = n.to_i
  end

  def to_seconds
    @n * 60
  end

  def to_minutes
    @n
  end
  alias_method :to_i, :to_minutes

  def to_hours
    @n.to_f/60
  end

  def to_days
    @n.to_f/60/24
  end

  def to_minutes_and_seconds
    [@n, 0]
  end

  def to_hours_and_minutes
    @n.divmod(60)
  end

end
