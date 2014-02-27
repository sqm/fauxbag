require 'chefspec-support'

ChefSpecSupport.configure do |config|
  config.data_bag_load_path = File.expand_path("../fixtures/data_bags", __FILE__)
end

RSpec.configure do |config|
  config.treat_symbols_as_metadata_keys_with_true_values = true
  config.run_all_when_everything_filtered = true
  config.filter_run :focus
  config.order = 'random'
end
