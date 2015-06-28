require 'test_helper'

class SallaryStructuresControllerTest < ActionController::TestCase
  setup do
    @sallary_structure = sallary_structures(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sallary_structures)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sallary_structure" do
    assert_difference('SallaryStructure.count') do
      post :create, sallary_structure: { amount: @sallary_structure.amount, employee_id: @sallary_structure.employee_id, name: @sallary_structure.name, sallary_component_detail_id: @sallary_structure.sallary_component_detail_id }
    end

    assert_redirected_to sallary_structure_path(assigns(:sallary_structure))
  end

  test "should show sallary_structure" do
    get :show, id: @sallary_structure
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sallary_structure
    assert_response :success
  end

  test "should update sallary_structure" do
    patch :update, id: @sallary_structure, sallary_structure: { amount: @sallary_structure.amount, employee_id: @sallary_structure.employee_id, name: @sallary_structure.name, sallary_component_detail_id: @sallary_structure.sallary_component_detail_id }
    assert_redirected_to sallary_structure_path(assigns(:sallary_structure))
  end

  test "should destroy sallary_structure" do
    assert_difference('SallaryStructure.count', -1) do
      delete :destroy, id: @sallary_structure
    end

    assert_redirected_to sallary_structures_path
  end
end
