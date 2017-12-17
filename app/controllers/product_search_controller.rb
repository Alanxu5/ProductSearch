class ProductSearchController < ApplicationController

  # GET /searches
  def index
    search = ProductSearchModel.where('query = ? AND pag_count = ?', params[:search], params[:pag].to_i).last
    if search == nil
      @items = Sem3SearchService.new(params).execute
      Sem3CacheService.new.cache_query(params[:search], @items, params[:pag])
    else
      Rails.logger.info('+++ Retrieving from cache... +++')
      @items = search.result
    end
  end
end
