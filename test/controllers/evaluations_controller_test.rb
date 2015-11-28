require 'test_helper'

class EvaluationsControllerTest < ActionController::TestCase
  setup do
    @evaluation = evaluations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:evaluations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create evaluation" do
    assert_difference('Evaluation.count') do
      post :create, evaluation: { add_comments: @evaluation.add_comments, address: @evaluation.address, advance_topics: @evaluation.advance_topics, advanced: @evaluation.advanced, city: @evaluation.city, completion_date: @evaluation.completion_date, develop: @evaluation.develop, develop_comments: @evaluation.develop_comments, feedback: @evaluation.feedback, feedback_comments: @evaluation.feedback_comments, license: @evaluation.license, overall: @evaluation.overall, state: @evaluation.state, teaching: @evaluation.teaching, teaching_comments: @evaluation.teaching_comments, topics: @evaluation.topics, use: @evaluation.use, use_comments: @evaluation.use_comments, zip: @evaluation.zip }
    end

    assert_redirected_to evaluation_path(assigns(:evaluation))
  end

  test "should show evaluation" do
    get :show, id: @evaluation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @evaluation
    assert_response :success
  end

  test "should update evaluation" do
    patch :update, id: @evaluation, evaluation: { add_comments: @evaluation.add_comments, address: @evaluation.address, advance_topics: @evaluation.advance_topics, advanced: @evaluation.advanced, city: @evaluation.city, completion_date: @evaluation.completion_date, develop: @evaluation.develop, develop_comments: @evaluation.develop_comments, feedback: @evaluation.feedback, feedback_comments: @evaluation.feedback_comments, license: @evaluation.license, overall: @evaluation.overall, state: @evaluation.state, teaching: @evaluation.teaching, teaching_comments: @evaluation.teaching_comments, topics: @evaluation.topics, use: @evaluation.use, use_comments: @evaluation.use_comments, zip: @evaluation.zip }
    assert_redirected_to evaluation_path(assigns(:evaluation))
  end

  test "should destroy evaluation" do
    assert_difference('Evaluation.count', -1) do
      delete :destroy, id: @evaluation
    end

    assert_redirected_to evaluations_path
  end
end
