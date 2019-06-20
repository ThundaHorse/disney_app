class CreateInterests < ActiveRecord::Migration[5.2]
  def change
    create_table :interests do |t|
      t.integer :trip_id
      t.integer :attraction_id
      t.datetime :start_time
      t.integer :duration

      t.timestamps
    end
  end
end
