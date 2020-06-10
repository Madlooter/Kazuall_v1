class Annonce < ApplicationRecord
	belongs_to :user, optional: true
	has_many :annonce_tags
	has_many :tags, through: :annonce_tags
    validates :title,
            presence: true,
            length: {in: 2..150}
    validates :description,
            presence: true
end
