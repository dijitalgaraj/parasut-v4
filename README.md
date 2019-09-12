# parasut-v4

Parasut API V4 integration.
You can sign up for an parasut account at https://www.parasut.com/

## Dependencies

- her
- kaminari 0.17.0

## Requirements

* Ruby 2.0.0 or newer

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'parasut-v4'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install parasut

## Usage

Create an initializer for Parasut options.
```
  require 'parasut'

  # config/initializers/parasut.rb
  Parasut.options do |option|
    option.api_base_url="http://url" # this is optional, default is "https://api.parasut.com/"
    option.client_id = 'client_id'
    option.client_secret = 'client_secret'
    option.username = 'username'
    option.password = 'password'
    option.company_id = 'company_id'
  end
```

Afterwards you can call a model:

    account = Parasut::Account.find(1)
    puts account.inspect

    contacts = Parasut::Contact.all
    puts contacts.inspect

    account.destroy


## ENVs

- PARASUT_API_BASE_URL
- PARASUT_CLIENT_ID
- PARASUT_CLIENT_SECRET
- PARASUT_USERNAME
- PARASUT_PASSWORD
- PARASUT_COMPANY_ID

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).


## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/dijitalgaraj/parasut-v4. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## Contributors

This gem uses @ahtung 's Parasut API v1 gem as its base. (https://github.com/ahtung/parasut)
API Version 4 compability implemented by @dijitalgaraj


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
