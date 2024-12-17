require "test_helper"

class StoryPartsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get story_parts_show_url
    assert_response :success
  end

  test "should get update" do
    get story_parts_update_url
    assert_response :success
  end
end
