require 'test_helper'

class CommunicationPagesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get communication" do
    get :communication
    assert_response :success
  end

  test "should get three" do
    get :three
    assert_response :success
  end

  test "should get verbal" do
    get :verbal
    assert_response :success
  end

  test "should get nonverbal" do
    get :nonverbal
    assert_response :success
  end

  test "should get feedback" do
    get :feedback
    assert_response :success
  end

end
