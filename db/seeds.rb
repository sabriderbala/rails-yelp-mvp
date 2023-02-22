puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
banh = { name: "Banh", adress: "81 avenue parmentier", phone_number: "01 23 42 30 23", category: "chinese" }
pizza_east = { name: "Pizza East", adress: "44 avenue parmentier", phone_number: "01 34 23 42 53", category: "italian" }
bistrot = { name: "Bistrot", adress: "139 avenue parmentier", phone_number: "01 89 76 56 98 76", category: "belgian" }
fiorentina = { name: "Fiorentina", adress: "23 avenue parmentier", phone_number: "01 23 78 96 56", category: "italian" }
dishoom = { name: "Dishoom", adress: "89 avenue parmentier", phone_number: "01 98 43 56 78", category: "japanese" }

[ banh, pizza_east, bistrot, fiorentina, dishoom ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end

puts "Finished!"
