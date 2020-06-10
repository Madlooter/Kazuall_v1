class Console < ApplicationRecord
	belongs_to :user, optional: true
	belongs_to :annonce, optional: true
	has_many :console_games
	has_many :games, through: :console_games
end
