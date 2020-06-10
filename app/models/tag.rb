class Tag < ApplicationRecord
	belongs_to :annonce, optional: true

	validates :name, length: {in: 3..25}
end
