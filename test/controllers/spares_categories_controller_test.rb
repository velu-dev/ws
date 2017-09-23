require 'test_helper'

class SparesCategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @spares_category = spares_categories(:one)
  end

  test "should get index" do
    get spares_categories_url
    assert_response :success
  end

  test "should get new" do
    get new_spares_category_url
    assert_response :success
  end

  test "should create spares_category" do
    assert_difference('SparesCategory.count') do
      post spares_categories_url, params: { spares_category: { category_code: @spares_category.category_code, category_name: @spares_category.category_name } }
    end

    assert_redirected_to spares_category_url(SparesCategory.last)
  end

  test "should show spares_category" do
    get spares_category_url(@spares_category)
    assert_response :success
  end

  test "should get edit" do
    get edit_spares_category_url(@spares_category)
    assert_response :success
  end

  test "should update spares_category" do
    patch spares_category_url(@spares_category), params: { spares_category: { category_code: @spares_category.category_code, category_name: @spares_category.category_name } }
    assert_redirected_to spares_category_url(@spares_category)
  end

  test "should destroy spares_category" do
    assert_difference('SparesCategory.count', -1) do
      delete spares_category_url(@spares_category)
    end

    assert_redirected_to spares_categories_url
  end
end
