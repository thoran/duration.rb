# Duration/Common.rb
# Duration::Common

# 20130609 (20251023)
# 0.0.1

module Duration
  class Common

    def ago
      Time.now - self.to_time
    end

    def hence
      Time.now + self.to_time
    end

  end
end
