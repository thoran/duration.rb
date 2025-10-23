# Object/duration_classes.rb
# Object#duration_classes

require 'Duration'

class Object

  def duration_classes
    [Seconds, Minutes, Hours, Days]
  end

end
