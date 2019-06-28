class FirstJobJob < ApplicationJob
  queue_as :default
  
  after_perform do |job| 
    self.class.set(:wait => 1.minutes).perform_later(job.arguments.first)
  end 

  def count 
    count = 0 
  end 

  def perform(*args)
    puts ""
    puts "hello"
    self.count += 1 
    p self.count 
    puts ""
  end
end
