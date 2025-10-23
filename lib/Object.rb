# 20240521, 22, 23, 24

class Object
  def period_classes
    [Seconds, Minutes, Hours, Days, Weeks]
  end

  def is_one_of?(*klasses)
    klasses.flatten.include?(self)
  end
end
