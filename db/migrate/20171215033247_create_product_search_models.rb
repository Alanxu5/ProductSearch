class CreateProductSearchModels < ActiveRecord::Migration[5.1]
  def change
    create_table :product_search_models do |t|
      t.string :query
      t.array :result

      t.timestamps
    end
  end
end
