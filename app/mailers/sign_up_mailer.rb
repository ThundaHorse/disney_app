class SignUpMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.sign_up_mailer.creation.subject
  #
  def creation(user)
    @user = user 
    attachments.inline['mickey.png'] = File.read('/Users/abrahamkim/Desktop/Disney_capstone/disney_vue_app/public/disney/mickey.png') 
    

    mail to: @user.email,
        subject: "Welcome to Disney Trip Planning!"
  end

end
