json.id attraction.id
json.park_id attraction.park_id 
json.name attraction.name 
json.status attraction.status 
json.image  attraction.image 
json.anticipated_wait_time  attraction.anticipated_wait_time

json.formatted_wait_time attraction.formatted_wait_time
attraction.park.each do |parks|
  json.park parks.name
end 

# json.park do 
#   json.partial! attraction.park, partial: 'api/parks/park', as: :park
# end 

# In attraction view, if attraction.interest userid = current id, interested = true
# From back-end, can make f-end change easier

json.trip_interests do 
  json.trip_int attraction.interests.find_by(trip_id: current_user.trip_ids)
end 

json.ints attraction.interests.ids

json.interested false 