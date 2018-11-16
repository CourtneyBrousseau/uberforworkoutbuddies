class Workout < ApplicationRecord
  belongs_to :exercise
  belongs_to :gym
end
