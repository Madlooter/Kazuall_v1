class UserConsole < ApplicationRecord
	belongs_to :user, optional: true
	belongs_to :console
end
