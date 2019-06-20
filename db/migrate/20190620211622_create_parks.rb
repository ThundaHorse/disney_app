class CreateParks < ActiveRecord::Migration[5.2]
  def change
    create_table :parks do |t|
      t.string :name
      t.datetime :opening_time
      t.datetime :closing_time
      t.string :image

      t.timestamps
    end
  end
end
