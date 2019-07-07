json.id attraction.id
json.park_id attraction.park_id 
json.name attraction.name 
json.status attraction.status 
json.image  attraction.image 
json.anticipated_wait_time  attraction.anticipated_wait_time
json.updated_at attraction.updated_at
json.lat attraction.lat 
json.lng attraction.lng 

json.formatted_wait_time attraction.formatted_wait_time
attraction.park.each do |parks|
  json.park parks.name
end 

json.ints attraction.interests.ids
json.interested false

json.last_update attraction.formatted_update
