require 'test_helper'

class UserDetailsControllerTest < ActionController::TestCase
  setup do
    @user_detail = user_details(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_details)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_detail" do
    assert_difference('UserDetail.count') do
      post :create, user_detail: { blood_group_id: @user_detail.blood_group_id, department_id: @user_detail.department_id, designation_id: @user_detail.designation_id, dob: @user_detail.dob, fax: @user_detail.fax, first_name: @user_detail.first_name, gender: @user_detail.gender, grade_id: @user_detail.grade_id, last_name: @user_detail.last_name, official_email: @user_detail.official_email, official_mobile: @user_detail.official_mobile, official_phone: @user_detail.official_phone, pan_no: @user_detail.pan_no, religion_id: @user_detail.religion_id, user_id: @user_detail.user_id, user_type_id: @user_detail.user_type_id }
    end

    assert_redirected_to user_detail_path(assigns(:user_detail))
  end

  test "should show user_detail" do
    get :show, id: @user_detail
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_detail
    assert_response :success
  end

  test "should update user_detail" do
    patch :update, id: @user_detail, user_detail: { blood_group_id: @user_detail.blood_group_id, department_id: @user_detail.department_id, designation_id: @user_detail.designation_id, dob: @user_detail.dob, fax: @user_detail.fax, first_name: @user_detail.first_name, gender: @user_detail.gender, grade_id: @user_detail.grade_id, last_name: @user_detail.last_name, official_email: @user_detail.official_email, official_mobile: @user_detail.official_mobile, official_phone: @user_detail.official_phone, pan_no: @user_detail.pan_no, religion_id: @user_detail.religion_id, user_id: @user_detail.user_id, user_type_id: @user_detail.user_type_id }
    assert_redirected_to user_detail_path(assigns(:user_detail))
  end

  test "should destroy user_detail" do
    assert_difference('UserDetail.count', -1) do
      delete :destroy, id: @user_detail
    end

    assert_redirected_to user_details_path
  end
end
