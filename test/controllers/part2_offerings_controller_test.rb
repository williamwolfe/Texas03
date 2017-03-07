require 'test_helper'

class Part2OfferingsControllerTest < ActionController::TestCase
  setup do
    @part2_offering = part2_offerings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:part2_offerings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create part2_offering" do
    assert_difference('Part2Offering.count') do
      post :create, part2_offering: { description: @part2_offering.description, link: @part2_offering.link, title: @part2_offering.title }
    end

    assert_redirected_to part2_offering_path(assigns(:part2_offering))
  end

  test "should show part2_offering" do
    get :show, id: @part2_offering
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @part2_offering
    assert_response :success
  end

  test "should update part2_offering" do
    patch :update, id: @part2_offering, part2_offering: { description: @part2_offering.description, link: @part2_offering.link, title: @part2_offering.title }
    assert_redirected_to part2_offering_path(assigns(:part2_offering))
  end

  test "should destroy part2_offering" do
    assert_difference('Part2Offering.count', -1) do
      delete :destroy, id: @part2_offering
    end

    assert_redirected_to part2_offerings_path
  end
end
