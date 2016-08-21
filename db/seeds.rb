# employers FAKE

Employer.destroy_all
Freelancer.destroy_all
Job.destroy_all

employer = Employer.create(first_name: "Sjaak", last_name: "de Boer", company_location: "Fantasyland", email: "cheese@cheese.nl", password: "abcd1234", company_name: "cheeseFarm", business: "Banking", field: "Management")
freelancers = Freelancer.create(email: "sjaak@mail.com", pay_rate: 50,  education: "MBO amateur surgeon", country: "Fantasyland", password: "blabla1234!", first_name: "Sjaak", last_name: "de Boer", gender: "female",  business: "Banking", field: "Accountancy", availability: "Available")

Job.create(title: "Butcher", hours_a_week: 40, pay_rate_minimum: 100, employer_id: employer.id)

puts "Amount of Employer-seeds #{Employer.count}."
puts "Amount of Freelancer-seeds #{Freelancer.count}."
puts "Amount of Jobs-seeds #{Job.count}."
