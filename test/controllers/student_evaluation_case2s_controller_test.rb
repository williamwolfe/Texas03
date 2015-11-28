require 'test_helper'

class StudentEvaluationCase2sControllerTest < ActionController::TestCase
  setup do
    @student_evaluation_case2 = student_evaluation_case2s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:student_evaluation_case2s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create student_evaluation_case2" do
    assert_difference('StudentEvaluationCase2.count') do
      post :create, student_evaluation_case2: { plan: @student_evaluation_case2.plan, rate: @student_evaluation_case2.rate, user_id: @student_evaluation_case2.user_id }
    end

    assert_redirected_to student_evaluation_case2_path(assigns(:student_evaluation_case2))
  end

  test "should show student_evaluation_case2" do
    get :show, id: @student_evaluation_case2
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @student_evaluation_case2
    assert_response :success
  end

  test "should update student_evaluation_case2" do
    patch :update, id: @student_evaluation_case2, student_evaluation_case2: { plan: @student_evaluation_case2.plan, rate: @student_evaluation_case2.rate, user_id: @student_evaluation_case2.user_id }
    assert_redirected_to student_evaluation_case2_path(assigns(:student_evaluation_case2))
  end

  test "should destroy student_evaluation_case2" do
    assert_difference('StudentEvaluationCase2.count', -1) do
      delete :destroy, id: @student_evaluation_case2
    end

    assert_redirected_to student_evaluation_case2s_path
  end
end
