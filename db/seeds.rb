# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# 管理者側のpassword
Admin.create(email: "eigo@eigo.com",password:"123456")

User.create(name: "kazueigo", email: "kazukipump7@gmail.com", is_deleted: false, password: "123456")