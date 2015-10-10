require 'test_helper'

class QuizControllerTest < ActionController::TestCase
  test "should get display" do
    get :display
    assert_response :success
  end

  test "should get results" do
    get :results
    assert_response :success
  end

end
