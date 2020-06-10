class Location < ApplicationRecord
	belongs_to :user, optional: true
	has_many :cities
	has_many :user_locations
	has_many :users, through: :user_locations
end
