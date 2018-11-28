class RemoveDatetimeFromWorkouts < ActiveRecord::Migration[5.2]
  def change
    remove_column :workouts, :datetime, :datetime
  end
end
