class AddStartAndEndDateToTrips < ActiveRecord::Migration[5.2]
  def change
    add_column :trips, :arrival_day, :datetime 
    add_column :trips, :departure_day, :datetime
  end
end
