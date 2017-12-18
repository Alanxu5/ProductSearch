class ProductSearchModelsController < ApplicationController
  before_action :set_product_search_model, only: [:show, :edit, :update, :destroy]

  # GET /product_search_models
  # GET /product_search_models.json
  def index
    @product_search_models = ProductSearchModel.all
  end

  # GET /product_search_models/1
  # GET /product_search_models/1.json
  def show
  end

  # GET /product_search_models/new
  def new
    @product_search_model = ProductSearchModel.new
  end

  # GET /product_search_models/1/edit
  def edit
  end

  # POST /product_search_models
  # POST /product_search_models.json
  def create
    @product_search_model = ProductSearchModel.new(product_search_model_params)

    respond_to do |format|
      if @product_search_model.save
        format.html { redirect_to @product_search_model, notice: 'Product search model was successfully created.' }
        format.json { render :show, status: :created, location: @product_search_model }
      else
        format.html { render :new }
        format.json { render json: @product_search_model.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /product_search_models/1
  # PATCH/PUT /product_search_models/1.json
  def update
    respond_to do |format|
      if @product_search_model.update(product_search_model_params)
        format.html { redirect_to @product_search_model, notice: 'Product search model was successfully updated.' }
        format.json { render :show, status: :ok, location: @product_search_model }
      else
        format.html { render :edit }
        format.json { render json: @product_search_model.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /product_search_models/1
  # DELETE /product_search_models/1.json
  def destroy
    @product_search_model.destroy
    respond_to do |format|
      format.html { redirect_to product_search_models_url, notice: 'Product search model was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product_search_model
      @product_search_model = ProductSearchModel.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_search_model_params
      params.require(:product_search_model).permit(:query, :result, :pag_count)
    end
end
