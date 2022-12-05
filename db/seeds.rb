# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "seeding"
10.times do
    User.create(username:Faker::Name.name, email: Faker::Internet.free_email, password: "12345")
end
Job.create(job_title: Faker::Job.title,company_name: Faker::Company.name, description:Faker::Job.field, qualifications:Faker::Job.key_skill, deadline: Faker::Date.in_date_period(month: 12) , apply: true  )
Job.create(job_title: Faker::Job.title,company_name: Faker::Company.name, description:Faker::Job.field, qualifications:Faker::Job.key_skill, deadline: Faker::Date.in_date_period(month: 12) , apply: false )
Job.create(job_title: Faker::Job.title,company_name: Faker::Company.name, description:Faker::Job.field, qualifications:Faker::Job.key_skill, deadline: Faker::Date.in_date_period(month: 12) , apply: true )
Job.create(job_title: Faker::Job.title,company_name: Faker::Company.name, description:Faker::Job.field, qualifications:Faker::Job.key_skill, deadline: Faker::Date.in_date_period(month: 12) , apply: true  )
puts "Done seeding"
#Application.create(user_id:1, job_id: 2,)