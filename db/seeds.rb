User.destroy_all
Category.destroy_all
Event.destroy_all
Request.destroy_all

chef = User.create!(email: "luca@luca.com", password: "password", password_confirmation: "password", image: "http://fillmurray.com.300/300", first_name: "Luca", last_name: "Chef")

guest1 = User.create!(email: "richard@richard.com", password: "password", password_confirmation: "password", image: "http://fillmurray.com.300/300", first_name: "Richard", last_name: "Guest")

guest2 = User.create!(email: "alex@alex.com", password: "password", password_confirmation: "password", image: "http://fillmurray.com.300/300", first_name: "Alex", last_name: "Guest")

[
  "Afghan",
  "African",
  "American",
  "Asian",
  "Authentic Pizza",
  "Bagels",
  "Bangladeshi",
  "Brazilian",
  "Breakfast",
  "British",
  "Burgers",
  "Burritos",
  "Cakes",
  "Caribbean",
  "Chicken",
  "Chinese",
  "Crepes",
  "Curry",
  "Desserts",
  "Dim Sum",
  "Egyptian",
  "English",
  "European",
  "Fish & Chips",
  "French",
  "Gluten Free",
  "Gourmet",
  "Greek",
  "Grill",
  "Healthy",
  "Hungarian",
  "Indian",
  "Indonesian",
  "Italian",
  "Jamaican",
  "Japanese",
  "Kebab",
  "Korean",
  "Lebanese",
  "Low-Carb",
  "Lunch",
  "Malaysian",
  "Mediterranean",
  "Mexican",
  "Nepalese",
  "Nigerian",
  "Oriental",
  "Pakistani",
  "Pasta",
  "Peri Peri",
  "Peruvian",
  "Pizza",
  "Sandwiches",
  "Seafood",
  "South Indian",
  "Spanish",
  "Sushi",
  "Tapas",
  "Thai",
  "Turkish",
  "Vegan",
  "Vegetarian",
  "Vietnamese"
].each do |category|
  Category.create!(name: category)
end

event1 = chef.events.create!(date: Date.today.next_week, name: "Party a Luca's house", description: "Better than that place in Spitalfields.", category_id: Category.find_by_name("Italian").id, maximum_guests: 2, house_rules: "You must bring a bottle of wine.", location: "The Relay Building, 1 Commercial St, London E1 7PT", latitude: 51.515529, longitude: -0.072525, price_per_head: 20)

request1 = guest1.sent_requests.create!(event: event1)
request1.status = "accepted"
request1.save

request2 = guest2.sent_requests.create!(event: event1)
request2.status = "accepted"
request2.save
