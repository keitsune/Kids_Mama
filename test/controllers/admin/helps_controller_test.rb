require 'test_helper'

class Admin::HelpsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_helps_index_url
    assert_response :success
  end

  test "should get new" do
    get admin_helps_new_url
    assert_response :success
  end

  test "should get show" do
    get admin_helps_show_url
    assert_response :success
  end

  test "should get edit" do
    get admin_helps_edit_url
    assert_response :success
  end

end
