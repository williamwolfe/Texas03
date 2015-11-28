require 'test_helper'

class PlanningCreditsControllerTest < ActionController::TestCase
  setup do
    @planning_credit = planning_credits(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:planning_credits)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create planning_credit" do
    assert_difference('PlanningCredit.count') do
      post :create, planning_credit: { IP: @planning_credit.IP, LTC: @planning_credit.LTC, SNF: @planning_credit.SNF, SNU: @planning_credit.SNU, acute: @planning_credit.acute, corporate: @planning_credit.corporate, list: @planning_credit.list, nonprofit: @planning_credit.nonprofit, other: @planning_credit.other, pediatric: @planning_credit.pediatric, private: @planning_credit.private, school: @planning_credit.school, user_id: @planning_credit.user_id }
    end

    assert_redirected_to planning_credit_path(assigns(:planning_credit))
  end

  test "should show planning_credit" do
    get :show, id: @planning_credit
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @planning_credit
    assert_response :success
  end

  test "should update planning_credit" do
    patch :update, id: @planning_credit, planning_credit: { IP: @planning_credit.IP, LTC: @planning_credit.LTC, SNF: @planning_credit.SNF, SNU: @planning_credit.SNU, acute: @planning_credit.acute, corporate: @planning_credit.corporate, list: @planning_credit.list, nonprofit: @planning_credit.nonprofit, other: @planning_credit.other, pediatric: @planning_credit.pediatric, private: @planning_credit.private, school: @planning_credit.school, user_id: @planning_credit.user_id }
    assert_redirected_to planning_credit_path(assigns(:planning_credit))
  end

  test "should destroy planning_credit" do
    assert_difference('PlanningCredit.count', -1) do
      delete :destroy, id: @planning_credit
    end

    assert_redirected_to planning_credits_path
  end
end
