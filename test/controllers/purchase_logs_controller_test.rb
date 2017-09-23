require 'test_helper'

class PurchaseLogsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @purchase_log = purchase_logs(:one)
  end

  test "should get index" do
    get purchase_logs_url
    assert_response :success
  end

  test "should get new" do
    get new_purchase_log_url
    assert_response :success
  end

  test "should create purchase_log" do
    assert_difference('PurchaseLog.count') do
      post purchase_logs_url, params: { purchase_log: { cgst: @purchase_log.cgst, cost_per_unit: @purchase_log.cost_per_unit, purchased_from: @purchase_log.purchased_from, quantity: @purchase_log.quantity, sgst: @purchase_log.sgst, spare_id: @purchase_log.spare_id, total_cost: @purchase_log.total_cost, user_id: @purchase_log.user_id } }
    end

    assert_redirected_to purchase_log_url(PurchaseLog.last)
  end

  test "should show purchase_log" do
    get purchase_log_url(@purchase_log)
    assert_response :success
  end

  test "should get edit" do
    get edit_purchase_log_url(@purchase_log)
    assert_response :success
  end

  test "should update purchase_log" do
    patch purchase_log_url(@purchase_log), params: { purchase_log: { cgst: @purchase_log.cgst, cost_per_unit: @purchase_log.cost_per_unit, purchased_from: @purchase_log.purchased_from, quantity: @purchase_log.quantity, sgst: @purchase_log.sgst, spare_id: @purchase_log.spare_id, total_cost: @purchase_log.total_cost, user_id: @purchase_log.user_id } }
    assert_redirected_to purchase_log_url(@purchase_log)
  end

  test "should destroy purchase_log" do
    assert_difference('PurchaseLog.count', -1) do
      delete purchase_log_url(@purchase_log)
    end

    assert_redirected_to purchase_logs_url
  end
end
