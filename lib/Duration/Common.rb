# Duration/Common.rb
# Duration::Common

# 20251021
# 0.3.0

module Duration
  module Common
    def ago
      Time.now - self.to_seconds.to_f
    end

    def hence
      Time.now + self.to_seconds.to_f
    end
  end
end
