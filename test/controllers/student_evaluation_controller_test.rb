require 'test_helper'

class StudentEvaluationControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get performance" do
    get :performance
    assert_response :success
  end

  test "should get tool" do
    get :tool
    assert_response :success
  end

  test "should get structure" do
    get :structure
    assert_response :success
  end

  test "should get ptmacs" do
    get :ptmacs
    assert_response :success
  end

  test "should get learning" do
    get :learning
    assert_response :success
  end

  test "should get use" do
    get :use
    assert_response :success
  end

end
