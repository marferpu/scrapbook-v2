require "test_helper"

class CourseTeachersControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get course_teachers_create_url
    assert_response :success
  end
end
