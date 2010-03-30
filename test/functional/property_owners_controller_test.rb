require 'test_helper'

class PropertyOwnersControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:property_owners)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create property_owner" do
    assert_difference('PropertyOwner.count') do
      post :create, :property_owner => { }
    end

    assert_redirected_to property_owner_path(assigns(:property_owner))
  end

  test "should show property_owner" do
    get :show, :id => property_owners(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => property_owners(:one).to_param
    assert_response :success
  end

  test "should update property_owner" do
    put :update, :id => property_owners(:one).to_param, :property_owner => { }
    assert_redirected_to property_owner_path(assigns(:property_owner))
  end

  test "should destroy property_owner" do
    assert_difference('PropertyOwner.count', -1) do
      delete :destroy, :id => property_owners(:one).to_param
    end

    assert_redirected_to property_owners_path
  end
end
