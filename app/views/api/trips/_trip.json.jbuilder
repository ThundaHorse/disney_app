json.id trip.id
json.user_id trip.user_id
json.max_wait_time trip.max_wait_time

json.attraction do 
  json.partial! trip.attractions, partial: 'api/attractions/attraction', as: :attraction 
end 

json.parks do 
  json.partial! trip.parks, partial: 'api/parks/park', as: :park
end 