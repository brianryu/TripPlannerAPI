# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Trip.destroy_all 
Task.destroy_all
Todo.destroy_all

# Users
brian = User.create(username: "brian", password: "hi")
meredith = User.create(username: "meredith", password: "hi")

# Trips
california = Trip.create(name: "cali", img_url: "http://www.californiabeaches.com/wp-content/uploads/2015/04/bigstock-Surf-City-Huntington-Beach-Pie-24727454.jpg")
nyc = Trip.create(name: "nyc", img_url: "https://www.nycgo.com/images/pages/347/river-skyline-views-brooklyn-nyc-photo-julienne-schaer-010__large.jpg")

# Todos
todoBrian = Todo.create(user_id: brian.id, trip_id: california.id, location: "Orange County, CA", start_date: "2019-7-2", end_date: "2019-7-17", priority_lvl: 5)
todoMere = Todo.create(user_id: meredith.id, trip_id: nyc.id, location: "New York, NY", start_date: "2019-10-15", end_date: "2019-10-25", priority_lvl: 4)

# Tasks
cali1 = Task.create(todo_id: todoBrian.id, message: "Go Get Some Tacos!")
cali2 = Task.create(todo_id: todoBrian.id, message: "Universal Studio")
cali3 = Task.create(todo_id: todoBrian.id, message: "Movement Lifestyle Dance Studio")

nyc1 = Task.create(todo_id: todoMere.id, message: "Go Get Some PIZZA!")
nyc2 = Task.create(todo_id: todoMere.id, message: "Statue Of Liberty")
nyc3 = Task.create(todo_id: todoMere.id, message: "Times Square Visit")