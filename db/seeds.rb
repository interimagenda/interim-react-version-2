# employers FAKE

Employer.delete_all
Freelancer.delete_all
Job.delete_all

employers = Employer.create! [

  {first_name: "Sjaak", last_name: "de Boer", company_location: "Fantasyland", email: "cheese@cheese.nl", password: "$2a$10$5eoHh6M2q4GjGkHClO.NqebWWhS94D8rNj5Ot6CB2qrbn7IrTfkSa", company_name: "cheeseFarm", business: "Banking", field: "Management"},
  {first_name: "Sjaak", last_name: "de Boer", company_location: "Amsterdam", email: "drugs@trucks.nl", password: "$2a$10$5eoHh6M2q4GjGkHClO.NqebWWhS94D8rNj5Ot6CB2qrbn7IrTfkSa", company_name: "drugsBytrucks", business: "Banking", field: "Management"},
  {first_name: "Sjaak", last_name: "de Boer", company_location: "Rotterdam", email: "info@pizzaflut.nl", password: "$2a$10$5eoHh6M2q4GjGkHClO.NqebWWhS94D8rNj5Ot6CB2qrbn7IrTfkSa", company_name: "Pizzaflut", business: "Banking", field: "Management"},
  {first_name: "Sjaak", last_name: "de Boer", company_location: "Utrecht", email: "info@carshop.nl", password: "$2a$10$5eoHh6M2q4GjGkHClO.NqebWWhS94D8rNj5Ot6CB2qrbn7IrTfkSa", company_name: "Carshop", business: "Banking", field: "Management"},

  {first_name: "Sjaak", last_name: "de Boer", company_location: "Den Bosch", email: "bart@schmitt.nl", password: "$2a$10$5eoHh6M2q4GjGkHClO.NqebWWhS94D8rNj5Ot6CB2qrbn7IrTfkSa", company_name: "BartSchmitt", business: "Banking", field: "Management"},
  {first_name: "Sjaak", last_name: "de Boer", company_location: "Eindhoven", email: "dokter@dokter.nl", password: "$2a$10$5eoHh6M2q4GjGkHClO.NqebWWhS94D8rNj5Ot6CB2qrbn7IrTfkSa", company_name: "doktersAtdokter", business: "Banking", field: "Management"},
  {first_name: "Sjaak", last_name: "de Boer", company_location: "Breda", email: "mister@ed.edu", password: "$2a$10$5eoHh6M2q4GjGkHClO.NqebWWhS94D8rNj5Ot6CB2qrbn7IrTfkSa", company_name: "misterEd", business: "Banking", field: "Management"},
  {first_name: "Sjaak", last_name: "de Boer", company_location: "Hilversum", email: "kabouter@dorp.nl", password: "$2a$10$5eoHh6M2q4GjGkHClO.NqebWWhS94D8rNj5Ot6CB2qrbn7IrTfkSa", company_name: "kabouterDorp", business: "Banking", field: "Management"},
  {first_name: "Sjaak", last_name: "de Boer", company_location: "Kuilenborg", email: "weetikveel@weetikt.nl", password: "$2a$10$5eoHh6M2q4GjGkHClO.NqebWWhS94D8rNj5Ot6CB2qrbn7IrTfkSa", company_name: "weetikt", business: "Banking", field: "Management"}

]

employer1 =  Employer.create!(
first_name: "Sjaak", last_name: "de Boer", company_location: "Kuilenborg", email: "weetikveel@weetik123t.nl", password: "$2a$10$5eoHh6M2q4GjGkHClO.NqebWWhS94D8rNj5Ot6CB2qrbn7IrTfkSa", company_name: "weetikt", business: "Banking", field: "Management")

freelancers = Freelancer.create! [

  {email: "sjaak@mail.com", pay_rate: 50,  education: "MBO amateur surgeon", country: "Fantasyland", password: "blabla1234!", first_name: "Sjaak", last_name: "de Boer", gender: "female",  business: "Banking", field: "Accountancy", availability: "Available"},
  {email: "piet@mail.com", pay_rate: 30, education: "HBO management ", country: "Fantasyland", password: "blabla1234!", first_name: "Piet", last_name: "Pieters", gender: "female",  business: "Retail", field: "Marketing", availability: "Available"},
  {email: "sjors@mail.com", pay_rate: 30, education: "LBO", country: "Fantasyland", password: "blabla1234!", first_name: "Sjors", last_name: "Jacobs", gender: "female",  business: "Legal", field: "Lawyer", availability: "Available"},
  {email: "kees@mail.com", pay_rate: 35, education: "Msc in Winetasting", country: "Fantasyland", password: "blabla1234!", first_name: "Kees", last_name: "Monster", gender: "female", business: "Business", field: "Management", availability: "Available"},

  {email: "marie@mail.com", pay_rate: 70, education: "MBO administrative", country: "Fantasyland", password: "blabla1234!", first_name: "Marie", last_name: "de Draaier", gender: "female", business: "Business", field: "Management", availability: "Available"},
  {email: "linda@mail.com", pay_rate: 40, education: "HBO", country: "Fantasyland", password: "blabla1234!", first_name: "Linda", last_name: "Smit", gender: "female", business: "Retail", field: "Cooking", availability: "Available"},
  {email: "anne@mail.com", pay_rate: 130, education: "Bachelor", country: "Fantasyland", password: "blabla1234!", first_name: "Anne", last_name: "Jansma", gender: "female", business: "Industry", field: "Engineering", availability: "Available"},
  {email: "sofie@mail.com", pay_rate: 230,education: "MBO", country: "Fantasyland", password: "blabla1234!", first_name: "Sofie", last_name: "de Boer", gender: "female", business: "IT", field: "Software development", availability: "Unavailable"},

  {email: "alibaba@mail.com", pay_rate: 110, education: "Kleuterschool", country: "Fantasyland", password: "blabla1234!", first_name: "Baba", last_name: "de Henk", gender: "female", business: "Banking", field: "Management", availability: "Available"},
  {email: "pio@mail.com", pay_rate: 80, education: "MBO", country: "Fantasyland", password: "blabla1234!", first_name: "Pipo", last_name: "de Boer", gender: "female", business: "IT", field: "Hardware", availability: "Available"},
  {email: "oomhenk@mail.com", pay_rate: 25, education: "HBO", country: "Fantasyland", password: "blabla1234!", first_name: "Henk", last_name: "de Boer", gender: "female", business: "Business", field: "Management", availability: "Available"},
  {email: "flierefluit@mail.com", pay_rate: 70, education: "WO", country: "Fantasyland", password: "blabla1234!", first_name: "Flierefluit", last_name: "de Boer", gender: "female", business: "Business", field: "Management", availability: "Available"}

]

Job.create(title: "Butcher", hours_a_week: 40, pay_rate_minimum: 100)

puts "Amount of Employer-seeds #{Employer.count}."
puts "Amount of Freelancer-seeds #{Freelancer.count}."
puts "Amount of Jobs-seeds #{Job.count}."
