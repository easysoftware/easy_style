# EasyStyle

Default RuboCop configuration for Easy.

https://docs.rubocop.org/rubocop/

https://www.easysoftware.com

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'easy_style', group: %i[development]
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install easy_style

## Usage

In your `.rubocop.yml` file:
```yaml
inherit_gem:
  easy_style: default.yml
```

Generate "todo" file is recommended:
```bash
bundle exec rubocop --auto-gen-config --auto-gen-only-exclude --exclude-limit 10000
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/easysoftware/easy_style.


## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
