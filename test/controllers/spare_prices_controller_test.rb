require 'test_helper'

class SparePricesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @spare_price = spare_prices(:one)
  end

  test "should get index" do
    get spare_prices_url
    assert_response :success
  end

  test "should get new" do
    get new_spare_price_url
    assert_response :success
  end

  test "should create spare_price" do
    assert_difference('SparePrice.count') do
      post spare_prices_url, params: { spare_price: { actual_price_per_unit: @spare_price.actual_price_per_unit, cgst: @spare_price.cgst, sales_price_per_unit: @spare_price.sales_price_per_unit, sgst: @spare_price.sgst, spare_id: @spare_price.spare_id } }
    end

    assert_redirected_to spare_price_url(SparePrice.last)
  end

  test "should show spare_price" do
    get spare_price_url(@spare_price)
    assert_response :success
  end

  test "should get edit" do
    get edit_spare_price_url(@spare_price)
    assert_response :success
  end

  test "should update spare_price" do
    patch spare_price_url(@spare_price), params: { spare_price: { actual_price_per_unit: @spare_price.actual_price_per_unit, cgst: @spare_price.cgst, sales_price_per_unit: @spare_price.sales_price_per_unit, sgst: @spare_price.sgst, spare_id: @spare_price.spare_id } }
    assert_redirected_to spare_price_url(@spare_price)
  end

  test "should destroy spare_price" do
    assert_difference('SparePrice.count', -1) do
      delete spare_price_url(@spare_price)
    end

    assert_redirected_to spare_prices_url
  end
end
