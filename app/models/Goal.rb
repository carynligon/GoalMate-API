class Goal < ApplicationRecord
	has_many :users, through: :goals_users
	has_many :posts
end