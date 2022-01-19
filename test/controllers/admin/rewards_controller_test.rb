require 'test_helper'

class Admin::RewardsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_rewards_index_url
    assert_response :success
  end

  test "should get new" do
    get admin_rewards_new_url
    assert_response :success
  end

  test "should get show" do
    get admin_rewards_show_url
    assert_response :success
  end

  test "should get edit" do
    get admin_rewards_edit_url
    assert_response :success
  end

end
