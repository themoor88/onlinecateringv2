require 'test_helper'

class Customers::AddressesControllerTest < ActionController::TestCase
  setup do
    @customers_address = customers_addresses(:one)
  end

  test 'should get index' do
    get :index
    assert_response :success
    assert_not_nil assigns(:customers_addresses)
  end

  test 'should get new' do
    get :new
    assert_response :success
  end

  test 'should create customers_address' do
    assert_difference('Customers::Address.count') do
      post :create, customers_address: {}
    end

    assert_redirected_to customers_address_path(assigns(:customers_address))
  end

  test 'should show customers_address' do
    get :show, id: @customers_address
    assert_response :success
  end

  test 'should get edit' do
    get :edit, id: @customers_address
    assert_response :success
  end

  test 'should update customers_address' do
    patch :update, id: @customers_address, customers_address: {}
    assert_redirected_to customers_address_path(assigns(:customers_address))
  end

  test 'should destroy customers_address' do
    assert_difference('Customers::Address.count', -1) do
      delete :destroy, id: @customers_address
    end

    assert_redirected_to customers_addresses_path
  end
end
