json.id attraction.id
json.park_id attraction.park_id 
json.name attraction.name 
json.status attraction.status 
json.image  attraction.image 
json.anticipated_wait_time  attraction.anticipated_wait_time

json.formatted do 
  json.wait_time attraction.wait_time
end 

json.park do 
  json.partial! attraction.park, partial: 'api/parks/park', as: :park
end 