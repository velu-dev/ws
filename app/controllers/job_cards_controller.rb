class JobCardsController < ApplicationController
  before_action :set_job_card, only: [:show, :edit, :update, :destroy]

  # GET /job_cards
  # GET /job_cards.json
  def index
    @job_cards = JobCard.all
  end

  # GET /job_cards/1
  # GET /job_cards/1.json
  def show
  end

  # GET /job_cards/new
  def new
    @customer_vehicles = []
    @job_card = JobCard.new
    @customer = @job_card.build_customer
    @customer.build_address
    @job_card.build_customer_vehicle
  end

  # GET /job_cards/1/edit
  def edit
  end
 
  # POST /job_cards
  # POST /job_cards.json
  def create
    params.permit!
    if params["job_card"]["customer_id"]
      @customer = Customer.find params["job_card"]["customer_id"]
    else
      params["job_card"]["customer_attributes"]["tenant_id"] = current_tenant.id
      params["job_card"]["customer_vehicle_attributes"]["tenant_id"] = current_tenant.id
      @customer = Customer.create(params["job_card"]["customer_attributes"])
    end
    unless params["job_card"]["customer_vehicle_id"]
      params["job_card"]["customer_vehicle_attributes"]["customer_id"] = @customer.id
      @customer_vehicle = CustomerVehicle.create(params["job_card"]["customer_vehicle_attributes"])
    else
      @customer_vehicle = CustomerVehicle.find params["job_card"]["customer_vehicle_id"]

    end
    byebug
      job_card_id = JobCard.last.present? ? JobCard.last.id + 1 : 0
    @job_card = JobCard.new(job_card_params.merge("tenant_id": current_tenant.id).merge("customer_id": @customer.id).merge("customer_vehicle_id": @customer_vehicle.id).merge("jobcard_status": 1))
    @job_card.job_card_number = "JID"+"1000"+ job_card_id.to_s
    respond_to do |format|
      if @job_card.save
        params["particulars"].each do |particular|
          particular["tenant_id"] = current_tenant.id
          particular["job_card_id"] = @job_card.id
          Particular.create(particular)
        end
        format.html { redirect_to job_cards_path, notice: 'Job card was successfully created.' }
        format.json { render :show, status: :created, location: @job_card }
      else
        format.html { render :new }
        format.json { render json: @job_card.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /job_cards/1
  # PATCH/PUT /job_cards/1.json
  def update
    respond_to do |format|
      if @job_card.update(job_card_params)
        format.html { redirect_to @job_card, notice: 'Job card was successfully updated.' }
        format.json { render :show, status: :ok, location: @job_card }
      else
        format.html { render :edit }
        format.json { render json: @job_card.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /job_cards/1
  # DELETE /job_cards/1.json
  def destroy
    @job_card.destroy
    respond_to do |format|
      format.html { redirect_to job_cards_url, notice: 'Job card was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_job_card
      @job_card = JobCard.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def job_card_params
      params.require(:job_card).permit(:tenant_id, :customer_id, :user_id, :customer_vehicle_id, :handover_person, :contact_number, :existing_vehicle_status, :approval_status, :jobcard_status, :fuel_level, :km_traveled)
    end
end
