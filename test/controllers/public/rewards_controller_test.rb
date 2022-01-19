require 'test_helper'

class Public::RewardsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get public_rewards_index_url
    assert_response :success
  end

  test "should get show" do
    get public_rewards_show_url
    assert_response :success
  end

end
