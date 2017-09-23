class SpareBillsController < ApplicationController
  before_action :set_spare_bill, only: [:show, :edit, :update, :destroy]

  # GET /spare_bills
  # GET /spare_bills.json
  def index
    @spare_bills = SpareBill.all
  end

  # GET /spare_bills/1
  # GET /spare_bills/1.json
  def show
  end

  # GET /spare_bills/new
  def new
    @spare_bill = SpareBill.new
  end

  # GET /spare_bills/1/edit
  def edit
  end

  # POST /spare_bills
  # POST /spare_bills.json
  def create
    @spare_bill = SpareBill.new(spare_bill_params)

    respond_to do |format|
      if @spare_bill.save
        format.html { redirect_to spare_bills_path, notice: 'Spare bill was successfully created.' }
        format.json { render :show, status: :created, location: @spare_bill }
      else
        format.html { render :new }
        format.json { render json: @spare_bill.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /spare_bills/1
  # PATCH/PUT /spare_bills/1.json
  def update
    respond_to do |format|
      if @spare_bill.update(spare_bill_params)
        format.html { redirect_to @spare_bill, notice: 'Spare bill was successfully updated.' }
        format.json { render :show, status: :ok, location: @spare_bill }
      else
        format.html { render :edit }
        format.json { render json: @spare_bill.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /spare_bills/1
  # DELETE /spare_bills/1.json
  def destroy
    @spare_bill.destroy
    respond_to do |format|
      format.html { redirect_to spare_bills_url, notice: 'Spare bill was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_spare_bill
      @spare_bill = SpareBill.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def spare_bill_params
      params.require(:spare_bill).permit(:job_card_id, :spare_id, :cost_per_unit, :quantity, :sgst, :cgst, :sub_total)
    end
end
