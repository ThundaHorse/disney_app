require 'rake'

# require_relative '../wait_times/reader.rb'

namespace :update_times do
  desc "Update Attraction wait times"
  
  task task1: :environment do
    sh 'pushd ~/Desktop/Disney_capstone/wait_times && ruby reader.rb'
  end
  
end

