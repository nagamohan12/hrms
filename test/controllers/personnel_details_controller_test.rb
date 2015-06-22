require 'test_helper'

class PersonnelDetailsControllerTest < ActionController::TestCase
  setup do
    @personnel_detail = personnel_details(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:personnel_details)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create personnel_detail" do
    assert_difference('PersonnelDetail.count') do
      post :create, personnel_detail: { aadhar_no: @personnel_detail.aadhar_no, anniversary_date: @personnel_detail.anniversary_date, birth_place: @personnel_detail.birth_place, caste: @personnel_detail.caste, emergency_contact_number: @personnel_detail.emergency_contact_number, marital_status: @personnel_detail.marital_status, nationality: @personnel_detail.nationality, no_of_children: @personnel_detail.no_of_children, personnel_email1: @personnel_detail.personnel_email1, personnel_email: @personnel_detail.personnel_email, personnel_mobile1: @personnel_detail.personnel_mobile1, personnel_mobile: @personnel_detail.personnel_mobile, spouse_name: @personnel_detail.spouse_name, user_id: @personnel_detail.user_id, voter_id: @personnel_detail.voter_id }
    end

    assert_redirected_to personnel_detail_path(assigns(:personnel_detail))
  end

  test "should show personnel_detail" do
    get :show, id: @personnel_detail
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @personnel_detail
    assert_response :success
  end

  test "should update personnel_detail" do
    patch :update, id: @personnel_detail, personnel_detail: { aadhar_no: @personnel_detail.aadhar_no, anniversary_date: @personnel_detail.anniversary_date, birth_place: @personnel_detail.birth_place, caste: @personnel_detail.caste, emergency_contact_number: @personnel_detail.emergency_contact_number, marital_status: @personnel_detail.marital_status, nationality: @personnel_detail.nationality, no_of_children: @personnel_detail.no_of_children, personnel_email1: @personnel_detail.personnel_email1, personnel_email: @personnel_detail.personnel_email, personnel_mobile1: @personnel_detail.personnel_mobile1, personnel_mobile: @personnel_detail.personnel_mobile, spouse_name: @personnel_detail.spouse_name, user_id: @personnel_detail.user_id, voter_id: @personnel_detail.voter_id }
    assert_redirected_to personnel_detail_path(assigns(:personnel_detail))
  end

  test "should destroy personnel_detail" do
    assert_difference('PersonnelDetail.count', -1) do
      delete :destroy, id: @personnel_detail
    end

    assert_redirected_to personnel_details_path
  end
end
