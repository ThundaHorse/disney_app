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

# json.trip_interests do 
#   json.trip_int attraction.interests.find_by(trip_id: current_user.trip_ids)
# end 

json.ints attraction.interests.ids
json.interested false

json.last_update attraction.updated_at.getlocal.localtime.strftime('%m/%d/%Y  %I:%M %p')
# json.last_update attraction.updated_at.strftime('%:z')
