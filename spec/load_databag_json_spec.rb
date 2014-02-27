require 'spec_helper'

class TestClass
  include ChefSpecSupport
end

describe '.load_databag_json' do
  let(:test_class) { TestClass.new }

  it 'it should return a Hash' do
    data_bag = test_class.load_databag_json('test', 'foo.json')
    expect(data_bag).to be_kind_of Hash
  end
end
