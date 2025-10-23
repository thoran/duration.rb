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
# Convert between units
90.minutes.to_hours        # => 1.5
1.5.hours.to_minutes       # => 90
1.day.to_seconds           # => 86400
```

## Contributing

1. Fork it (https://github.com/thoran/duration.rb/fork)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new pull request

## License

MIT
