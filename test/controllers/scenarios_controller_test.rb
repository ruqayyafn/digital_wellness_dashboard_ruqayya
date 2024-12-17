require "test_helper"

class ScenariosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get scenarios_index_url
    assert_response :success
  end

  test "should get home" do
    get scenarios_home_url
    assert_response :success
  end
end
