class Sem3CacheService
  def cache_query(query, results)
    Rails.logger.info('+++ Caching query and results... +++')
    cache = ProductSearchModel.new
    cache.query = query
    cache.result = results
    cache.save
  end
end
