require 'test_helper'

class Public::HelpItemsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get public_help_items_index_url
    assert_response :success
  end

end
