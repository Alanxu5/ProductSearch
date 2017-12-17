class Sem3SearchService
  attr_reader :params

  def initialize(params)
    @params = params
  end

  def execute
    return [] unless params[:search]

    setup
    construct_query
    get_products
  end

  private

  def setup
    @sem3 = Semantics3::Products.new(Rails.application.secrets.sem3_api_key,
                                     Rails.application.secrets.sem3_api_secret)
  end

  def construct_query
    @sem3.products_field('search', params[:search])
  end

  def get_products
    Rails.logger.info('+++ Sem3 API: Getting products... +++')
    arr = Array.new
    r = @sem3.get_products()

    if r['total_results_count'] != 0
      for i in 0..params[:pag].to_i
        temp = @sem3.iterate_products
        if temp != nil
          arr.push(temp['results'])
        end
      end
      arr
    else
      if r['message']
        Rails.logger.debug("+++ Sem3 API Error: #{r['message']} Code: #{r['code']} +++")
      end
      []
    end
  end
end
