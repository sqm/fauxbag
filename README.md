# Fauxbag

Adds `load_databag_json` support method to use with Data Bags and [ChefSpec](http://code.sethvargo.com/chefspec/)

## Installation and Configuration

Add this line to your Gemfile:
```ruby
  gem 'fauxbag'
```

And then execute:
```bash
  $ bundle
```

Include `fauxbag` in your `spec_helper.rb` file.
```ruby
# mycookbook/spec/spec_helper.rb
require 'fauxbag'
```

## Usage

The expected location for data bag items is a `data_bags` folder in the `spec` directory: 

`spec/data_bags/data_bag_name/data_bag_item.json`

### Methods

##### load_databag_item

The `load_databag_item` method requires the arguments of the `data_bag_name` folder and the `data_bag_item` without the `.json`:

`load_databag_json(data_bag_name, data_bag_item)`

##### load_chefzero_databag

The `load_chefzero_databag` method requires the data bag group (such as users) and returns all items as a single hash to be used with Chef-Zero: 

`load_chefzero_databag(data_bag_name)`

## Example

The expected layout of your cookbook and data bag fixtures:
```bash
mycookbook
.
├── README.md
├── attributes
├── metadata.rb
├── recipes
│   └── default.rb
└── spec
    ├── data_bags
    │   └── users
    │       └── hansolo.json
    └── default_spec.rb
```

Using the data_bag fixtures:
```ruby
# mycookbook/spec/default_spec.rb
require 'spec_helper'

describe 'mycookbook::default' do
  it "installs something for all users" do
    # Loads JSON from mycookbook/spec/data_bags/users/hansolo.json
    fauxbag = load_databag_json('users', 'hansolo')
    stub_data_bag_item('users', 'hansolo').and_return(fauxbag)

    # ... rest of the spec test with expectation
  end
end
```

## Contributing

1. Fork it ( http://github.com/sqm/fauxbag/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
