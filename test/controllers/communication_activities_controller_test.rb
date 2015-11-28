require 'test_helper'

class CommunicationActivitiesControllerTest < ActionController::TestCase
  setup do
    @communication_activity = communication_activities(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:communication_activities)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create communication_activity" do
    assert_difference('CommunicationActivity.count') do
      post :create, communication_activity: { abrupt: @communication_activity.abrupt, abrupt_speed: @communication_activity.abrupt_speed, activity3_1: @communication_activity.activity3_1, activity3_2: @communication_activity.activity3_2, activity3_3: @communication_activity.activity3_3, activity3_4: @communication_activity.activity3_4, activity3_5: @communication_activity.activity3_5, activity3_6: @communication_activity.activity3_6, activity4: @communication_activity.activity4, aggressive: @communication_activity.aggressive, aloof: @communication_activity.aloof, ascending: @communication_activity.ascending, bored: @communication_activity.bored, careless: @communication_activity.careless, caring: @communication_activity.caring, content: @communication_activity.content, eager: @communication_activity.eager, helpful: @communication_activity.helpful, high_pitch: @communication_activity.high_pitch, high_voice: @communication_activity.high_voice, imaginative: @communication_activity.imaginative, mono: @communication_activity.mono, passive: @communication_activity.passive, shy: @communication_activity.shy, slow: @communication_activity.slow, terse: @communication_activity.terse, unhappy: @communication_activity.unhappy, unprepared: @communication_activity.unprepared, user_id: @communication_activity.user_id }
    end

    assert_redirected_to communication_activity_path(assigns(:communication_activity))
  end

  test "should show communication_activity" do
    get :show, id: @communication_activity
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @communication_activity
    assert_response :success
  end

  test "should update communication_activity" do
    patch :update, id: @communication_activity, communication_activity: { abrupt: @communication_activity.abrupt, abrupt_speed: @communication_activity.abrupt_speed, activity3_1: @communication_activity.activity3_1, activity3_2: @communication_activity.activity3_2, activity3_3: @communication_activity.activity3_3, activity3_4: @communication_activity.activity3_4, activity3_5: @communication_activity.activity3_5, activity3_6: @communication_activity.activity3_6, activity4: @communication_activity.activity4, aggressive: @communication_activity.aggressive, aloof: @communication_activity.aloof, ascending: @communication_activity.ascending, bored: @communication_activity.bored, careless: @communication_activity.careless, caring: @communication_activity.caring, content: @communication_activity.content, eager: @communication_activity.eager, helpful: @communication_activity.helpful, high_pitch: @communication_activity.high_pitch, high_voice: @communication_activity.high_voice, imaginative: @communication_activity.imaginative, mono: @communication_activity.mono, passive: @communication_activity.passive, shy: @communication_activity.shy, slow: @communication_activity.slow, terse: @communication_activity.terse, unhappy: @communication_activity.unhappy, unprepared: @communication_activity.unprepared, user_id: @communication_activity.user_id }
    assert_redirected_to communication_activity_path(assigns(:communication_activity))
  end

  test "should destroy communication_activity" do
    assert_difference('CommunicationActivity.count', -1) do
      delete :destroy, id: @communication_activity
    end

    assert_redirected_to communication_activities_path
  end
end
