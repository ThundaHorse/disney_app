class AttractionUpdateJob < ApplicationJob
  queue_as :default

  def perform
    puts "Starting"
    puts "=" * 50
    system 'rake update_times:task1'
    puts "=" * 50
    puts "Done"

    self.class.set(:wait => 10.minutes).perform_later
  end
end
