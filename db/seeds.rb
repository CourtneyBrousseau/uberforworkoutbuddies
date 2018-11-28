# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# SEED GYMS
Gym.create(name: "Recreational Sports Facility (RSF)", address: "2301 Bancroft Way, Berkeley, CA 94720")
Gym.create(name: "Equinox", address: "2600 Shattuck Ave, Berkeley, CA 94704")
Gym.create(name: "24 Hour Fitness", address: "2072 Addison St, Berkeley, CA 94704")
Gym.create(name: "Downtown Berkeley YMCA", address: "2001 Allston Way, Berkeley, CA 94704")

# SEED EXERCISE TYPES
Exercise.create(type: "HIIT")
Exercise.create(type: "Zumba")
Exercise.create(type: "Weight Lifting")
Exercise.create(type: "Running")
Exercise.create(type: "Swimming")
Exercise.create(type: "Basketball")

# SEED USERS
%w(Ash Gary Misty Brock).each do |name|
  User.create name: name, email: name+"@work.out", password: 'password'
end

# SEED WORKOUTS
Workout.create(exercise: Exercise.where(type: "Zumba").first, gym: Gym.where(name: "Equinox").first, description: "Fun zumba dancing at Equinox.", starttime: Time.at(0).utc, endtime: Time.at(300).utc, date: Date.parse("2018-12-01"))
%w(Ash Gary).each do |name|
  Workout.where(description: "Fun zumba dancing at Equinox.").first.users << User.where(name: name).first
end
Workout.create(exercise: Exercise.where(type: "Weight Lifting").first, gym: Gym.where(name: "24 Hour Fitness").first, description: "Lifting every hour.", starttime: Time.at(18000).utc, endtime: Time.at(21600).utc, date: Date.parse("2018-12-02"))
%w(Gary Misty Brock).each do |name|
  Workout.where(description: "Lifting every hour.").first.users << User.where(name: name).first
end
Workout.create(exercise: Exercise.where(type: "HIIT").first, gym: Gym.where(name: "Downtown Berkeley YMCA").first, description: "Please join me!", starttime: Time.at(11111).utc, endtime: Time.at(22222).utc, date: Date.parse("2018-12-03"))
%w(Misty).each do |name|
  Workout.where(description: "Please join me!").first.users << User.where(name: name).first
end
