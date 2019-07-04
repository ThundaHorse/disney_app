require 'rake'
# require './app/channels/attractions_channel.rb'
require 'action_cable'

namespace :themeparks do
  desc "Update Attraction wait times"
  task :times do
    # puts "Inside times"
    sh 'pushd ~/Desktop/Disney_capstone/wait_times && ruby reader.rb'
  end  

  desc "Broadcast sockets"–
  task :broadcast => :environment do 
    
  end
  
  desc "Run all"
  task :all => [:times, :broadcast]
end
