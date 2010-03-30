require 'test_helper'

class DemoContactsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:demo_contacts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create demo_contact" do
    assert_difference('DemoContact.count') do
      post :create, :demo_contact => { }
    end

    assert_redirected_to demo_contact_path(assigns(:demo_contact))
  end

  test "should show demo_contact" do
    get :show, :id => demo_contacts(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => demo_contacts(:one).to_param
    assert_response :success
  end

  test "should update demo_contact" do
    put :update, :id => demo_contacts(:one).to_param, :demo_contact => { }
    assert_redirected_to demo_contact_path(assigns(:demo_contact))
  end

  test "should destroy demo_contact" do
    assert_difference('DemoContact.count', -1) do
      delete :destroy, :id => demo_contacts(:one).to_param
    end

    assert_redirected_to demo_contacts_path
  end
end
