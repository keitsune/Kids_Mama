require 'test_helper'

class Public::HelpsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get public_helps_index_url
    assert_response :success
  end

end
