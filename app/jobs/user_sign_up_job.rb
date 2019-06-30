class UserSignUpJob < ApplicationJob
  queue_as :default

  def run
    User.find_each do |user| 
      UserMailer.with(user: user.email).welcome_email.deliver_now
    end 
  end
end
