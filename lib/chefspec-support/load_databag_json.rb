require 'multi_json'
require 'rspec'

module ChefSpecSupport
  class << self
    attr_accessor :data_bag_load_path

    def configure
      yield self if block_given?
    end
  end

  # Parse example data bag item JSON file
  #
  # @param [String] Data Bag Directory
  # @param [String] Data Bag Item
  # @return [Hash] Parsed JSON Data Bag Item
  def load_databag_json(databag, item)
    File.open(File.join(ChefSpecSupport.data_bag_load_path, databag, item), "r") do |f|
      MultiJson.load(f)
    end
  end
end
