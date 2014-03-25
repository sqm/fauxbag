require 'spec_helper'

describe '.load_databag_json' do
  it 'should return a Hash' do
    data_bag = load_databag_json('test', 'foo')
    expect(data_bag).to be_a Hash
  end
end

describe '.load_chefzero_databag' do
  let(:all_databags_hash) {
    {
      "bar" => {"username"=>"bar"},
      "foo" => {"username"=>"foobar"}
    }
  }

  it 'returns a Hash' do
    data_bag = load_chefzero_databag('test')
    expect(data_bag).to be_a Hash
  end

  it 'returns a hash containing all data bag items' do
    data_bag_hash = load_chefzero_databag('test')
    expect(data_bag_hash).to eq all_databags_hash
  end
end
