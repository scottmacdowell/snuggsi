require 'spec_helper'

#require File.expand_path(File.dirname(__FILE__)) + '/../app/models/post.rb'
# LOOK UP http://fr.ivolo.us/posts/rspec-tutorial-part-3-the-basics 
# FOR TYPE SPEC TESTS
#
# LOOK UP http://fr.ivolo.us/posts/rspec-tutorial-part-4-mocking
# FOR MOCKING
#
# LOOK UP http://fr.ivolo.us/posts/rspec-tutorial-part-5-advanced-testing-tips
# For test refactoring

module Snuggsi

  share_examples_for 'common post specifications' do #, :shared => true do

    before do; end
  
    before :all do
     @post = mock(Post) 
     @post=mock('Post').as_null_object
     @post.should_receive(:speak).with('I am a post')
     @post.when_receiving(:post_info).with(4).return(5)
     @post = mock_model(Post, :title => 'comment title')
    Post.should_receive(:new).with({:title => 'comment title', :body => 'comment body'}).and_return(@post)
    
  #    @post.stub!(:title)
  #    @post.stub!(author)
  #    @post.stub!(:body)
  #     @post.stub!(:attributes).and_return(PostSpecHelper.valid_post_attributes)
  #@post.stub!(:snuggs).and_return('SHAZZAAM!')
    end
  
    after :all do; end
  
    after do
  #    @post.destroy
    end
  end
  
  describe Post, :behaviour_type => :model do
    it_should_behave_like 'common post specifications'
  
    it 'has all posts indexed' do
      # pending "add some examples to (or delete) #{__FILE__}"
    end
    
    it 'can be viewed individually' do
      # pending "add some examples to (or delete) #{__FILE__}"
    end
    
    it 'can be edited' do
      # pending "add some examples to (or delete) #{__FILE__}"
    end
    
    it 'can be created' do
      @post.should be_instance_of(Post)
    end
  
    it 'can be saved' do
      # pending "add some examples to (or delete) #{__FILE__}"
  # lambda { @post.tags.create(...) }.should change(Post, :count).by(1)
    end
    
    it 'can deleted' do
      # pending "add some examples to (or delete) #{__FILE__}"
  # lamda{ Post.find(0) }.should raise_error(ActiveRecord::RecordNotFound)
    end
  
    it 'Can have multiple tags' do
      # pending "add some examples to (or delete) #{__FILE__}"
    end
    
  module PostSpecHelper
    def valid_post_attributes
      { :title  => 'This is a Post Title',
        :author => 'Snuggs',
        :body   => 'The quick brown fox jumped over the lazy dog.' }
    end
  end
  
    context 'validation' do
      include PostSpecHelper
  
      it 'should be invalid without a title' do
        @post.should respond_to(:title)
        @post.attributes = valid_post_attributes.except(:title)
        @post.should_not be_valid
        @post.errors[:title].should include("Title is required!")
      end
  
      it 'should be valid with a title' do
        lambda { @post.title = 'Post title' }.should change(@post, :title).from(nil).to('Post title')
  #      @post.should be_valid
      end
  
      it 'should be invalid without a body' do
        @post.should respond_to(:body)
        @post.attributes = valid_post_attributes.except(:body)
        @post.should_not be_valid
        @post.errors[:body].should include("Body is required!")
      end
  
      it 'should be valid with a body' do
        lambda { @post.body = 'Post body' }.should change(@post, :body).from(nil).to('Post body')
  #      @post.should be_valid
       @post.snuggs.should == 'SHAZZAAM!'
      end
  
    end
  
  end
end