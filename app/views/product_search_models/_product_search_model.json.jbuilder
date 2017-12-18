json.extract! product_search_model, :id, :query, :result, :pag_count, :created_at, :updated_at
json.url product_search_model_url(product_search_model, format: :json)
