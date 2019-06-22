class AddStartAndEndDateToTrips < ActiveRecord::Migration[5.2]
  def change
    add_column :trips, :arrival_day, :date 
    add_column :trips, :departure_day, :date
  end
end
