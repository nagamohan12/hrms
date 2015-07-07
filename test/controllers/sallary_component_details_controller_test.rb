require 'test_helper'

class SallaryComponentDetailsControllerTest < ActionController::TestCase
  setup do
    @sallary_component_detail = sallary_component_details(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sallary_component_details)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sallary_component_detail" do
    assert_difference('SallaryComponentDetail.count') do
      post :create, sallary_component_detail: { amt_per: @sallary_component_detail.amt_per, amt_per_value: @sallary_component_detail.amt_per_value, component_type: @sallary_component_detail.component_type, name: @sallary_component_detail.name, print_name: @sallary_component_detail.print_name, status: @sallary_component_detail.status }
    end

    assert_redirected_to sallary_component_detail_path(assigns(:sallary_component_detail))
  end

  test "should show sallary_component_detail" do
    get :show, id: @sallary_component_detail
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sallary_component_detail
    assert_response :success
  end

  test "should update sallary_component_detail" do
    patch :update, id: @sallary_component_detail, sallary_component_detail: { amt_per: @sallary_component_detail.amt_per, amt_per_value: @sallary_component_detail.amt_per_value, component_type: @sallary_component_detail.component_type, name: @sallary_component_detail.name, print_name: @sallary_component_detail.print_name, status: @sallary_component_detail.status }
    assert_redirected_to sallary_component_detail_path(assigns(:sallary_component_detail))
  end

  test "should destroy sallary_component_detail" do
    assert_difference('SallaryComponentDetail.count', -1) do
      delete :destroy, id: @sallary_component_detail
    end

    assert_redirected_to sallary_component_details_path
  end
end
