require 'test_helper'

class CustomerVehiclesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @customer_vehicle = customer_vehicles(:one)
  end

  test "should get index" do
    get customer_vehicles_url
    assert_response :success
  end

  test "should get new" do
    get new_customer_vehicle_url
    assert_response :success
  end

  test "should create customer_vehicle" do
    assert_difference('CustomerVehicle.count') do
      post customer_vehicles_url, params: { customer_vehicle: { brand: @customer_vehicle.brand, customer_id: @customer_vehicle.customer_id, model: @customer_vehicle.model, registration_number: @customer_vehicle.registration_number, tenant_id: @customer_vehicle.tenant_id, vehicle_name: @customer_vehicle.vehicle_name, vin_or_chassis_number: @customer_vehicle.vin_or_chassis_number, year_of_manufacture: @customer_vehicle.year_of_manufacture } }
    end

    assert_redirected_to customer_vehicle_url(CustomerVehicle.last)
  end

  test "should show customer_vehicle" do
    get customer_vehicle_url(@customer_vehicle)
    assert_response :success
  end

  test "should get edit" do
    get edit_customer_vehicle_url(@customer_vehicle)
    assert_response :success
  end

  test "should update customer_vehicle" do
    patch customer_vehicle_url(@customer_vehicle), params: { customer_vehicle: { brand: @customer_vehicle.brand, customer_id: @customer_vehicle.customer_id, model: @customer_vehicle.model, registration_number: @customer_vehicle.registration_number, tenant_id: @customer_vehicle.tenant_id, vehicle_name: @customer_vehicle.vehicle_name, vin_or_chassis_number: @customer_vehicle.vin_or_chassis_number, year_of_manufacture: @customer_vehicle.year_of_manufacture } }
    assert_redirected_to customer_vehicle_url(@customer_vehicle)
  end

  test "should destroy customer_vehicle" do
    assert_difference('CustomerVehicle.count', -1) do
      delete customer_vehicle_url(@customer_vehicle)
    end

    assert_redirected_to customer_vehicles_url
  end
end
