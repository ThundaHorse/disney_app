class FirstJobJob < ApplicationJob
  queue_as :default
  @@count = 0
  
  # after_perform do |job| 
  #   self.class.set(:wait => 2.minutes).perform_later(job.arguments.first)
  # end 

  def perform(*args)
    puts ""
    puts "hello"
    @@count += 1 
    p @@count 
    puts ""
  end

  def count
    @@count
  end 
end
