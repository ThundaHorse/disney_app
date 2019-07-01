json.id interest.id
json.trip_id interest.trip_id
json.attraction_id interest.attraction_id
json.start_time interest.start_time

json.formatted do 
  json.formatted_start_time interest.formatted_start_time
end 


# json.attraction interest.attraction 
# json.park interest.attraction.park 


interest.attractions_associated.each do |ride| 
  json.ride ride
  json.park ride.park[0]
end 

# json.interested_ride interest.attractions_associated
