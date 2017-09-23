require 'test_helper'

class SpareBillsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @spare_bill = spare_bills(:one)
  end

  test "should get index" do
    get spare_bills_url
    assert_response :success
  end

  test "should get new" do
    get new_spare_bill_url
    assert_response :success
  end

  test "should create spare_bill" do
    assert_difference('SpareBill.count') do
      post spare_bills_url, params: { spare_bill: { cgst: @spare_bill.cgst, cost_per_unit: @spare_bill.cost_per_unit, job_card_id: @spare_bill.job_card_id, quantity: @spare_bill.quantity, sgst: @spare_bill.sgst, spare_id: @spare_bill.spare_id, sub_total: @spare_bill.sub_total } }
    end

    assert_redirected_to spare_bill_url(SpareBill.last)
  end

  test "should show spare_bill" do
    get spare_bill_url(@spare_bill)
    assert_response :success
  end

  test "should get edit" do
    get edit_spare_bill_url(@spare_bill)
    assert_response :success
  end

  test "should update spare_bill" do
    patch spare_bill_url(@spare_bill), params: { spare_bill: { cgst: @spare_bill.cgst, cost_per_unit: @spare_bill.cost_per_unit, job_card_id: @spare_bill.job_card_id, quantity: @spare_bill.quantity, sgst: @spare_bill.sgst, spare_id: @spare_bill.spare_id, sub_total: @spare_bill.sub_total } }
    assert_redirected_to spare_bill_url(@spare_bill)
  end

  test "should destroy spare_bill" do
    assert_difference('SpareBill.count', -1) do
      delete spare_bill_url(@spare_bill)
    end

    assert_redirected_to spare_bills_url
  end
end
