class Sem3CacheService
  def cache_query(query, results, pag_count)
    Rails.logger.info('+++ Caching query and results... +++')
    cache = ProductSearchModel.new
    cache.query = query
    cache.result = results
    cache.pag_count = pag_count.to_i
    cache.save
  end
end
