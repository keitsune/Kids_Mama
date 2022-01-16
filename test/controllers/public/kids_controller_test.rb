require 'test_helper'

class Public::KidsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get public_kids_show_url
    assert_response :success
  end

  test "should get edit" do
    get public_kids_edit_url
    assert_response :success
  end

  test "should get unsubscribe" do
    get public_kids_unsubscribe_url
    assert_response :success
  end

end
