require 'test_helper'

class WhiteControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get white_home_url
    assert_response :success
  end

  test "should get page" do
    get white_page_url
    assert_response :success
  end

  test "should get graphy" do
    get white_graphy_url
    assert_response :success
  end

  test "should get inquiry" do
    get white_inquiry_url
    assert_response :success
  end

end
