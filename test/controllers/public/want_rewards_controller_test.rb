require 'test_helper'

class Public::WantRewardsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get public_want_rewards_index_url
    assert_response :success
  end

  test "should get target" do
    get public_want_rewards_target_url
    assert_response :success
  end

end
