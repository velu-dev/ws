require 'test_helper'

class SparesInventoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @spares_inventory = spares_inventories(:one)
  end

  test "should get index" do
    get spares_inventories_url
    assert_response :success
  end

  test "should get new" do
    get new_spares_inventory_url
    assert_response :success
  end

  test "should create spares_inventory" do
    assert_difference('SparesInventory.count') do
      post spares_inventories_url, params: { spares_inventory: { alert_minimum_quantity: @spares_inventory.alert_minimum_quantity, available_quantity: @spares_inventory.available_quantity, spare_id: @spares_inventory.spare_id } }
    end

    assert_redirected_to spares_inventory_url(SparesInventory.last)
  end

  test "should show spares_inventory" do
    get spares_inventory_url(@spares_inventory)
    assert_response :success
  end

  test "should get edit" do
    get edit_spares_inventory_url(@spares_inventory)
    assert_response :success
  end

  test "should update spares_inventory" do
    patch spares_inventory_url(@spares_inventory), params: { spares_inventory: { alert_minimum_quantity: @spares_inventory.alert_minimum_quantity, available_quantity: @spares_inventory.available_quantity, spare_id: @spares_inventory.spare_id } }
    assert_redirected_to spares_inventory_url(@spares_inventory)
  end

  test "should destroy spares_inventory" do
    assert_difference('SparesInventory.count', -1) do
      delete spares_inventory_url(@spares_inventory)
    end

    assert_redirected_to spares_inventories_url
  end
end
