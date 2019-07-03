require 'test_helper'

class PostTest < ActiveSupport::TestCase
  def setup
    @user = User.new(name: "Lebron James", email: "lebron@james.com").save
    @post = Post.new(title: "Test Title", body: "This is an example body for testing.", user_id: 1)
  end

  test "post should be valid" do
    assert @post.valid?
  end

  test "title should not be present" do
    @post.title = " "
    assert_not @post.valid?
  end

  test "body should not be present" do
    @post.body = " "
    assert_not @post.valid?
  end

  test "title should be between 3 to 50 characters" do
    @post.title = "a" * 2
    assert_not @post.valid?
    @post.title = "a" * 51
    assert_not @post.valid?
  end
end
