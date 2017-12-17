class ChangeColumnType < ActiveRecord::Migration[5.1]
  def change
    remove_column :product_search_models, :result
    add_column :product_search_models, :result, :json, array:true, default: []
  end
end
