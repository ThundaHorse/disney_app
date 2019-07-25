require 'rake'
require 'action_cable'

namespace :themeparks do
  desc "Update Attraction wait times"
  task :times do
    sh 'pushd ~/Desktop/Disney_capstone/wait_times && ruby reader.rb'
  end  

  desc "Broadcast sockets"
  task :broadcast => :environment do 
    @attraction = Attraction.all 
    @attraction.each do |attr| 
    ActionCable.server.broadcast "attractions_channel", {
        id: attr.id,
        name: attr.name, 
        status: attr.status,
        anticipated_wait_time: attr.anticipated_wait_time,
        park_id: attr.park_id
      }
    end 
  end
  
  desc "Run all"
  task :all => [:times, :broadcast]
end
