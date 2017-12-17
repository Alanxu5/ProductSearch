class ProductSearchController < ApplicationController

  # GET /searches
  def index
    search = ProductSearchModel.where('query = ?', params[:search]).last
    if search == nil
      @items = Sem3SearchService.new(params).execute
      Sem3CacheService.new.cache_query(params[:search], [@items])
    else
      Rails.logger.info('+++ Retrieving from cache... +++')
      @items = search.result[0]
    end
  end
end
