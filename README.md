# ChefSpecSupport

Adds support methods to use with [ChefSpec](http://code.sethvargo.com/chefspec/)

## Installation

Add this line to your application's Gemfile:

    gem 'chefspec-support'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install chefspec-support

## Usage

Configure the path to your data_bag directory:

```ruby
# your_cookbook/spec/spec_helper.rb

ChefSpecSupport.configure do |config|
  config.data_bag_load_path = File.expand_path("/path/to/data_bags", __FILE__)
end

```

## Contributing

1. Fork it ( http://github.com/<my-github-username>/chefspec-support/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
