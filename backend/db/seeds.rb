# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Dog.destroy_all

u1 = User.create(username:'admin', password:'WebeAdmin123!', age:10)
u2 = User.create(username:'pleb', password:'pleb', age:5)

dog1 = Dog.create(name:'sky', breed:'germen shepherd', user_id:u1.id)
dog2 = Dog.create(name:'chewy', breed:'chihuahua', user_id:u1.id)