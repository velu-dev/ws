require 'test_helper'

class SparesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @spare = spares(:one)
  end

  test "should get index" do
    get spares_url
    assert_response :success
  end

  test "should get new" do
    get new_spare_url
    assert_response :success
  end

  test "should create spare" do
    assert_difference('Spare.count') do
      post spares_url, params: { spare: { description: @spare.description, item_name: @spare.item_name, part_number: @spare.part_number, spares_category_id: @spare.spares_category_id, unit_id: @spare.unit_id } }
    end

    assert_redirected_to spare_url(Spare.last)
  end

  test "should show spare" do
    get spare_url(@spare)
    assert_response :success
  end

  test "should get edit" do
    get edit_spare_url(@spare)
    assert_response :success
  end

  test "should update spare" do
    patch spare_url(@spare), params: { spare: { description: @spare.description, item_name: @spare.item_name, part_number: @spare.part_number, spares_category_id: @spare.spares_category_id, unit_id: @spare.unit_id } }
    assert_redirected_to spare_url(@spare)
  end

  test "should destroy spare" do
    assert_difference('Spare.count', -1) do
      delete spare_url(@spare)
    end

    assert_redirected_to spares_url
  end
end
