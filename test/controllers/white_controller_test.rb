require 'test_helper'

class WhiteControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get root_path
    assert_response :success
  end

  test "should get page" do
    get page_url
    assert_response :success
  end

  test "should get graphy" do
    get graphy_url
    assert_response :success
  end

  test "should get inquiry" do
    get inquiry_url
    assert_response :success
  end

end
