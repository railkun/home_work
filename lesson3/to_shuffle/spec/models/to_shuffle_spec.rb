require 'spec_helper'

describe 'to_shuffle' do
  it 'test method for nil' do
    a = 'bla bla'.to_shuffle { 'test test' }
    expect(a).not_to be_nil
  end

  it 'test method for length' do
    a = 'bla bla'.to_shuffle { 'test test' }
    expect(a.length).not_to be_nil
  end
end
