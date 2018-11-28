class CreateWorkoutsUsersJoinTable < ActiveRecord::Migration[5.2]
  def change
	  create_join_table :workouts, :users do |t|
	    t.index :workout_id
	    t.index :user_id
  end
end
end
