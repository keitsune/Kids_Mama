require 'test_helper'

class Public::RewardItemsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get public_reward_items_index_url
    assert_response :success
  end

end
