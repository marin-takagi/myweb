# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
6.times do |index|
  Work.create(name: "Work#{index}",
   contents: "My work#{index}",
   image: File.open("./test/fixtures/files/myweb01.png"),
   link: "work@example.com")
end
