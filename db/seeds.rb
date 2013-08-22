# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Create an admin user
User.create!(name: "Admin User",
                email: "admin@abc-website.com",
                password: "foobar",
                password_confirmation: "foobar",
                admin: true)

# Create a standard user
User.create!(name: "Jerome Reyes",
                email: "jroomreyes@yahoo.com",
                password: "foobar",
                password_confirmation: "foobar",
                phone: "206-255-255",
                address: "12345 Washington St., Bothell, WA, 98021")
