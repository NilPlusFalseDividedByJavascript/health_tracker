# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

activities = ["Cardio", "Swimming", "Running", "Hiking", "Walking", "Swimming", "Biking",
  "Aerobics", "Sit-ups"]

activities.each do |a|
  ExerciseType.create!(name: a)
end


5.times do
  ConsumedCal.create!(cal_consume: rand(500..3000), consume_date: Faker::Date.backward(14) )
end

5.times do
  Excercise.create!(cal_burn: rand(0..2000), excercise_type_id: rand(1..9), burn_date: Faker::Date.backward(14)   )
end
