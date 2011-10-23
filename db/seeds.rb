# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require Rails.root.join('db', 'faker_pl')

Friend.populate(100..200) do |friend|
  friend.first_name = Faker::Name.first_name
  friend.last_name = Faker::Name.last_name
  friend.phone = Faker::PhoneNumber.pl_phone_number :mobile
  friend.motto = Populator.sentences(1..2)
end
