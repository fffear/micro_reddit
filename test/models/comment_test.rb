require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  def setup
    @user1 = User.create(name: "Lebron James", email: "lebron@james.com")
    @user2 = User.create(name: "Kobe Bryant", email: "kobe@bryant.com")
    @post = Post.create(title: "Test Title", body: "This is an example body for testing.", user_id: 1)
    @comment = Comment.new(body: "This is a comment on Lebron's post.", user_id: 2, post_id: @post.id)
  end

  test "comment is valid" do
    assert @comment.valid?
  end

  test "body should not be present" do
    @comment.body = " "
    assert_not @comment.valid?
  end

  test "user_id should not be present" do
    @comment.user_id = nil
    assert_not @comment.valid?
  end

  test "post_id should not be present" do
    @comment.post_id = nil
    assert_not @comment.valid?
  end
end
