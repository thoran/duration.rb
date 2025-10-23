# duration.rb

## Description

Objects for handling durations of time.

## Installation

Add this line to your application's Gemfile:
```ruby
gem 'duration.rb'
```

And then execute:
```shell
$ bundle
```

Or install it yourself as:
```shell
$ gem install duration.rb
```

## Usage

### Basic Duration Creation
```ruby
# Create durations using convenience methods
1.second   # => #<Seconds: 1>
30.minutes # => #<Minutes: 30>
2.hours    # => #<Hours: 2>
7.days     # => #<Days: 7>
```

### Conversions
```ruby
# Convert to integers
1.second.to_i    # => 1
30.minutes.to_i  # => 30
2.hours.to_i     # => 2
7.days.to_i      # => 7

# Convert to floats
1.second.to_f    # => 1.0
30.minutes.to_f  # => 30.0
2.hours.to_f     # => 2.0
7.days.to_f      # => 7.0

# Convert between units
90.minutes.to_hours             # => <Hours: 1.5>
1.5.hours.to_minutes            # => <Minutes: 90>
1.day.to_seconds                # => <Seconds: 86400>

# Chain conversions
90.minutes.to_hours.to_f        # => 1.5
1.5.hours.to_minutes.to_i       # => 90
1.day.to_seconds.to_i           # => 86400
```

## Contributing

1. Fork it (https://github.com/thoran/duration.rb/fork)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new pull request

## License

MIT
