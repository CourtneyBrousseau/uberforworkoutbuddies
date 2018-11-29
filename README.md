# README

# Title: Uber for Workout Buddies

**Team Members**: Courtney Brousseau, Tao Ong, Jason Kim, Alex Yeo

**Demo Link**: ADD LINK HERE

**Prompt**: Uber but for [...]



## Abstract ##


## Models ##
### User ###
* Has name, age, email, phone, Workouts (stored in join table with Workout model).
* User has own account.
* User can create and join workouts.
### Workout ###
* Has Gym, Exercise, date, starttime, endtime, description, Users (stored in join table with User model).
### Gym ###
* Has address, name.
* Belongs to a Workout.
### Exercise ###
* Has type.
* Belongs to a Workout.
## Features: ##
* User can log in
* User can create, join, update, and delete workouts
* Displays workouts user is already in as well as all other workouts
* User can see other users in workout
* Deployed on Heroku


## Division of Labor: ##

**Courtney**: Created models and forms, handled User-Workout join table, seeding, Devise

**Tao**: Styling, organization of pages, added buttons and corresponding routing

**Jason**: Schema design, seeding, demo video, quality assurance

**Alex**: Schema design, model and form updates, Heroku, writeup
