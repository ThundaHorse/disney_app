json.partial! @trip, partial: 'trip', as: :trip

json.attractions do 
  json.attraction @trip.attractions
end 

