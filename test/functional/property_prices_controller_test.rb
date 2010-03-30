require 'test_helper'

class PropertyPricesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:property_prices)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create property_price" do
    assert_difference('PropertyPrice.count') do
      post :create, :property_price => { }
    end

    assert_redirected_to property_price_path(assigns(:property_price))
  end

  test "should show property_price" do
    get :show, :id => property_prices(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => property_prices(:one).to_param
    assert_response :success
  end

  test "should update property_price" do
    put :update, :id => property_prices(:one).to_param, :property_price => { }
    assert_redirected_to property_price_path(assigns(:property_price))
  end

  test "should destroy property_price" do
    assert_difference('PropertyPrice.count', -1) do
      delete :destroy, :id => property_prices(:one).to_param
    end

    assert_redirected_to property_prices_path
  end
end
