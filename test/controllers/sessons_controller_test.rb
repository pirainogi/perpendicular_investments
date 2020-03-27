require 'test_helper'

class SessonsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get sessons_new_url
    assert_response :success
  end

  test "should get create" do
    get sessons_create_url
    assert_response :success
  end

  test "should get login" do
    get sessons_login_url
    assert_response :success
  end

  test "should get home" do
    get sessons_home_url
    assert_response :success
  end

  test "should get logout" do
    get sessons_logout_url
    assert_response :success
  end

end
