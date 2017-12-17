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

class ProductSearchModelTest < ActiveSupport::TestCase
  test "good query" do
    query = ProductSearchModel.new(query: 'Telescope', result: {}, pag_count: 3)
    assert query.valid?
  end

  test "bad query" do
    query = ProductSearchModel.new(query: 'Telescope', pag_count: "3")
    assert query.valid?
  end
end
