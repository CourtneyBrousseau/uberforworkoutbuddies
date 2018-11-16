json.extract! workout, :id, :exercise_id, :gym_id, :datetime, :created_at, :updated_at
json.url workout_url(workout, format: :json)
