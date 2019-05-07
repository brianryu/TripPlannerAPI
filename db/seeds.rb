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
brian = User.create!(username: "brian", password: "hi")
meredith = User.create!(username: "meredith", password: "hi")

# Trips
california = Trip.create!(name: "California", img_url: "http://www.californiabeaches.com/wp-content/uploads/2015/04/bigstock-Surf-City-Huntington-Beach-Pie-24727454.jpg")
nyc = Trip.create!(name: "New York City", img_url: "https://www.nycgo.com/images/pages/347/river-skyline-views-brooklyn-nyc-photo-julienne-schaer-010__large.jpg")
florida = Trip.create!(name: "Florida", img_url: "http://52.24.98.51/wp-content/uploads/2017/09/Miami-Beach-Florida.jpg")
texas = Trip.create!(name: "Texas", img_url: "https://www.visittheusa.com/sites/default/files/styles/hero_m_1300x700/public/images/hero_media_image/2016-10/c4b4a5c42027b53684e9ac22c56760ef.jpeg?itok=LgvWWkkJ")
chicago = Trip.create!(name: "Chicago", img_url: "https://wpr-public.s3.amazonaws.com/wprorg/articles/2018/03/275280-chicago.jpg")

# Todos
todoBrian1 = Todo.create!(user_id: brian.id, trip_id: california.id, location: "Orange County, CA", start_date: "2019-7-2", end_date: "2019-7-17", priority_lvl: 5)
todoBrian2 = Todo.create!(user_id: brian.id, trip_id: florida.id, location: "South Beach", start_date: "2019-5-10", end_date: "2019-5-15", priority_lvl: 3)
todoBrian3 = Todo.create!(user_id: brian.id, trip_id: chicago.id, location: "Chicago", start_date: "2020-1-1", end_date: "2020-1-18", priority_lvl: 1)
todoMere1 = Todo.create!(user_id: meredith.id, trip_id: nyc.id, location: "New York, NY", start_date: "2019-10-15", end_date: "2019-10-25", priority_lvl: 4)
todoMere2 = Todo.create!(user_id: meredith.id, trip_id: texas.id, location: "Austin, TX", start_date: "2019-2-1", end_date: "2019-2-6", priority_lvl: 2)


# Tasks
cali1 = Task.create!(todo_id: todoBrian1.id, message: "Go Get Some Tacos!")
cali2 = Task.create!(todo_id: todoBrian1.id, message: "Universal Studio")
cali3 = Task.create!(todo_id: todoBrian1.id, message: "Movement Lifestyle Dance Studio")

nyc1 = Task.create!(todo_id: todoMere1.id, message: "Go Get Some PIZZA!")
nyc2 = Task.create!(todo_id: todoMere1.id, message: "Statue Of Liberty")
nyc3 = Task.create!(todo_id: todoMere1.id, message: "Times Square Visit")

flo1 = Task.create!(todo_id: todoBrian2.id, message: "BEACH!")
flo2 = Task.create!(todo_id: todoBrian2.id, message: "MORE BEACH")
flo3 = Task.create!(todo_id: todoBrian2.id, message: "MOREEEE BEACH")

tex1 = Task.create!(todo_id: todoMere2.id, message: "MERE!")
tex2 = Task.create!(todo_id: todoMere2.id, message: "DITH")
tex3 = Task.create!(todo_id: todoMere2.id, message: "WAS HERE")

chi1 = Task.create!(todo_id: todoBrian3.id, message: "Go Get Some PIZZA!")
chi2 = Task.create!(todo_id: todoBrian3.id, message: "BRIAN")
chi3 = Task.create!(todo_id: todoBrian3.id, message: "SPRING AWAKENING")
