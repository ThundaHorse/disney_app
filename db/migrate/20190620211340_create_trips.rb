class CreateTrips < ActiveRecord::Migration[5.2]
  def change
    create_table :trips do |t|
      t.integer :user_id
      t.boolean :kids_present
      t.integer :max_wait_time

      t.timestamps
    end
  end
end
