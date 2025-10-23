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
