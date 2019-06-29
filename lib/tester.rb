require 'json'
require 'sqlite3'
  
class DataB
  def tester
    db = SQLite3::Database.open('themeparks.db', results_as_hash: true)

    # parks = db.execute('SELECT * FROM cache LIMIT 10;')
    parks = db.execute('SELECT "value" FROM "cache" WHERE key = "WaltDisneyWorldAnimalKingdom_waittimes" LIMIT 2 OFFSET 0;')

    data = JSON.parse(parks[0].values[0])

    new_arr = []

    data.each_with_index do |i| 
      i.each do |k, v|
        test_arr = [] 
        # puts "#{k}: #{v}"
        if k == 'name' 
          test_arr << { k => v }
        elsif k == 'waitTime' 
          test_arr << { k => v }
        end 

        if test_arr.length == 0 
          next 
        else 
          new_arr << test_arr
        end 
      end 
    end 

    final = []

    i = 0 
    while i < new_arr.length
      name = new_arr[i][0]['name']
      time = new_arr[1 + i][0]['waitTime']
      final << { 'name' => name, 'wait' => time }
      i += 2
    end 
    final
  end 
end 

data = DataB.new 
p data.tester