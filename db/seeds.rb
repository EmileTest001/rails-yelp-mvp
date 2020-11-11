# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Restaurant.create(name: "La Tour d'Argent",
      address: "15 Quai de la Tournelle, 75005 Paris",
      phone_number: "01 43 54 23 31",
      category: "french"
)

Restaurant.create(name: "Le Paris Brest",
      address: "Gare SNCF, 35000 Rennes",
      phone_number: "02 99 53 59 89",
      category: "french"
)

Restaurant.create(name: "Banzai !",
      address: "Place du Parlement, 35000 Rennes",
      phone_number: "01 02 03 04 05",
      category: "japanese"
)

Restaurant.create(name: "Dolce Vita",
      address: "42 Palazzo Grassi, 35000 Rennes",
      phone_number: "06 01 01 01 01",
      category: "italian"
)

Restaurant.create(
      name: "Moules & Frites, une fois !",
      address: "Rue Leopold, 35000 Rennes",
      phone_number: "04 02 02 02 02",
      category: "belgian"
)
