require "test_helper"

class SonparentsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get sonparents_create_url
    assert_response :success
  end
end
