class User < ApplicationRecord
	has_many :user_badges
	has_many :user_contacts
	has_many :user_locations
	has_many :user_consoles
	has_many :user_games
	has_many :badges, through: :user_badges
	has_many :contacts, through: :user_contacts
	has_many :locations, through: :user_locations
	has_many :consoles, through: :user_consoles
	has_many :games, through: :user_games
	has_many :cities, through: :locations
	has_many :sent_messages, foreign_key: 'sender_id', class_name: "PrivateMessage"
 	has_many :received_messages, foreign_key: 'recipient_id', class_name: "PrivateMessage" 
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
