require 'test_helper'

class UserValidateOnlyDbsControllerTest < ActionController::TestCase
  setup do
    @user_validate_only_db = user_validate_only_dbs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_validate_only_dbs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_validate_only_db" do
    assert_difference('UserValidateOnlyDb.count') do
      post :create, user_validate_only_db: { name: @user_validate_only_db.name, password: @user_validate_only_db.password }
    end

    assert_redirected_to user_validate_only_db_path(assigns(:user_validate_only_db))
  end

  test "should show user_validate_only_db" do
    get :show, id: @user_validate_only_db
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_validate_only_db
    assert_response :success
  end

  test "should update user_validate_only_db" do
    patch :update, id: @user_validate_only_db, user_validate_only_db: { name: @user_validate_only_db.name, password: @user_validate_only_db.password }
    assert_redirected_to user_validate_only_db_path(assigns(:user_validate_only_db))
  end

  test "should destroy user_validate_only_db" do
    assert_difference('UserValidateOnlyDb.count', -1) do
      delete :destroy, id: @user_validate_only_db
    end

    assert_redirected_to user_validate_only_dbs_path
  end
end
