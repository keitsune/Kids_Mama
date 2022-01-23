require 'test_helper'

class Public::TargetRewardsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get public_target_rewards_index_url
    assert_response :success
  end

end
