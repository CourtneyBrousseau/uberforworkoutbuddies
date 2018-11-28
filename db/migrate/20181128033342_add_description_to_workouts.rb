class AddDescriptionToWorkouts < ActiveRecord::Migration[5.2]
  def change
    add_column :workouts, :description, :string
  end
end
