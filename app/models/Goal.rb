class Goal < ApplicationRecord::Base
	has_and_belongs_to_many :users
	has_many :posts
end