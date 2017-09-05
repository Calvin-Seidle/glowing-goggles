# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# user = CreateAdminService.new.call
# puts 'CREATED ADMIN USER: ' << user.email

# Users
User.create!(name:  "Calvin",
			       surname: "Seidle",	
             email: "calvin@littlepig.cc",
             password: "seidlc06",
             admin:     true,
             created_at: Time.zone.now)

99.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@littlepig.cc"
  password = "password"
  User.create!(name:  name,
               email: email,
               password: password,
               created_at: Time.zone.now)
end

# Posts
users = User.order(:created_at).take(6)
50.times do |n|
  title = "Post-#{n+1}"
  caption = "Caption-#{n+1}"
  body = Faker::Lorem.sentence(5)
  users.each { |user| user.posts.create!(title: title, body: body, caption: caption) }
end

# Following relationships
users = User.all
user  = users.first
following = users[2..50]
followers = users[3..40]
following.each { |followed| user.follow(followed) }
followers.each { |follower| follower.follow(user) }
