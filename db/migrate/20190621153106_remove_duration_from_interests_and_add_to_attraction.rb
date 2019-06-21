class RemoveDurationFromInterestsAndAddToAttraction < ActiveRecord::Migration[5.2]
  def change
    remove_column :interests, :duration, :integer 
    add_column :attractions, :duration, :integer
  end
end
