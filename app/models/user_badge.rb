class UserBadge < ApplicationRecord
	belongs_to :user, optional: true
	belongs_to :badge
end
