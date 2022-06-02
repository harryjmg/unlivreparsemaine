require "test_helper"

class ProspectControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get prospect_create_url
    assert_response :success
  end
end
