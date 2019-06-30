class SignUpMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.sign_up_mailer.creation.subject
  #
  def creation(user)
    @user = user 
    
    mail to: @user.email,
        subject: "Welcome to Disney Trip Planning!"
  end
end
