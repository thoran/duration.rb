class Numeric

  def seconds
    Seconds.new(self)
  end
  alias_method :second, :seconds

  def minutes
    Minutes.new(self)
  end
  alias_method :minute, :minutes

  def hours
    Hours.new(self)
  end
  alias_method :hour, :hours

  def days
    Days.new(self)
  end
  alias_method :day, :days

  def weeks
    Weeks.new(self)
  end
  alias_method :week, :weeks

end
