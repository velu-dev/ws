class SparesInventoriesController < ApplicationController
  before_action :set_spares_inventory, only: [:show, :edit, :update, :destroy]

  # GET /spares_inventories
  # GET /spares_inventories.json
  def index
    @spares_inventories = SparesInventory.all
  end

  # GET /spares_inventories/1
  # GET /spares_inventories/1.json
  def show
  end

  # GET /spares_inventories/new
  def new
    @spares_inventory = SparesInventory.new
  end

  # GET /spares_inventories/1/edit
  def edit
  end

  # POST /spares_inventories
  # POST /spares_inventories.json
  def create
    @spares_inventory = SparesInventory.new(spares_inventory_params)

    respond_to do |format|
      if @spares_inventory.save
        format.html { redirect_to spares_inventories_path, notice: 'Spares inventory was successfully created.' }
        format.json { render :show, status: :created, location: @spares_inventory }
      else
        format.html { render :new }
        format.json { render json: @spares_inventory.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /spares_inventories/1
  # PATCH/PUT /spares_inventories/1.json
  def update
    respond_to do |format|
      if @spares_inventory.update(spares_inventory_params)
        format.html { redirect_to @spares_inventory, notice: 'Spares inventory was successfully updated.' }
        format.json { render :show, status: :ok, location: @spares_inventory }
      else
        format.html { render :edit }
        format.json { render json: @spares_inventory.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /spares_inventories/1
  # DELETE /spares_inventories/1.json
  def destroy
    @spares_inventory.destroy
    respond_to do |format|
      format.html { redirect_to spares_inventories_url, notice: 'Spares inventory was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_spares_inventory
      @spares_inventory = SparesInventory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def spares_inventory_params
      params.require(:spares_inventory).permit(:spare_id, :available_quantity, :alert_minimum_quantity)
    end
end
