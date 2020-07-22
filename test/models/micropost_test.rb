require 'test_helper'

class MicropostTest < ActiveSupport::TestCase
  def setup
    @user = users(:michael)
    @micropost = Micropost.new(content: "Lorem ipsum", title: "aaa", user_id: @user.id)
  end

  test "should be valid" do
    assert @micropost.valid?
  end

  test "user id should be present" do
    @micropost.user_id = nil
    assert_not @micropost.valid?
  end

  test "content should be present" do
    @micropost.content = "   "
    assert_not @micropost.valid?
  end
  
  test "title should be present" do
    @micropost.title = "   "
    assert_not @micropost.valid?
  end    
  
  test "order should be most recent first" do
    assert_equal microposts(:most_recent), Micropost.first
  end
  
  test "saving post" do
    assert @micropost.valid?
    post microposts_path
    @micropost.save!
  end
  
end
