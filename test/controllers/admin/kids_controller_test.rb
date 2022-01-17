require 'test_helper'

class Admin::KidsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_kids_index_url
    assert_response :success
  end

  test "should get show" do
    get admin_kids_show_url
    assert_response :success
  end

end
