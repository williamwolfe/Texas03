require 'test_helper'

class TeachingPagesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get learning" do
    get :learning
    assert_response :success
  end

  test "should get adult" do
    get :adult
    assert_response :success
  end

  test "should get domains" do
    get :domains
    assert_response :success
  end

  test "should get barriers" do
    get :barriers
    assert_response :success
  end

  test "should get guiding" do
    get :guiding
    assert_response :success
  end

  test "should get theory" do
    get :theory
    assert_response :success
  end

  test "should get self" do
    get :self
    assert_response :success
  end

end
