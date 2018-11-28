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