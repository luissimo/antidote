require 'test_helper'

class CustomersControllerTest < ActionController::TestCase
  setup do
    @customer = customers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:customers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create customer" do
    assert_difference('Customer.count') do
      post :create, customer: { address_line_1: @customer.address_line_1, address_line_2: @customer.address_line_2, bank_holder_name: @customer.bank_holder_name, bic_number: @customer.bic_number, btw_number: @customer.btw_number, company_name: @customer.company_name, country_name: @customer.country_name, email_address: @customer.email_address, first_name: @customer.first_name, iban_number: @customer.iban_number, kvk_number: @customer.kvk_number, last_name: @customer.last_name, phone_number: @customer.phone_number, send_to_name: @customer.send_to_name, zip_code: @customer.zip_code }
    end

    assert_redirected_to customer_path(assigns(:customer))
  end

  test "should show customer" do
    get :show, id: @customer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @customer
    assert_response :success
  end

  test "should update customer" do
    patch :update, id: @customer, customer: { address_line_1: @customer.address_line_1, address_line_2: @customer.address_line_2, bank_holder_name: @customer.bank_holder_name, bic_number: @customer.bic_number, btw_number: @customer.btw_number, company_name: @customer.company_name, country_name: @customer.country_name, email_address: @customer.email_address, first_name: @customer.first_name, iban_number: @customer.iban_number, kvk_number: @customer.kvk_number, last_name: @customer.last_name, phone_number: @customer.phone_number, send_to_name: @customer.send_to_name, zip_code: @customer.zip_code }
    assert_redirected_to customer_path(assigns(:customer))
  end

  test "should destroy customer" do
    assert_difference('Customer.count', -1) do
      delete :destroy, id: @customer
    end

    assert_redirected_to customers_path
  end
end
