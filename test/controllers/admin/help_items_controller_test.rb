require 'test_helper'

class Admin::HelpItemsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_help_items_index_url
    assert_response :success
  end

end
