require 'rake'
# require './app/channels/attractions_channel.rb'
require 'action_cable'

namespace :themeparks do
  desc "Update Attraction wait times"
  task :times do
    # puts "Inside times"
    sh 'pushd ~/Desktop/Disney_capstone/wait_times && ruby reader.rb'
  end  

  desc "Broadcast sockets"
  task :broadcast => :environment do 
    @attraction = Attraction.all 
    puts 'starting'
    @attraction.each do |attr| 
      # p attr.status 
    ActionCable.server.broadcast "attractions_channel", {
        id: attr.id,
        name: attr.name, 
        status: attr.status,
        anticipated_wait_time: attr.anticipated_wait_time,
        park_id: attr.park_id
      }
      puts 'done'
    end 
  end
  
  desc "Run all"
  task :all => [:times, :broadcast]
end
