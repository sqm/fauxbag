require 'multi_json'
require 'rspec'

module Fauxbag
  # Parse example data bag item JSON file
  #
  # @param [String] Data Bag Directory
  # @param [String] Data Bag Item
  # @return [Hash] Parsed JSON Data Bag Item
  def load_databag_json(databag, item)
    File.open(File.join(data_bag_load_path, databag, "#{item}.json"), "r") do |f|
      MultiJson.load(f)
    end
  end

  private

  def data_bag_load_path
    File.join(current_example_dir, "data_bags")
  end

  # Returns a string of the full path to the folder where the current spec file is
  # located based on the example metadata for this test.
  #
  # @return [String] Path to the spec file
  def current_example_dir
    File.dirname(File.expand_path(example.metadata[:file_path]))
  end
end
