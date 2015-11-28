require 'test_helper'

class TeachingActivitiesControllerTest < ActionController::TestCase
  setup do
    @teaching_activity = teaching_activities(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:teaching_activities)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create teaching_activity" do
    assert_difference('TeachingActivity.count') do
      post :create, teaching_activity: { activity1: @teaching_activity.activity1, activity2: @teaching_activity.activity2, user_id: @teaching_activity.user_id }
    end

    assert_redirected_to teaching_activity_path(assigns(:teaching_activity))
  end

  test "should show teaching_activity" do
    get :show, id: @teaching_activity
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @teaching_activity
    assert_response :success
  end

  test "should update teaching_activity" do
    patch :update, id: @teaching_activity, teaching_activity: { activity1: @teaching_activity.activity1, activity2: @teaching_activity.activity2, user_id: @teaching_activity.user_id }
    assert_redirected_to teaching_activity_path(assigns(:teaching_activity))
  end

  test "should destroy teaching_activity" do
    assert_difference('TeachingActivity.count', -1) do
      delete :destroy, id: @teaching_activity
    end

    assert_redirected_to teaching_activities_path
  end
end
