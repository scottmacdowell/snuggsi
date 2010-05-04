# require 'spec_helper'
#require File.expand_path(File.dirname(__FILE__)) + '/../app/models/account.rb'
#require File.expand_path(File.dirname(__FILE__)) + '/../app/models/snuggsi.rb'
require 'account'
require 'snuggsi'

shared_examples_for 'common snuggsi specifications' do

# The use of before(:all) and after(:all) is generally discouraged because 
# it introduces dependencies between the Examples. 
  before do
    @snuggsi = Snuggsi.new
    
    @valid_attributes = {
      :name => "Order Name",
      :customer => "Snuggs",
      :body => "Please make sure my order is German 101"
    }
  end

after do; end 
end

describe Snuggsi do
  it_should_behave_like 'common snuggsi specifications'
#  pending "add some examples to (or delete) #{__FILE__}"
  
  it 'should have one account' do
    @snuggsi.account.should_not be_nil
  end
end

describe Account do
  context 'User is logged in' do
  
  end
  
  context 'User is not logged in' do
  
  end
end

describe 'Post' do
end

describe 'Page' do
end

describe 'Project' do
end

describe 'Lesson' do
end
