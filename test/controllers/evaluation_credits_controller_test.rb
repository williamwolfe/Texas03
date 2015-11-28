require 'test_helper'

class EvaluationCreditsControllerTest < ActionController::TestCase
  setup do
    @evaluation_credit = evaluation_credits(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:evaluation_credits)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create evaluation_credit" do
    assert_difference('EvaluationCredit.count') do
      post :create, evaluation_credit: { list_skills_1: @evaluation_credit.list_skills_1, list_skills_2: @evaluation_credit.list_skills_2, rating_1: @evaluation_credit.rating_1, rating_2: @evaluation_credit.rating_2, selected_skill: @evaluation_credit.selected_skill, support: @evaluation_credit.support, user_id: @evaluation_credit.user_id }
    end

    assert_redirected_to evaluation_credit_path(assigns(:evaluation_credit))
  end

  test "should show evaluation_credit" do
    get :show, id: @evaluation_credit
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @evaluation_credit
    assert_response :success
  end

  test "should update evaluation_credit" do
    patch :update, id: @evaluation_credit, evaluation_credit: { list_skills_1: @evaluation_credit.list_skills_1, list_skills_2: @evaluation_credit.list_skills_2, rating_1: @evaluation_credit.rating_1, rating_2: @evaluation_credit.rating_2, selected_skill: @evaluation_credit.selected_skill, support: @evaluation_credit.support, user_id: @evaluation_credit.user_id }
    assert_redirected_to evaluation_credit_path(assigns(:evaluation_credit))
  end

  test "should destroy evaluation_credit" do
    assert_difference('EvaluationCredit.count', -1) do
      delete :destroy, id: @evaluation_credit
    end

    assert_redirected_to evaluation_credits_path
  end
end
