require 'test_helper'

class PostTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
  
  test "shouldn't save without a title" do
    post = Post.new
    assert !post.save
  end
end
