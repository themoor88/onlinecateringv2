require 'test_helper'

class Customers::OrdersControllerTest < ActionController::TestCase
  setup do
    @customers_order = customers_orders(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:customers_orders)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create customers_order" do
    assert_difference('Customers::Order.count') do
      post :create, customers_order: {  }
    end

    assert_redirected_to customers_order_path(assigns(:customers_order))
  end

  test "should show customers_order" do
    get :show, id: @customers_order
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @customers_order
    assert_response :success
  end

  test "should update customers_order" do
    patch :update, id: @customers_order, customers_order: {  }
    assert_redirected_to customers_order_path(assigns(:customers_order))
  end

  test "should destroy customers_order" do
    assert_difference('Customers::Order.count', -1) do
      delete :destroy, id: @customers_order
    end

    assert_redirected_to customers_orders_path
  end
end
