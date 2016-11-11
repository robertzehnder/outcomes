# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Membership.destroy_all
Cohort.destroy_all

user1 = User.create(email: "rob@gmail.com", password: "password")
user2 = User.create(email: "dan@gmail.com", password: "password")
user3 = User.create(email: "jeff@gmail.com", password: "password")
user4 = User.create(email: "buzz@gmail.com", password: "password")
user5 = User.create(email: "fizz@gmail.com", password: "password")

wdi = Cohort.create(cohort_type: "wdi", name: "13")
uxdi = Cohort.create(cohort_type: "uxdi", name: "4")

wdi_users = User.all.sample 3

wdi_users.each do |user|
  Membership.create(user_id: user.id, cohort_id: wdi.id)
end

uxdi_users = User.all.sample 3

uxdi_users.each do |user|
  Membership.create(user_id: user.id, cohort_id: uxdi.id)
end
