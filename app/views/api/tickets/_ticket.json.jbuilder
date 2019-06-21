json.id ticket.id 
json.park_id ticket.park_id
json.trip_id ticket.trip_id
json.park ticket.to_park.name

json.attractions do 
  json.attraction ticket.to_park.attractions
end 
