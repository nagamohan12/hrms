require 'test_helper'

class UserProfessionDetailsControllerTest < ActionController::TestCase
  setup do
    @user_profession_detail = user_profession_details(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_profession_details)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_profession_detail" do
    assert_difference('UserProfessionDetail.count') do
      post :create, user_profession_detail: { doj: @user_profession_detail.doj, emp_id: @user_profession_detail.emp_id, reporting_manager: @user_profession_detail.reporting_manager, status: @user_profession_detail.status, user_id: @user_profession_detail.user_id }
    end

    assert_redirected_to user_profession_detail_path(assigns(:user_profession_detail))
  end

  test "should show user_profession_detail" do
    get :show, id: @user_profession_detail
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_profession_detail
    assert_response :success
  end

  test "should update user_profession_detail" do
    patch :update, id: @user_profession_detail, user_profession_detail: { doj: @user_profession_detail.doj, emp_id: @user_profession_detail.emp_id, reporting_manager: @user_profession_detail.reporting_manager, status: @user_profession_detail.status, user_id: @user_profession_detail.user_id }
    assert_redirected_to user_profession_detail_path(assigns(:user_profession_detail))
  end

  test "should destroy user_profession_detail" do
    assert_difference('UserProfessionDetail.count', -1) do
      delete :destroy, id: @user_profession_detail
    end

    assert_redirected_to user_profession_details_path
  end
end
