require 'spec_helper'
require 'page'
#require File.expand_path(File.dirname(__FILE__)) + '/../app/models/photo.rb'

shared_examples_for 'common page specifications' do

# The use of before(:all) and after(:all) is generally discouraged because 
# it introduces dependencies between the Examples. 
  before :all do
  
  end
  
  after :all do
 #   Page.destroy_all
  end
end

describe Page do
  it_should_behave_like 'common page specifications'

#  it "should create a new instance given valid attributes" do
#    Page.create!(@valid_attributes)
#  end
end
