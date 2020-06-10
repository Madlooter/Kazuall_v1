class City < ApplicationRecord
	belongs_to :user, optional: true
	has_many :locations
	has_many :users, through: :locations
end
