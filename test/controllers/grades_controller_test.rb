require "test_helper"

class GradesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get grades_index_url
    assert_response :success
  end

  test "should get new" do
    get grades_new_url
    assert_response :success
  end

  test "should get create" do
    get grades_create_url
    assert_response :success
  end

  test "should get edit" do
    get grades_edit_url
    assert_response :success
  end

  test "should get update" do
    get grades_update_url
    assert_response :success
  end

  test "should get show" do
    get grades_show_url
    assert_response :success
  end

  test "should get destroy" do
    get grades_destroy_url
    assert_response :success
  end
end
