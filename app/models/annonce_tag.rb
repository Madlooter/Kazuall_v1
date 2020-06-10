class AnnonceTag < ApplicationRecord
	belongs_to :annonce, optional: true
	belongs_to :tag 
end
