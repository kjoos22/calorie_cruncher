# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Person.create(
                name: "Kristian",
                inches: 79,
                age: 31,
                gender: "M"
            )

Day.create(
                person_id: 1,
                date: Date.today,
                pounds: 210,
                calories_consumed: 3000,
                calories_expended: 0,
                bmr: 1000,
                tef: 100,
                tdee: 1100
            )


