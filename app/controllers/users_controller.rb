class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  skip_before_action :check_session, only:[:new,:create,:update]
  # GET /users
  # GET /users.json
  def index
    @users = User.all
  end

  # GET /users/1
  # GET /users/1.json
  def show
  end

  # GET /users/new
  def new

    @tenant_login_name = params[:tenant_login_name]
    @user = User.new
    @user.build_address
    @tenant = @user.build_tenant
    @tenant.build_address
    render :layout => false
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users
  # POST /users.json
  def create
    #@address = Address.create(address1:, address2:, city:, state:, country:)
    #@tenant = Tenant.create(tenant_login_name:, display_name:, )
    @user = User.new(user_params)
   
    respond_to do |format|
      if @user.save
        format.html { redirect_to users_path, notice: '<div class="alert alert-success" role="alert">User was successfully created.</div>' }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    respond_to do |format|
    
      if @user.update(user_params)
        format.html { redirect_to log_in_path, notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def address_params
      params.require(:user).permit( :address_attributes=>[:address1,:address2,:city_name,:state_id,:postal_code])
    end
    def tenant_params
      params.require(:user).permit(:tenant_attributes=>[:tenant_login_name,:display_name, :logo])
    end
    def user_params
    
      params.require(:user).permit( :first_name, :last_name, :email, :username, :password, :password_confirmation, :mobile_number, :address_attributes=>[:address1,:address2,:city_name,:state_id,:pincode])
    end
end
