require 'test_helper'

class Vendors::FooditemsControllerTest < ActionController::TestCase
  setup do
    @vendors_fooditem = vendors_fooditems(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vendors_fooditems)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vendors_fooditem" do
    assert_difference('Vendors::Fooditem.count') do
      post :create, vendors_fooditem: {  }
    end

    assert_redirected_to vendors_fooditem_path(assigns(:vendors_fooditem))
  end

  test "should show vendors_fooditem" do
    get :show, id: @vendors_fooditem
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @vendors_fooditem
    assert_response :success
  end

  test "should update vendors_fooditem" do
    patch :update, id: @vendors_fooditem, vendors_fooditem: {  }
    assert_redirected_to vendors_fooditem_path(assigns(:vendors_fooditem))
  end

  test "should destroy vendors_fooditem" do
    assert_difference('Vendors::Fooditem.count', -1) do
      delete :destroy, id: @vendors_fooditem
    end

    assert_redirected_to vendors_fooditems_path
  end
end
