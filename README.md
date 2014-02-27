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

This needs updated to document automatic path convention.

They should be put in a folder called `data_bags` that is in the same folder as the spec test.

So if we are testing the file `spec/some_recipe_spec.rb`, then it will look in `spec/data_bags/data_bag_name/data_bag_item.json`.

When you call `load_databag_json`, you leave off `.json` on the item.

## Contributing

1. Fork it ( http://github.com/<my-github-username>/chefspec-support/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
