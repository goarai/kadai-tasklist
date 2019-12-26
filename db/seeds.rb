# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(name: 'go', email: 'goarai02151992@gmail.com', password: '0088')
User.create(name: 'arai', email: 'goarai02151992@yahoo.co.jp', password: '0088')
User.create(name: 'saori', email: 'saori@softbank.co.jp', password: '0088')

(1..150).each do |number|
  Task.create(status: 'waiting ' + number.to_s, content: 'content ' + number.to_s, user_id: (number%3)+1)
end