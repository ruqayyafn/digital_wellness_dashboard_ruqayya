require "test_helper"

class PopupsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get popups_show_url
    assert_response :success
  end
end
