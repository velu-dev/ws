class ServiceBillsController < ApplicationController
  before_action :set_service_bill, only: [:show, :edit, :update, :destroy]

  # GET /service_bills
  # GET /service_bills.json
  def index
    @service_bills = ServiceBill.all
  end

  # GET /service_bills/1
  # GET /service_bills/1.json
  def show
  end

  # GET /service_bills/new
  def new
    @service_bill = ServiceBill.new
  end

  # GET /service_bills/1/edit
  def edit
  end

  # POST /service_bills
  # POST /service_bills.json
  def create
    @service_bill = ServiceBill.new(service_bill_params)

    respond_to do |format|
      if @service_bill.save
        format.html { redirect_to service_bills_path, notice: 'Service bill was successfully created.' }
        format.json { render :show, status: :created, location: @service_bill }
      else
        format.html { render :new }
        format.json { render json: @service_bill.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /service_bills/1
  # PATCH/PUT /service_bills/1.json
  def update
    respond_to do |format|
      if @service_bill.update(service_bill_params)
        format.html { redirect_to @service_bill, notice: 'Service bill was successfully updated.' }
        format.json { render :show, status: :ok, location: @service_bill }
      else
        format.html { render :edit }
        format.json { render json: @service_bill.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /service_bills/1
  # DELETE /service_bills/1.json
  def destroy
    @service_bill.destroy
    respond_to do |format|
      format.html { redirect_to service_bills_url, notice: 'Service bill was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_service_bill
      @service_bill = ServiceBill.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def service_bill_params
      params.require(:service_bill).permit(:job_card_id, :particular_id, :service_name, :description, :user_id, :cost)
    end
end
