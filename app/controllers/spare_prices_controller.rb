class SparePricesController < ApplicationController
  before_action :set_spare_price, only: [:show, :edit, :update, :destroy]

  # GET /spare_prices
  # GET /spare_prices.json
  def index
    @spare_prices = SparePrice.all
  end

  # GET /spare_prices/1
  # GET /spare_prices/1.json
  def show
  end

  # GET /spare_prices/new
  def new
    @spare_price = SparePrice.new
  end

  # GET /spare_prices/1/edit
  def edit
  end

  # POST /spare_prices
  # POST /spare_prices.json
  def create
    @spare_price = SparePrice.new(spare_price_params)

    respond_to do |format|
      if @spare_price.save
        format.html { redirect_to spare_prices_path, notice: 'Spare price was successfully created.' }
        format.json { render :show, status: :created, location: @spare_price }
      else
        format.html { render :new }
        format.json { render json: @spare_price.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /spare_prices/1
  # PATCH/PUT /spare_prices/1.json
  def update
    respond_to do |format|
      if @spare_price.update(spare_price_params)
        format.html { redirect_to @spare_price, notice: 'Spare price was successfully updated.' }
        format.json { render :show, status: :ok, location: @spare_price }
      else
        format.html { render :edit }
        format.json { render json: @spare_price.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /spare_prices/1
  # DELETE /spare_prices/1.json
  def destroy
    @spare_price.destroy
    respond_to do |format|
      format.html { redirect_to spare_prices_url, notice: 'Spare price was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_spare_price
      @spare_price = SparePrice.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def spare_price_params
      params.require(:spare_price).permit(:spare_id, :actual_price_per_unit, :sales_price_per_unit, :sgst, :cgst)
    end
end
