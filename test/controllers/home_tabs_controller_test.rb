require 'test_helper'

class HomeTabsControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get incorporation" do
    get :incorporation
    assert_response :success
  end

  test "should get purpose" do
    get :purpose
    assert_response :success
  end

  test "should get programs" do
    get :programs
    assert_response :success
  end

  test "should get calendar" do
    get :calendar
    assert_response :success
  end

end
