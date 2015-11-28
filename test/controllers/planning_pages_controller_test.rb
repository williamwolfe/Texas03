require 'test_helper'

class PlanningPagesControllerTest < ActionController::TestCase
  test "should get tx_consortium" do
    get :tx_consortium
    assert_response :success
  end

  test "should get philosophy" do
    get :philosophy
    assert_response :success
  end

  test "should get players" do
    get :players
    assert_response :success
  end

  test "should get apta_link" do
    get :apta_link
    assert_response :success
  end

  test "should get site_development" do
    get :site_development
    assert_response :success
  end

  test "should get scheduling" do
    get :scheduling
    assert_response :success
  end

  test "should get clinical_education" do
    get :clinical_education
    assert_response :success
  end

  test "should get learning_experiences" do
    get :learning_experiences
    assert_response :success
  end

  test "should get legal_issues" do
    get :legal_issues
    assert_response :success
  end

  test "should get case_study" do
    get :case_study
    assert_response :success
  end

  test "should get to_receive_credit" do
    get :to_receive_credit
    assert_response :success
  end

end
