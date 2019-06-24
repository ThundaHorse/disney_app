json.id trip.id
json.user_id trip.user_id
json.max_wait_time trip.max_wait_time
json.formatted_wait_time trip.formatted_wait_time
json.arrival_day trip.arrival_day 
json.departure_day trip.departure_day 

json.dates do 
  json.arrival trip.arrival
  json.departure trip.departure
end 

json.park do 
  json.partial! trip.parks, partial: 'api/parks/park', as: :park
end 

json.things_to_do trip.things_to_do
