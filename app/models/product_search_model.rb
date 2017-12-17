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

class ProductSearchModel < ApplicationRecord
end
