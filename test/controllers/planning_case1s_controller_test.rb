require 'test_helper'

class PlanningCase1sControllerTest < ActionController::TestCase
  setup do
    @planning_case1 = planning_case1s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:planning_case1s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create planning_case1" do
    assert_difference('PlanningCase1.count') do
      post :create, planning_case1: { appropriate: @planning_case1.appropriate, experiences: @planning_case1.experiences, orientation: @planning_case1.orientation, user_id: @planning_case1.user_id }
    end

    assert_redirected_to planning_case1_path(assigns(:planning_case1))
  end

  test "should show planning_case1" do
    get :show, id: @planning_case1
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @planning_case1
    assert_response :success
  end

  test "should update planning_case1" do
    patch :update, id: @planning_case1, planning_case1: { appropriate: @planning_case1.appropriate, experiences: @planning_case1.experiences, orientation: @planning_case1.orientation, user_id: @planning_case1.user_id }
    assert_redirected_to planning_case1_path(assigns(:planning_case1))
  end

  test "should destroy planning_case1" do
    assert_difference('PlanningCase1.count', -1) do
      delete :destroy, id: @planning_case1
    end

    assert_redirected_to planning_case1s_path
  end
end
