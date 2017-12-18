class CreateProductSearchModels < ActiveRecord::Migration[5.1]
  def change
    create_table :product_search_models do |t|
      t.string :query
      t.string :result

      t.timestamps
    end
  end
end
