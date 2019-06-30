class UserMailer < ApplicationMailer
  default from: ENV["GMAIL_USERNAME"]

  def welcome_email(user)
    super(user) 

    @user = user
    @email = user.email
    mail to: @email, 
          subject: "Welcome to Disney App!"

    # @url  = 'http://example.com/login'
    # mail(to: @user.email, subject: 'Welcome to Disney!') 
    # do |format|
    #   format.html { render 'welcome_email.html.erb' }
    #   format.text { render plain: 'welcome_email.text.erb' }
    # end
  end
end
