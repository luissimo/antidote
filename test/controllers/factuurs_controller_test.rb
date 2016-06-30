require 'test_helper'

class FactuursControllerTest < ActionController::TestCase
  setup do
    @factuur = factuurs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:factuurs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create factuur" do
    assert_difference('Factuur.count') do
      post :create, factuur: { amount: @factuur.amount, currency: @factuur.currency, date: @factuur.date }
    end

    assert_redirected_to factuur_path(assigns(:factuur))
  end

  test "should show factuur" do
    get :show, id: @factuur
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @factuur
    assert_response :success
  end

  test "should update factuur" do
    patch :update, id: @factuur, factuur: { amount: @factuur.amount, currency: @factuur.currency, date: @factuur.date }
    assert_redirected_to factuur_path(assigns(:factuur))
  end

  test "should destroy factuur" do
    assert_difference('Factuur.count', -1) do
      delete :destroy, id: @factuur
    end

    assert_redirected_to factuurs_path
  end
end
