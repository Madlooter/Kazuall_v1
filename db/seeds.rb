# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

10.times do
  User.create!(
    name: Faker::Name.first_name,
    surname: Faker::Name.last_name,
    email: Faker::Internet.email,
    password: "admin1",
    password_confirmation: "admin1",
  )
end

10.times do
	Contact.create!(
 		type_contact: ["discord","battlenet","steam","nintendo"].sample,  
 		value: Faker::Artist.name,
 		phone: Faker::PhoneNumber.phone_number,
 		phone_2: Faker::PhoneNumber.cell_phone,
 )
end

10.times do
	Console.create!(
		name: Faker::Game.platform,
		available: Faker::Boolean.boolean(true_ratio: 0.2),
		)
end

10.times do
	Game.create!(
		name: Faker::Game.title,
		available: Faker::Boolean.boolean(true_ratio: 0.2),
		)
end

5.times do
	Badge.create!(
		name: ["Bois","Bronze","Argent","Or", "Platine"].sample,
		point: rand(1...1500)
		)
end

10.times do
	City.create!(
		name: Faker::Address.city,
		country: Faker::Address.country,
		)
end

10.times do
	Location.create!(
		street_number: rand(1...105),
		street_name: Faker::Address.street_name,
		post_code: Faker::Address.zip_code,
		city_id: [1,2,3,4,5,6,7,8,9,10].sample,
		)
end

10.times do
	Tag.create!(
		name: ["Event","Achat/Revente","Recherche de groupe","Location", "Coaching"].sample,
		)
end

20.times do
	Annonce.create!(
		description: Faker::Hipster.paragraph(sentence_count: 4),
		title:  Faker::Hipster.sentence,
		price: Faker::Commerce.price,
		event_date: Faker::Date.forward(days: 23),
		)
end

20.times do
	AnnoncesTag.create!(
		annonce_id: rand(1...20),
		tag_id: rand(1...5),
		)
end

10.times do
	GamesConsole.create!(
		game_id: [1,2,3,4,5,6,7,8,9,10].sample,
		console_id: [1,2,3,4,5,6,7,8,9,10].sample,
		)
end

10.times do
	UsersBadge.create!(
		user_id: [1,2,3,4,5,6,7,8,9,10].sample,
		badge_id:[1,2,3,4,5,6,7,8,9,10].sample,
		)
end

10.times do
	UsersConsole.create!(
		user_id: [1,2,3,4,5,6,7,8,9,10].sample,
		console_id:[1,2,3,4,5,6,7,8,9,10].sample,
		)
end
10.times do
	UsersContact.create!(
		user_id: [1,2,3,4,5,6,7,8,9,10].sample,
		contact_id:[1,2,3,4,5,6,7,8,9,10].sample,
		)
end

10.times do
	UsersGame.create!(
		user_id: [1,2,3,4,5,6,7,8,9,10].sample,
		game_id:[1,2,3,4,5,6,7,8,9,10].sample,
		)
end

10.times do
	UsersLocation.create!(
		user_id: [1,2,3,4,5,6,7,8,9,10].sample,
		location_id:[1,2,3,4,5,6,7,8,9,10].sample,
		)
end
