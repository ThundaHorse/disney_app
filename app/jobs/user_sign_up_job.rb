class UserSignUpJob < ApplicationJob
  queue_as :default

  def perform(*args)
    # root = Rails.root.to_s
    # file = File.import_file("/Users/abrahamkim/Desktop/Disney_capstone/wait_times/reader.rb/")
    result = %x(ruby /Users/abrahamkim/Desktop/Disney_capstone/wait_times/reader.rb)
    
  end
end
