# README

# Title: Uber for Workout Buddies

**Team Members**: Courtney Brousseau, Tao Ong, Jason Kim, Alex Yeo

**Demo Link**: https://www.youtube.com/watch?v=NqSZpoWa4Sk

**Prompt**: Uber but for [...]

## Abstract ##
Have you ever wanted to work out but did not have anyone to go with? Well we have the solution for you! Uber for Workout Buddies is a web application that allows users to find other workout buddies. Users can specify the gym, type of workout, date and time of the workout, and a description of the workout. Additionally, users can join workouts that have already been created by other users. Happy working out!

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
* User can create, join, update, and leave workouts
* Displays workouts user is already in as well as all other workouts
* User can see other users in workout
* Deployed on Heroku


## Division of Labor: ##

**Courtney**: Created models and forms, handled User-Workout join table, seeding, Devise

**Tao**: Styling, organization of pages, added buttons and corresponding routing

**Jason**: Schema design, seeding, demo video, quality assurance, added feature for leaving workout

**Alex**: Schema design, model and form updates, modified routing, Heroku, writeup
