require 'test_helper'

class PropertyDetailsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:property_details)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create property_detail" do
    assert_difference('PropertyDetail.count') do
      post :create, :property_detail => { }
    end

    assert_redirected_to property_detail_path(assigns(:property_detail))
  end

  test "should show property_detail" do
    get :show, :id => property_details(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => property_details(:one).to_param
    assert_response :success
  end

  test "should update property_detail" do
    put :update, :id => property_details(:one).to_param, :property_detail => { }
    assert_redirected_to property_detail_path(assigns(:property_detail))
  end

  test "should destroy property_detail" do
    assert_difference('PropertyDetail.count', -1) do
      delete :destroy, :id => property_details(:one).to_param
    end

    assert_redirected_to property_details_path
  end
end
