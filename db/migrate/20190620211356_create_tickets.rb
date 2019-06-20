class CreateTickets < ActiveRecord::Migration[5.2]
  def change
    create_table :tickets do |t|
      t.integer :park_id
      t.integer :trip_id

      t.timestamps
    end
  end
end
