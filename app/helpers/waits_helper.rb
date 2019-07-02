module WaitHelper 
  require 'active_record' 
  require 'json'
  require 'sqlite3'
  require 'csv'
  
  ENV['DATABASE_URL'] ||="postgres://localhost/disney_app_development?pool=5"

  ActiveRecord::Base.establish_connection(ENV['DATABASE_URL'])

  class Waits 
    def get_info
      db = SQLite3::Database.new('themeparks.db', results_as_hash: true)

      parks = db.execute('SELECT "value" FROM "cache" WHERE key LIKE "%_waittimes%" LIMIT 300 OFFSET 0;')

      holder = [] 

      i = 0
      while i <= 3
        data = JSON.parse(parks[i].values[0])
        data.each do |l| 
          temp = {} 
          # name 
          temp['name'] = l.values[2] 
          # park  
          temp['park'] = l.values[1]
          #waits
          temp['wait_time'] = l.values[4]
          # active 
          temp['is_active?'] = l.values[3]
          # status 
          temp['status'] = l.values[7]
          # last update 
          temp['last_update'] = l.values[6]

          holder << temp 
        end 
        i += 1 
      end 
      holder 
    end 
  end 

  class Attraction < ActiveRecord::Base
  end 

  class UpdateTimes 
    include Waits 
    include Attraction 

    attractions = Attraction.all
    statuses = ['operational', 'maintenance', 'closed']

    times = [] 
    holder.each do |hash| 
      attractions.each do |ride| 
        if ride.name == hash['name']
          ride.update(anticipated_wait_time: hash['wait_time'])
          ride.update(status: statuses.index(hash['status'].downcase))
          p "#{ride.name} | Wait: #{ride.anticipated_wait_time} | #{ride.status}"
          p "Last Update #{ride.updated_at.strftime('%m/%d/%Y | %H:%M:%S %p')}"
          puts 
        end 
      end 
    end 
  end 
end 

