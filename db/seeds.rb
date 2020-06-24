# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'


Annonce.destroy_all
User.destroy_all
Badge.destroy_all
Contact.destroy_all
Game.destroy_all
Console.destroy_all
City.destroy_all
Tag.destroy_all
Location.destroy_all
AnnonceTag.destroy_all
ConsoleGame.destroy_all
UserBadge.destroy_all
UserConsole.destroy_all
UserContact.destroy_all
UserGame.destroy_all
UserLocation.destroy_all
PrivateMessage.destroy_all

20.times do
  User.create!(
    name: Faker::Name.first_name,
    surname: Faker::Name.last_name,
    email: Faker::Internet.email,
    nickname: Faker::FunnyName.name,
    password: "admin1",
    password_confirmation: "admin1",
  )
end

20.times do
	Contact.create!(
 		type_contact: ["discord","battlenet","steam","nintendo"].sample,  
 		value: Faker::Artist.name,
 		phone: Faker::PhoneNumber.phone_number,
 		phone_2: Faker::PhoneNumber.cell_phone,
 )
end

20.times do
	Console.create!(
		name: Faker::Game.platform,
		available: Faker::Boolean.boolean(true_ratio: 0.2),
		)
end

20.times do
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

20.times do
	City.create!(
		name: Faker::Address.city,
		country: Faker::Address.country,
		location_id: Location.all.sample,
		)
end

20.times do
	Location.create!(
		street_number: rand(1...105),
		street_name: Faker::Address.street_name,
		post_code: Faker::Address.zip_code,
		city_id: City.all.sample.id,
		user_id: User.all.sample.id,
		)
end

5.times do
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
		user_id: User.all.sample.id,
		console_id: Console.all.sample.id,
		game_id: Game.all.sample.id,
		)
end

20.times do
	AnnonceTag.create!(
		annonce_id: Annonce.all.sample.id,
		tag_id: Tag.all.sample.id,
		)
end

20.times do
	ConsoleGame.create!(
		game_id: Game.all.sample.id,
		console_id: Console.all.sample.id,
		)
end

20.times do
	UserBadge.create!(
		user_id: User.all.sample.id,
		badge_id: Badge.all.sample.id,
		)
end

20.times do
	UserConsole.create!(
		user_id: User.all.sample.id,
		console_id:Console.all.sample.id,
		)
end
20.times do
	UserContact.create!(
		user_id: User.all.sample.id,
		contact_id:Contact.all.sample.id,
		)
end

20.times do
	UserGame.create!(
		user_id: User.all.sample.id,
		game_id: Game.all.sample.id,
		)
end

20.times do
	UserLocation.create!(
		user_id: User.all.sample.id,
		location_id: Location.all.sample.id,
		)
end
