class UserContact < ApplicationRecord
	belongs_to :user, optional: true
	belongs_to :contact
end
