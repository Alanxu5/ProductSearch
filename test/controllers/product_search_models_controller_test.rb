# == Schema Information
#
# Table name: product_search_models
#
#  id         :integer          not null, primary key
#  query      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  result     :json             is an Array
#  pag_count  :integer          default(0)
#

require 'test_helper'

class ProductSearchModelsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @product_search_model = product_search_models(:one)
  end

  test "should get index" do
    get product_search_models_url
    assert_response :success
  end

  test "should get new" do
    get new_product_search_model_url
    assert_response :success
  end

  test "should create product_search_model" do
    assert_difference('ProductSearchModel.count') do
      post product_search_models_url, params: { product_search_model: { pag_count: @product_search_model.pag_count, query: @product_search_model.query, result: @product_search_model.result } }
    end

    assert_redirected_to product_search_model_url(ProductSearchModel.last)
  end

  test "should show product_search_model" do
    get product_search_model_url(@product_search_model)
    assert_response :success
  end

  test "should get edit" do
    get edit_product_search_model_url(@product_search_model)
    assert_response :success
  end

  test "should update product_search_model" do
    patch product_search_model_url(@product_search_model), params: { product_search_model: { pag_count: @product_search_model.pag_count, query: @product_search_model.query, result: @product_search_model.result } }
    assert_redirected_to product_search_model_url(@product_search_model)
  end

  test "should destroy product_search_model" do
    assert_difference('ProductSearchModel.count', -1) do
      delete product_search_model_url(@product_search_model)
    end

    assert_redirected_to product_search_models_url
  end
end
