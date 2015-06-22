require 'test_helper'

class UserWorkDetailsControllerTest < ActionController::TestCase
  setup do
    @user_work_detail = user_work_details(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_work_details)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_work_detail" do
    assert_difference('UserWorkDetail.count') do
      post :create, user_work_detail: { login: @user_work_detail.login, logout: @user_work_detail.logout, total_time: @user_work_detail.total_time, user_id: @user_work_detail.user_id }
    end

    assert_redirected_to user_work_detail_path(assigns(:user_work_detail))
  end

  test "should show user_work_detail" do
    get :show, id: @user_work_detail
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_work_detail
    assert_response :success
  end

  test "should update user_work_detail" do
    patch :update, id: @user_work_detail, user_work_detail: { login: @user_work_detail.login, logout: @user_work_detail.logout, total_time: @user_work_detail.total_time, user_id: @user_work_detail.user_id }
    assert_redirected_to user_work_detail_path(assigns(:user_work_detail))
  end

  test "should destroy user_work_detail" do
    assert_difference('UserWorkDetail.count', -1) do
      delete :destroy, id: @user_work_detail
    end

    assert_redirected_to user_work_details_path
  end
end
