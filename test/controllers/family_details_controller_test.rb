require 'test_helper'

class FamilyDetailsControllerTest < ActionController::TestCase
  setup do
    @family_detail = family_details(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:family_details)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create family_detail" do
    assert_difference('FamilyDetail.count') do
      post :create, family_detail: { blood_group_id: @family_detail.blood_group_id, dob: @family_detail.dob, gender: @family_detail.gender, is_dependent: @family_detail.is_dependent, name: @family_detail.name, nationality: @family_detail.nationality, profession: @family_detail.profession, relationship: @family_detail.relationship, user_id: @family_detail.user_id }
    end

    assert_redirected_to family_detail_path(assigns(:family_detail))
  end

  test "should show family_detail" do
    get :show, id: @family_detail
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @family_detail
    assert_response :success
  end

  test "should update family_detail" do
    patch :update, id: @family_detail, family_detail: { blood_group_id: @family_detail.blood_group_id, dob: @family_detail.dob, gender: @family_detail.gender, is_dependent: @family_detail.is_dependent, name: @family_detail.name, nationality: @family_detail.nationality, profession: @family_detail.profession, relationship: @family_detail.relationship, user_id: @family_detail.user_id }
    assert_redirected_to family_detail_path(assigns(:family_detail))
  end

  test "should destroy family_detail" do
    assert_difference('FamilyDetail.count', -1) do
      delete :destroy, id: @family_detail
    end

    assert_redirected_to family_details_path
  end
end
