class UserGoal < ApplicationRecord::Base
  belongs_to :user
  belongs_to :goal
end