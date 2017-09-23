class PurchaseLogsController < ApplicationController
  before_action :set_purchase_log, only: [:show, :edit, :update, :destroy]

  # GET /purchase_logs
  # GET /purchase_logs.json
  def index
    @purchase_logs = PurchaseLog.all
  end

  # GET /purchase_logs/1
  # GET /purchase_logs/1.json
  def show
  end

  # GET /purchase_logs/new
  def new
    @purchase_log = PurchaseLog.new
    @purchase = Spare.all.pluck(:id, :item_name)
  end

  # GET /purchase_logs/1/edit
  def edit
  end

  # POST /purchase_logs
  # POST /purchase_logs.json
  def create
    params.permit!
    params[:inventory].map do|ii|
      next if ii["spare_id"].empty?
    @purchase_log = PurchaseLog.new(ii)
    @purchase_log.user_id = params[:user_id]
    @purchase_log.save
    @spares_inventory = SparesInventory.find_by(spare_id: @purchase_log.spare_id)
    @spares_inventory.update(available_quantity: @spares_inventory.available_quantity.to_i + @purchase_log.quantity.to_i )
    end
  redirect_to inventory_path#, notice: 'Purchase log was successfully created.' 
  end

  # PATCH/PUT /purchase_logs/1
  # PATCH/PUT /purchase_logs/1.json
  def update
    respond_to do |format|
      if @purchase_log.update(purchase_log_params)
        format.html { redirect_to @purchase_log, notice: 'Purchase log was successfully updated.' }
        format.json { render :show, status: :ok, location: @purchase_log }
      else
        format.html { render :edit }
        format.json { render json: @purchase_log.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /purchase_logs/1
  # DELETE /purchase_logs/1.json
  def destroy
    @purchase_log.destroy
    respond_to do |format|
      format.html { redirect_to purchase_logs_url, notice: 'Purchase log was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_purchase_log
      @purchase_log = PurchaseLog.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def purchase_log_params
      params.require(:purchase_log).permit(:spare_id, :user_id, :cost_per_unit, :quantity, :total_cost, :purchased_from, :sgst, :cgst)
    end
end
