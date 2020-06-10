class Game < ApplicationRecord
	belongs_to :user, optional: true
	belongs_to :annonce, optional: true
	has_many :console_games
	has_many :consoles, through: :console_games
end
