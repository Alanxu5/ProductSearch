class AddPagValColumn < ActiveRecord::Migration[5.1]
  def change
    add_column :product_search_models, :pag_count, :integer, :default => 0
  end
end
