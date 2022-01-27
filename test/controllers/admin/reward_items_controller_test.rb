require 'test_helper'

class Admin::RewardItemsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_reward_items_index_url
    assert_response :success
  end

end
