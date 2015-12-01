require 'test_helper'

class UserValidateOnlyRailsControllerTest < ActionController::TestCase
  setup do
    @user_validate_only_rail = user_validate_only_rails(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_validate_only_rails)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_validate_only_rail" do
    assert_difference('UserValidateOnlyRail.count') do
      post :create, user_validate_only_rail: { name: @user_validate_only_rail.name, password: @user_validate_only_rail.password }
    end

    assert_redirected_to user_validate_only_rail_path(assigns(:user_validate_only_rail))
  end

  test "should show user_validate_only_rail" do
    get :show, id: @user_validate_only_rail
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_validate_only_rail
    assert_response :success
  end

  test "should update user_validate_only_rail" do
    patch :update, id: @user_validate_only_rail, user_validate_only_rail: { name: @user_validate_only_rail.name, password: @user_validate_only_rail.password }
    assert_redirected_to user_validate_only_rail_path(assigns(:user_validate_only_rail))
  end

  test "should destroy user_validate_only_rail" do
    assert_difference('UserValidateOnlyRail.count', -1) do
      delete :destroy, id: @user_validate_only_rail
    end

    assert_redirected_to user_validate_only_rails_path
  end
end
