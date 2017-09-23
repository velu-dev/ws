require 'test_helper'

class ServiceBillsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @service_bill = service_bills(:one)
  end

  test "should get index" do
    get service_bills_url
    assert_response :success
  end

  test "should get new" do
    get new_service_bill_url
    assert_response :success
  end

  test "should create service_bill" do
    assert_difference('ServiceBill.count') do
      post service_bills_url, params: { service_bill: { cost: @service_bill.cost, description: @service_bill.description, job_card_id: @service_bill.job_card_id, particular_id: @service_bill.particular_id, service_name: @service_bill.service_name, user_id: @service_bill.user_id } }
    end

    assert_redirected_to service_bill_url(ServiceBill.last)
  end

  test "should show service_bill" do
    get service_bill_url(@service_bill)
    assert_response :success
  end

  test "should get edit" do
    get edit_service_bill_url(@service_bill)
    assert_response :success
  end

  test "should update service_bill" do
    patch service_bill_url(@service_bill), params: { service_bill: { cost: @service_bill.cost, description: @service_bill.description, job_card_id: @service_bill.job_card_id, particular_id: @service_bill.particular_id, service_name: @service_bill.service_name, user_id: @service_bill.user_id } }
    assert_redirected_to service_bill_url(@service_bill)
  end

  test "should destroy service_bill" do
    assert_difference('ServiceBill.count', -1) do
      delete service_bill_url(@service_bill)
    end

    assert_redirected_to service_bills_url
  end
end
