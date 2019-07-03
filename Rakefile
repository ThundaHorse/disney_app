# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require_relative 'config/application'

Rails.application.load_tasks

task :run do
  ruby "/Users/abrahamkim/Desktop/Disney_capstone/wait_times/reader.rb"
end


task default: :run do
  puts "Running my Rakefile"
end