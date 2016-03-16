require 'test_helper'

class Vendors::OrdersControllerTest < ActionController::TestCase
  setup do
    @vendors_order = vendors_orders(:one)
  end

  test 'should get index' do
    get :index
    assert_response :success
    assert_not_nil assigns(:vendors_orders)
  end

  test 'should get new' do
    get :new
    assert_response :success
  end

  test 'should create vendors_order' do
    assert_difference('Vendors::Order.count') do
      post :create, vendors_order: {}
    end

    assert_redirected_to vendors_order_path(assigns(:vendors_order))
  end

  test 'should show vendors_order' do
    get :show, id: @vendors_order
    assert_response :success
  end

  test 'should get edit' do
    get :edit, id: @vendors_order
    assert_response :success
  end

  test 'should update vendors_order' do
    patch :update, id: @vendors_order, vendors_order: {}
    assert_redirected_to vendors_order_path(assigns(:vendors_order))
  end

  test 'should destroy vendors_order' do
    assert_difference('Vendors::Order.count', -1) do
      delete :destroy, id: @vendors_order
    end

    assert_redirected_to vendors_orders_path
  end
end
