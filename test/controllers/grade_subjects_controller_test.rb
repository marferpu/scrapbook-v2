require "test_helper"

class GradeSubjectsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get grade_subjects_create_url
    assert_response :success
  end
end
