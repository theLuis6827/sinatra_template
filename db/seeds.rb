Restaurant.destroy_all
Food.destroy_all

freddys = Restaurant.create(name: "Freddy's", category: "burger joint")
whataburger = Restaurant.create(name: "Whataburger", category: "fast food")
krusty = Restaurant.create(name: "Krusty Krab", category: "food destination")

Food.create(name: "burger/hotdog combo", restaurant_id: freddys.id )
Food.create(name: "chicken tender bites", restaurant_id: whataburger.id )
Food.create(name: "Krabby Patty", restaurant_id: krusty.id )
Food.create(name: "Spicy chicken sandwich", restaurant_id: whataburger.id )
Food.create(name: "ice cream", restaurant_id: freddys.id )
Food.create(name: "Patty Melt", restaurant_id: whataburger.id )