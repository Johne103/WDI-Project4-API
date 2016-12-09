["users", "products"].each do |table_name|
  ActiveRecord::Base.connection.execute("TRUNCATE #{table_name} RESTART IDENTITY CASCADE")
end

users = User.create!([{
  username: "mickyginger",
  email: "mike.hayden@ga.co",
  password: "password",
  password_confirmation: "password",
  store_name: "Tesco",
	image: "url",
	address: "address",
	latitude: 2.5,
	longitude: 3.0,
	is_store: true
},{
  username: "emilyi",
  email: "emily.isacke@ga.co",
  password: "password",
  password_confirmation: "password",
  store_name: "Tesco",
	image: "url",
	address: "address",
	latitude: 2.5,
	longitude: 3.0,
	is_store: true
},{
  username: "johne103",
  email: "johne103@hotmail.com",
  password: "password",
  password_confirmation: "password",
  store_name: "7eleven",
	image: "url",
	address: "address",
	latitude: 2.5,
	longitude: 3.0,
	is_store: true
}])

Tag.create!([{
  category: "Bread"
},{
  category: "Doughnuts, cookies & Muffins"
},{
  category: "Fresh fruit"
},{
  category: "Drink"
}])

Product.create!([{
  name: "Bread",
  description: "Hovis Soft White Medium Bread 800g",
  image: "url",
  original_price: 0.90,
  offer_price: 0.20,
  end_time: "00:00:00",
  is_available: true,
  quantity: 5,
  user: users[0]
  },{
    name: "Bread",
    description: "Warburton Toastie Sliced White Bread 800g",
    image: "url",
    original_price: 1.00,
    offer_price: 0.30,
    end_time: "00:00:00",
    is_available: true,
    quantity: 2,
    user: users[0]
  },{
    name: "Bread",
    description: "Tesco White Toastie Thick 800g",
    image: "url",
    original_price: 0.50,
    offer_price: 0.10,
    end_time: "00:00:00",
    is_available: true,
    quantity: 2,
    user: users[0]
  },{
    name: "Bread",
    description: "Hovis Wholemeal Medium Bread 800g",
    image: "url",
    original_price: 0.90,
    offer_price: 0.20,
    end_time: "00:00:00",
    is_available: true,
    quantity: 2,
    user: users[0]
  },{
    name: "Fizzy Drink",
    description: "Coca Cola Coke 1.75l",
    image: "url",
    original_price: 1.66,
    offer_price: 1.20,
    end_time: "00:00:00",
    is_available: true,
    quantity: 10,
    user: users[0]
  },{
    name: "Fresh Fruit",
    description: "Gala Apple, minimum 5 pack",
    image: "url",
    original_price: 1.50,
    offer_price: 0.20,
    end_time: "00:00:00",
    is_available: true,
    quantity: 6,
    user: users[0]
  },{
    name: "Fresh Fruit",
    description: "Conference Pears Pack 610g",
    image: "url",
    original_price: 1.29,
    offer_price: 0.20,
    end_time: "00:00:00",
    is_available: true,
    quantity: 2,
    user: users[0]
  },{
    name: "Fresh Fruit",
    description: "Pink Lady Apples minimum 5 pack 670g",
    image: "url",
    original_price: 2.50,
    offer_price: 0.50,
    end_time: "00:00:00",
    is_available: true,
    quantity: 2,
    user: users[0]
  },{
    name: "Fresh Fruit",
    description: "Bananas loose",
    image: "url",
    original_price: 0.13,
    offer_price: 0.05,
    end_time: "00:00:00",
    is_available: true,
    quantity: 12,
    user: users[0]
  },{
    name: "Fresh Fruit",
    description: "Red Seedless Grapes 500g",
    image: "url",
    original_price: 2.00,
    offer_price: 0.50,
    end_time: "00:00:00",
    is_available: true,
    quantity: 2,
    user: users[0]
  },{
    name: "Doughnuts, Cookies & Muffins",
    description: "Jam Doughnuts 5 pack",
    image: "url",
    original_price: 0.65,
    offer_price: 0.10,
    end_time: "00:00:00",
    is_available: true,
    quantity: 3,
    user: users[0]
  },{
    name: "Doughnuts, Cookies & Muffins",
    description: "Milk Chocolate Cookie 5 pack",
    image: "url",
    original_price: 1.00,
    offer_price: 0.20,
    end_time: "00:00:00",
    is_available: true,
    quantity: 3,
    user: users[0]
  },{
    name: "Doughnuts, Cookies & Muffins",
    description: "BlueBerry Muffins 4 pack",
    image: "url",
    original_price: 1.00,
    offer_price: 0.10,
    end_time: "00:00:00",
    is_available: true,
    quantity: 3,
    user: users[0]
  },{
    name: "Doughnuts, Cookies & Muffins",
    description: "M & M Cookies 4 pack",
    image: "url",
    original_price: 1.30,
    offer_price: 0.30,
    end_time: "00:00:00",
    is_available: true,
    quantity: 1,
    user: users[0]
  },{
    name: "Doughnuts, Cookies & Muffins",
    description: "Cadbury Chocolate Mini Rolls 12 pack",
    image: "url",
    original_price: 2.75,
    offer_price: 1.50,
    end_time: "00:00:00",
    is_available: true,
    quantity: 3,
    user: users[0]
  }])
