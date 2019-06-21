json.partial! @trip, partial: 'trip', as: :trip

json.parks do 
  json.park @trip.parks
end 

json.attractions do 
  json.attraction @trip.attractions
end 