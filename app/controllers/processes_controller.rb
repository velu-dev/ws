class ProcessesController < ApplicationController
  def dashboard
  	
  end

  def customer_check
  	if Customer.find(params["customer_id"])
  		@customer = Customer.find(params["customer_id"])
      @customer_vehicles = @customer.customer_vehicles
      
  		#render json: {customer: customer.as_json(include: :address), customer_vehicles: customer_vehicles, message: "success"}
  	else
  		customer = nil
  		render json: customer, message: "fail"
  	end
  end

  def customer_vehicle_check
  		@customer_vehicle = CustomerVehicle.find_by_customer_id(params["customer_id"])
  		#render json: {customer_vehicle: customer_vehicle, message: "success"}
  end

end
