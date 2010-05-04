require 'spec_helper'

#require File.expand_path(File.dirname(__FILE__)) + '/../app/models/post.rb'
# LOOK UP http://fr.ivolo.us/posts/rspec-tutorial-part-3-the-basics 
# FOR TYPE SPEC TESTS
#
# LOOK UP http://fr.ivolo.us/posts/rspec-tutorial-part-4-mocking
# FOR MOCKING

shared_examples_for 'common post specifications' do

# The use of before(:all) and after(:all) is generally discouraged because 
# it introduces dependencies between the Examples. 
  before :all do
    @post = Post.new
  end
  
  after :all do
#    Post.destroy_all
  end
end

describe Post do
  it_should_behave_like 'common post specifications'

  it 'can be created' do
    @post.should be_instance_of(Post)

  end
  
  it 'Can have multiple tags' do
    pending "add some examples to (or delete) #{__FILE__}"
  end
  
  it 'has all posts indexed' do
    pending "add some examples to (or delete) #{__FILE__}"
  end
  
  it 'can be viewed individually' do
    pending "add some examples to (or delete) #{__FILE__}"
  end
  
  it 'can be edited' do
    pending "add some examples to (or delete) #{__FILE__}"
  end
  
  it 'can be saved' do
    pending "add some examples to (or delete) #{__FILE__}"
  end
  
  it 'can deleted' do
    pending "add some examples to (or delete) #{__FILE__}"
  end

module PostSpecHelper
  def valid_post_attributes
    { :title => 'This is a Post Title',
      :body => 'joebloggs' }
  end
end

  context 'validation' do
    include PostSpecHelper

    it 'should be invalid without a title' do
      @post.title = ''
      @post.attributes = valid_post_attributes.except(:title)
      @post.should_not be_valid
      @post.errors[:title].should include("Title is required!")
      @post.title = 'abcdefg'
      @post.should be_valid
    end
  
    it 'should be invalid without a body' do
      @post.body = ''
      @post.attributes = valid_post_attributes.except(:body)
      @post.should_not be_valid
      @post.errors[:body].should include("Body is required!")
      @post.should_not be_valid
      @post.body = 'Body Text'
      @post.should be_valid
    end
    
    it 'should be valid' do
    #  @post.should be_valid
    end
  
  end

end



