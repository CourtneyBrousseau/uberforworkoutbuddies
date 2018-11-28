class Workout < ApplicationRecord
  belongs_to :exercise
  belongs_to :gym
  has_and_belongs_to_many :users
end
