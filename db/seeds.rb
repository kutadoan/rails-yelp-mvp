# 1. Clean the database 🗑️
puts "Cleaning database..."
Restaurant.destroy_all

# 2. Create the instances 🏗️
puts "Creating restaurants..."

restaurants = [
  { name: "Pizza East", address: "56A Shoreditch High St, London", category: "italian" },
  { name: "Le Petit Bistrot", address: "12 rue des Lilas, Paris", category: "french" },
  { name: "Sakura Sushi", address: "8 rue du Marché, Lyon", category: "japanese" },
  { name: "Dragon d’Or", address: "25 avenue de la Gare, Lille", category: "chinese" },
  { name: "Chez Léon", address: "18 rue du Midi, Bruxelles", category: "belgian" }
]

restaurants.each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end

# 3. Display a message 🎉
puts "Finished! Created #{Restaurant.count} restaurants."
