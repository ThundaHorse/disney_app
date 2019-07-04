class ChangeAttractionDurationNil < ActiveRecord::Migration[5.2]
  def change
    change_column :attractions, :duration, :integer, null: false
  end
end
