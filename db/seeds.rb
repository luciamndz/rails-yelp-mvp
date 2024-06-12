puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = {name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: "4423514822", category: "chinese"}
pizza_east =  {name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number: "4423514922", category: "italian"}
cocono =  {name: "Cocono", address: "Prol. Bernardo Quintana 18, Calesa, 76020 Santiago de Querétaro, Qro.", phone_number: "4423514812", category: "belgian"}
il_duomo = {name: "Il Duomo", address: "Blvd. Bernardo Quintana Arrioja 32, Calesa, 76020 Santiago de Querétaro, Qro.", phone_number: "4423514422", category: "italian"}
nama_sushi = {name: "Nama Sushi", address: "Hacienda el Campanario 99, El Campanario, 76146 Santiago de Querétaro, Qro.", phone_number: "4423514832", category: "japanese"}

[dishoom, pizza_east, cocono, il_duomo, nama_sushi].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
