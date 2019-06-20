class CreateAttractions < ActiveRecord::Migration[5.2]
  def change
    create_table :attractions do |t|
      t.integer :park_id
      t.string :name
      t.integer :status, default: 0
      t.string :image
      t.integer :anticipated_wait_time

      t.timestamps
    end
  end
end
