require 'test_helper'

class AttemptsControllerTest < ActionController::TestCase
  setup do
    @attempt = attempts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:attempts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create attempt" do
    assert_difference('Attempt.count') do
      post :create, attempt: { answer10: @attempt.answer10, answer11: @attempt.answer11, answer12: @attempt.answer12, answer13: @attempt.answer13, answer14: @attempt.answer14, answer15: @attempt.answer15, answer16: @attempt.answer16, answer17: @attempt.answer17, answer18: @attempt.answer18, answer19: @attempt.answer19, answer1: @attempt.answer1, answer20: @attempt.answer20, answer2: @attempt.answer2, answer3: @attempt.answer3, answer4: @attempt.answer4, answer5: @attempt.answer5, answer6: @attempt.answer6, answer7: @attempt.answer7, answer8: @attempt.answer8, answer9: @attempt.answer9, user_id: @attempt.user_id }
    end

    assert_redirected_to attempt_path(assigns(:attempt))
  end

  test "should show attempt" do
    get :show, id: @attempt
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @attempt
    assert_response :success
  end

  test "should update attempt" do
    patch :update, id: @attempt, attempt: { answer10: @attempt.answer10, answer11: @attempt.answer11, answer12: @attempt.answer12, answer13: @attempt.answer13, answer14: @attempt.answer14, answer15: @attempt.answer15, answer16: @attempt.answer16, answer17: @attempt.answer17, answer18: @attempt.answer18, answer19: @attempt.answer19, answer1: @attempt.answer1, answer20: @attempt.answer20, answer2: @attempt.answer2, answer3: @attempt.answer3, answer4: @attempt.answer4, answer5: @attempt.answer5, answer6: @attempt.answer6, answer7: @attempt.answer7, answer8: @attempt.answer8, answer9: @attempt.answer9, user_id: @attempt.user_id }
    assert_redirected_to attempt_path(assigns(:attempt))
  end

  test "should destroy attempt" do
    assert_difference('Attempt.count', -1) do
      delete :destroy, id: @attempt
    end

    assert_redirected_to attempts_path
  end
end
