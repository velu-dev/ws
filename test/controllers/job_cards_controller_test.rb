require 'test_helper'

class JobCardsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @job_card = job_cards(:one)
  end

  test "should get index" do
    get job_cards_url
    assert_response :success
  end

  test "should get new" do
    get new_job_card_url
    assert_response :success
  end

  test "should create job_card" do
    assert_difference('JobCard.count') do
      post job_cards_url, params: { job_card: { approval_status: @job_card.approval_status, contact_number: @job_card.contact_number, customer_id: @job_card.customer_id, customer_vehicle_id: @job_card.customer_vehicle_id, existing_vehicle_status: @job_card.existing_vehicle_status, fuel_level: @job_card.fuel_level, handover_person: @job_card.handover_person, jobcard_status: @job_card.jobcard_status, km_traveled: @job_card.km_traveled, tenant_id: @job_card.tenant_id } }
    end

    assert_redirected_to job_card_url(JobCard.last)
  end

  test "should show job_card" do
    get job_card_url(@job_card)
    assert_response :success
  end

  test "should get edit" do
    get edit_job_card_url(@job_card)
    assert_response :success
  end

  test "should update job_card" do
    patch job_card_url(@job_card), params: { job_card: { approval_status: @job_card.approval_status, contact_number: @job_card.contact_number, customer_id: @job_card.customer_id, customer_vehicle_id: @job_card.customer_vehicle_id, existing_vehicle_status: @job_card.existing_vehicle_status, fuel_level: @job_card.fuel_level, handover_person: @job_card.handover_person, jobcard_status: @job_card.jobcard_status, km_traveled: @job_card.km_traveled, tenant_id: @job_card.tenant_id } }
    assert_redirected_to job_card_url(@job_card)
  end

  test "should destroy job_card" do
    assert_difference('JobCard.count', -1) do
      delete job_card_url(@job_card)
    end

    assert_redirected_to job_cards_url
  end
end
