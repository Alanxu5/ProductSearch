class ChangeColumn < ActiveRecord::Migration[5.1]
  def change
    remove_column :product_search_models, :result
    add_column :product_search_models, :result, array:true, default: []
  end
end
