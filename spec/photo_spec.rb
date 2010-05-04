#require File.expand_path(File.dirname(__FILE__)) + '/../app/models/photo.rb'
require 'photo'

shared_examples_for 'common photo specifications' do

# The use of before(:all) and after(:all) is generally discouraged because 
# it introduces dependencies between the Examples. 
  before :all do
  
  end
  
  after :all do
 #   Photo.destroy_all
  end
end

describe Photo do
  it_should_behave_like 'common post specifications'

  it 'must have a title' do
    pending "add some examples to (or delete) #{__FILE__}"
  end
  
  it 'can have an description' do
    pending "add some examples to (or delete) #{__FILE__}"
  end

  context 'Flickr' do
    it 'must be uploaded to an account' do
      pending "add some examples to (or delete) #{__FILE__}"
    end
    
    it 'can be deleted from an account' do
    
    end
  end

  it 'can have all viewed in a thumbnail format' do
    pending "add some examples to (or delete) #{__FILE__}"
  end

  it 'can be clicked to enlarge photo to normal size' do
    pending "add some examples to (or delete) #{__FILE__}"
  end

end
