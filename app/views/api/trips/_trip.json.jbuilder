json.id trip.id
json.user_id trip.user_id
json.max_wait_time trip.max_wait_time
json.formatted_wait_time trip.formatted_wait_time
json.arrival_day trip.arrival_day 
json.departure_day trip.departure_day 

# json.dates do 
#   json.arrival trip.arrival
#   json.departure trip.departure
# end 

json.interests do 
  json.interest trip.interests 
  json.attraction Attraction.where(id: trip.attraction_ids)
end 


json.park do 
  json.partial! trip.parks, partial: 'api/parks/park', as: :park
end 
