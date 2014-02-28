# ChefSpecSupport

Adds `load_databag_json` support method to use with [ChefSpec](http://code.sethvargo.com/chefspec/)

## Installation and Configuration

Add this line to your Gemfile:
```ruby
  gem 'chefspec-support'
```

And then execute:
```bash
  $ bundle
```

Include `chefspec-support` in your `spec_helper.rb` file.
```ruby
# mycookbook/spec/spec_helper.rb
require 'chefspec-support'
```

## Usage

The expected location for data bag items is a `data_bags` folder in the `spec` directory: 

`spec/data_bags/data_bag_name/data_bag_item.json`

Using the `load_databag_item` method requires the arguments of the `data_bag_name` folder and the `data_bag_item` without the `.json`:

`load_databag_json(data_bag_name, data_bag_item)`

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
  let(:chef_run) { ChefSpec::Runner.new.converge(described_recipe) }

  # use fixture data bag
  let(:users_hansolo_databag_item) { load_databag_json('users', 'hansolo')  } 

  before do
    stub_data_bag_item('users', 'hansolo').and_return(users_hansolo_databag_item)
  end
end
```

## Contributing

1. Fork it ( http://github.com/sqm/chefspec-support/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
