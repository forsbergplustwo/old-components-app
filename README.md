# ForsbergApp
Short description and motivation.

## Usage
How to use my plugin.

## Installation
Add this line to your application's Gemfile:

```ruby
gem 'forsberg_app'
```

And then execute:
```bash
$ bundle install
```

## Components and styling
To include **components** add this line to the top your application_controller:
```ruby
helper ForsbergApp::Engine.helpers
```

And add these lines to the top your application.scss and application.js files:

```ruby
*= require forsberg_app
//= require unsaved_changes
```

## Referrals api client
To include **referral api client** create an initializer and add the needed config options:

```ruby
config example
```

Then also add the rack-affiliates and httparty gems (included in ForsbergApp gem)
```ruby
gem 'rack-affiliates'
gem 'httparty'
```

And add this to your config/application.rb file
```ruby
config.middleware.use Rack::Affiliates, { :path => '/', :ttl => 60.days }
```

Include in needed controller and call the ReferralModule like this, passing in the request and shop while creating the shop:
```ruby
include ForsbergApp::ReferralModule

ForsbergApp::ReferralModule.check_and_register(@shop, request)
```

## Contributing
Contribution directions go here.

## License
The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
