require 'spec_helper'

describe '.load_databag_json' do
  it 'should return a Hash' do
    data_bag = load_databag_json('test', 'foo')
    expect(data_bag).to be_a Hash
  end
end
