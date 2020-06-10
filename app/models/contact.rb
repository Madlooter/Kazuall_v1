class Contact < ApplicationRecord
	belongs_to :user, optional: true
	has_many :user_contacts
	has_many :contacts, through: :user_contacts
end
