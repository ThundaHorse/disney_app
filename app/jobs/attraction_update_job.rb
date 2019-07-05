class AttractionUpdateJob < ApplicationJob
  queue_as :default

  def perform
    puts "Starting"
    puts "=" * 50
    # system 'rake update:themeparks:times'
    # system 'rake update:themeparks:timeSockets'
    system 'rake themeparks:all'
    puts "=" * 50
    puts "Done"

    self.class.set(:wait => 10.minutes).perform_later
  end
end
