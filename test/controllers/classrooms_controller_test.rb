require "test_helper"

class ClassroomsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get classrooms_create_url
    assert_response :success
  end
end
