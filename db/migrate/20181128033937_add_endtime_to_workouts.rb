class AddEndtimeToWorkouts < ActiveRecord::Migration[5.2]
  def change
    add_column :workouts, :endtime, :time
  end
end
