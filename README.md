# ForsbergApp
WORK IN PROGRESS, and very specific to my needs. A collection of bootstrap styled polaris components for Ruby on Rails 4.2

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

## Bootstrap and polaris components and styling
To include **components** add this line to the top your application_controller:
```ruby
helper ForsbergApp::Engine.helpers
```

And add these lines to the top your application.scss and application.js files:

```ruby
*= require forsberg_app
//= require unsaved_changes
```

## Contributing
Contribution directions go here.

## License
The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
