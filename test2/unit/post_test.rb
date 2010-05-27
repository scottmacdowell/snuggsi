#require 'test_helper'
require 'test/unit'

class PostTest < Test::Unit::TestCase # ActiveSupport::TestCase
  def setup
   @post = Post.new
  end
  
  def teardown
  
  end
  
  test 'the truth' do
    assert @post.nil? 
    assert true # limit title
    assert true # limit author
  end
end
