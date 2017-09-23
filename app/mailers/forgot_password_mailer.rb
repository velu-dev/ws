class ForgotPasswordMailer < ApplicationMailer

	 default from: 'erbmailer@gmail.com'
 
  def reset_password_email(user_id, base_url)
    @user = User.find user_id
    @base_url = base_url
    # @url  = 'http://example.com/login'
    mail(to: @user.email, subject: 'Welcome to My Awesome Site')
  end
end
