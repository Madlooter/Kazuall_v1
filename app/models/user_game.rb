class UserGame < ApplicationRecord
	belongs_to :user, optional: true
	belongs_to :game
end
