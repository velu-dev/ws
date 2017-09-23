
class SessionsController < ApplicationController
  skip_before_action :check_session, only:[:new,:create, :tenant_login,:tenant_login_process,:forgot_password, :forgot_password_link, :reset_password ]

  def new
    session[:tenant_id] = session[:tenant_id].nil? ? 1 : session[:tenant_id]
   @tenant = Tenant.find session[:tenant_id]
  end

  def tenant_login
    
  end

  def tenant_login_process
  	tenant = Tenant.find_by_tenant_login_name(params[:tenant_login_name])
  	if tenant
  		session[:tenant_id] = tenant.id
  		redirect_to log_in_path
  	else
      
      flash[:notice] = '<div class="alert alert-danger" role="alert">Invalid organization name</div>'
     redirect_to organization_login_path 
    end
  end

    def forgot_password
      @tenant = Tenant.find session[:tenant_id]
      
    end

    def forgot_password_link
      
      @user = User.find_by_email(params[:Email_id])
      if @user.present?
       
        ForgotPasswordMailer.reset_password_email(@user.id, request.base_url).deliver_now!
      #else
      redirect_to action: 'new'
      else
        render "forgot_password"
      end

    end

    def confirm_password
    	
    end

  def reset_password
    @user = User.find(params[:user_id])
    @tenant = Tenant.find session[:tenant_id]
    
  end
  def reset_password_update
   
  end

  def create
      
  	user = User.authenticate(params[:email], params[:password])
  if user
    session[:user_id] = user.id
    session[:tenant_id] = session[:tenant_id].nil? ? 1 : session[:tenant_id]
    redirect_to dashboard_path, :notice => '<div class="alert alert-success" role="alert" style="width: 220px;">Logged in!</div>'
  else
    #flash.now.alert = '<div class="alert alert-danger" role="alert" style="width: 220px;">Invalid username or password</div>'
    redirect_to action: 'new', flash: '<div class="alert alert-danger" role="alert" style="width: 220px;">Invalid email or password</div>'
  end
  end
  def destroy
  session[:user_id] = nil
  redirect_to log_in_path, :notice => '<div class="alert alert-success" role="alert" style="width: 220px;">Logged out!</div>'
end

end