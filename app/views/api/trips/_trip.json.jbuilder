json.id trip.id
json.user_id trip.user_id
json.max_wait_time trip.max_wait_time
json.formatted_wait_time trip.formatted_wait_time

json.dates do 
  json.arrival trip.arrival
  json.departure trip.departure
end 

json.attraction do 
  json.partial! trip.attractions, partial: 'api/attractions/attraction', as: :attraction  
end 

json.parks do 
  json.partial! trip.parks, partial: 'api/parks/park', as: :park
end 