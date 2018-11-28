class AddStarttimeToWorkouts < ActiveRecord::Migration[5.2]
  def change
    add_column :workouts, :starttime, :time
  end
end
