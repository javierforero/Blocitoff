require 'faker'



50.times do
  pw = Faker::Internet.password(8)
  User.create!(

  name: Faker::Name.name,
  email: Faker::Internet.email,
  password: pw,
  password_confirmation: pw,
  confirmed_at: Faker::Date.backward(16)
  )
end

users = User.all

100.times do

  Item.create!(
  name: Faker::Lorem.sentence,
  user: users.sample
  )
end

100.times do

  Item.create!(
  name: Faker::Lorem.sentence,
  user: users.sample,
  created_at: Faker::Time.between(DateTime.now - 7, DateTime.now - 50)
  )
end

puts "seed finished"
puts "#{User.count} users created"
puts "#{Item.count} items created"
