require "test_helper"

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get landing" do
    get pages_landing_url
    assert_response :success
  end

  test "should get squeeze" do
    get pages_squeeze_url
    assert_response :success
  end

  test "should get payment" do
    get pages_payment_url
    assert_response :success
  end

  test "should get confirmation" do
    get pages_confirmation_url
    assert_response :success
  end

  test "should get legals" do
    get pages_legals_url
    assert_response :success
  end
end
