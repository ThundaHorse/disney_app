class DeleteTestData < ActiveRecord::Migration[5.2]
  def change
    drop_table :test_data
  end
end
