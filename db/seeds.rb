["users", "products", "products_tags"].each do |table_name|
  ActiveRecord::Base.connection.execute("TRUNCATE #{table_name} RESTART IDENTITY CASCADE")
end

users = User.create!([{
  username: "mickyginger",
  email: "mike.hayden@ga.co",
  password: "password",
  password_confirmation: "password",
  address: "4 Wapping Lane, London, E1W 2RG",
	is_store: false
},{
  username: "emilyi",
  email: "emily.isacke@ga.co",
  password: "password",
  password_confirmation: "password",
  address: "Bethnal Green, London",
	is_store: false
},{
  username: "johne103",
  email: "johne103@hotmail.com",
  password: "password",
  password_confirmation: "password",
  address: "25 Hayton Close, Luton, LU3 4HD",
	is_store: false
},{
  username: "Iceland",
  email: "help@iceland.co.uk",
  password: "password",
  password_confirmation: "password",
  store_name: "Iceland, Park St, Luton",
	image: "http://google.localdataimages.com/800_WM/2325/23252954.jpg",
	address: "51 Park Street, Luton, LU1 3JX",
  latitude: 51.88,
  longitude: -0.41,
  is_store: true,
  open_from: "08:00",
  open_until: "21:00",
  website: "https://groceries.iceland.co.uk/special-offers",
  phone_number: "01582 736357"
},{
  username: "Sainsbury's Local, Mansell St",
  email: "sainsbury1@example.com",
  password: "password",
  password_confirmation: "password",
  store_name: "Sainsbury's Local, Mansell St",
	image: "http://google.localdataimages.com/800_WM/2325/23252954.jpg",
	address: "33 Mansell Street, London",
  latitude: 51.51,
  longitude: -0.08,
	is_store: true,
  open_from: "07:00",
  open_until: "23:00",
  website: "http://wwww.sainsburys.co.uk",
  phone_number: "020 7941 1000"
},{
  username: "Sainsbury's Local, Bell Lane",
  email: "sainsbury2@example.com",
  password: "password",
  password_confirmation: "password",
  store_name: "Sainsbury's Local, Bell Lane",
	image: "http://google.localdataimages.com/800_WM/2325/23253170.jpg",
	address: "31 Bell Lane, London",
  latitude: 51.52,
  longitude: -0.08,
	is_store: true,
  open_from: "07:00",
  open_until: "23:00",
  website: "http://wwww.sainsburys.co.uk",
  phone_number: "020 7441 4520"
},{
  username: "Tesco Express, Commercial St",
  email: "tesco1@example.com",
  password: "password",
  password_confirmation: "password",
  store_name: "Tesco Express, Commercial St",
	image: "http://google.localdataimages.com/800_WM/2276/22765048.jpg",
	address: "Aldgate East Tube, Commercial Street, London, UK",
  latitude: 0.0,
  longitude: 0.0,
	is_store: true,
  open_from: "07:00",
  open_until: "23:00",
  website: "http://wwww.tesco.com",
  phone_number: "0330 123 4040"
},{
  username: "Tesco Express, Mansell St",
  email: "tesco2@example.com",
  password: "password",
  password_confirmation: "password",
  store_name: "Tesco Express, Mansell St",
	image: "http://google.localdataimages.com/800_WM/2325/23250475.jpg",
	address: "90 Mansell St, London, E1 8AL",
  latitude: 0.0,
  longitude: 0.0,
	is_store: true,
  open_from: "07:00",
  open_until: "23:00",
  website: "http://wwww.tesco.com",
  phone_number: "0330 123 4040"
},{
  username: "Tesco Express, Black Lion House",
  email: "tesco3@example.com",
  password: "password",
  password_confirmation: "password",
  store_name: "Tesco Express, Black Lion House",
	image: "http://google.localdataimages.com/800_WM/2252/22525270.jpg",
	address: "45 WhiteChapel Road, London, UK",
  latitude: 0.0,
  longitude: 0.0,
	is_store: true,
  open_from: "06:00",
  open_until: "00:00",
  website: "http://wwww.tesco.com",
  phone_number: "0330 123 4040"
},{
  username: "Costcutter",
  email: "costcutter@example.com",
  password: "password",
  password_confirmation: "password",
  store_name: "Costcutter, WhiteChapel",
	image: "http://google.localdataimages.com/800_WM/2315/23154352.jpg",
	address: "92 WhiteChapel High Street, London E1 7RA",
  latitude: 0.0,
  longitude: 0.0,
	is_store: true,
  open_from: "07:00",
  open_until: "23:00",
  website: "http://wwww.costcutter.com",
  phone_number: "020 7941 1000"
},{
  username: "Quality Foods",
  email: "qaulityfoods@example.com",
  password: "password",
  password_confirmation: "password",
  store_name: "Quality Foods Store, St Mark St",
	image: "http://www.qualityfoodlondon.co.uk/wp-content/uploads/2016/04/IMG_2702.png",
	address: "8 St Mark Street",
  latitude: 0.0,
  longitude: 0.0,
	is_store: true,
  open_from: "07:00",
  open_until: "23:00",
  website: "http://www.qualityfoodlondon.co.uk/",
  phone_number: "020 7480 7460"
}

])

Tag.create!([{
  category: "Bread"
},{
  category: "Cake"
},{
  category: "Fruit"
},{
  category: "Drink"
}])

Product.create!([{
    name: "Bread: Hovis Soft White Medium Bread 800g",
    description: "Ingredients:
Wheat Flour (with added Calcium, Iron, Niacin, Thiamin), Water, Yeast, Soya Flour, Salt, Wheat Protein, Vegetable Fat (Palm, Rapeseed), Preservative: E282, Emulsifiers: E471, E472e, E481, Flour Treatment Agent: Ascorbic Acid",
    image: "http://img.tesco.com/Groceries/pi/131/5010003000131/IDShot_540x540.jpg",
    original_price: 0.90,
    offer_price: 0.20,
    end_time: Date.new(2016, 12, 16),
    is_available: true,
    quantity: 5,
    user: users[4],
    category: "Bread"
  },{
    name: "Bread: Warburton Toastie Sliced White Bread 800g",
    description: "Ingredients:
Wheat Flour [with Calcium, Iron, Niacin (B3) and Thiamin (B1)], Water, Yeast , Salt, Vegetable Oil (Rapeseed, Sustainable Palm), Soya Flour, Emulsifiers: E481, E472e, Preservative: Calcium Propionate (added to inhibit mould growth), Flour Treatment Agent: Ascorbic Acid (Vitamin C)",
    image: "http://img.tesco.com/Groceries/pi/121/5010044000121/IDShot_540x540.jpg",
    original_price: 1.00,
    offer_price: 0.30,
    end_time: Date.new(2016, 12, 16),
    is_available: true,
    quantity: 2,
    user: users[4],
    category: "Bread"
  },{
    name: "Bread: Tesco White Toastie Thick 800g",
    description: "Tngredients:
Wheat Flour (Wheat Flour, Calcium Carbonate, Iron, Niacin, Thiamin), Water, Yeast, Salt, Rapeseed Oil, Spirit Vinegar, Emulsifiers (Mono- and Di-Acetyltartaric Esters of Mono- and Di-Glycerides of Fatty Acids, Sodium Stearoyl-2-Lactylate, Mono- and Di-Glycerides of Fatty Acids), Soya Flour, Preservative (Calcium Propionate), Palm Oil, Flour Treatment Agent (Ascorbic Acid)",
    image: "http://img.tesco.com/Groceries/pi/672/5054268870672/IDShot_540x540.jpg",
    original_price: 0.50,
    offer_price: 0.10,
    end_time: Date.new(2016, 12, 19),
    is_available: true,
    quantity: 2,
    user: users[4],
    category: "Bread"
  },{
    name: "Bread: Hovis Wholemeal Medium Bread 800g",
    description: "Ingredients:
Wholemeal Flour (Wheat), Water, Caramelised Sugar, Yeast, Wheat Protein, Soya Flour, Salt, Wheat Flour (with added Calcium, Iron, Niacin, Thiamin), Emulsifiers: E471, E472e, E481, Preservative: E282, Vegetable Fat (Palm, Rapeseed), Flour Treatment Agent: Ascorbic Acid, Wheat Starch, This product contains 62% Wholegrains from Wholemeal Flour",
    image: "http://img.tesco.com/Groceries/pi/339/5010003000339/IDShot_540x540.jpg",
    original_price: 0.90,
    offer_price: 0.20,
    end_time: Date.new(2016, 12, 19),
    is_available: true,
    quantity: 2,
    user: users[4],
    category: "Bread"
  },{
    name:  "Drink: Coca Cola Coke 1.75l",
    description: "Sparkling Low Calorie Soft Drink with Vegetable Extracts with Sweeteners

Love it light? Add some sparkle to your day, minus the calories with Diet Coke

Diet Coke is a sugar free, low calorie soft drink.
No Sugar
No Calories
Gluten-free, dairy-free and nut-free
Contains vegetables extracts and sweeteners
",
    image: "http://img.tesco.com/Groceries/pi/988/5449000601988/IDShot_540x540.jpg",
    original_price: 1.66,
    offer_price: 1.20,
    end_time: Date.new(2016, 12, 16),
    is_available: true,
    quantity: 10,
    user: users[4],
    category: "Drink"
  },{
    name: "Fresh Fruit: Gala Apple, minimum 5 pack",
    description: "Storage:
For maximum freshness, best kept refrigerated. Wash before use.",
    image: "http://img.tesco.com/Groceries/pi/659/0000003249659/IDShot_540x540.jpg",
    original_price: 1.50,
    offer_price: 0.20,
    end_time: Date.new(2016, 12, 17),
    is_available: true,
    quantity: 6,
    user: users[4],
    category: "Fruit"
  },{
    name: "Fresh Fruit: Conference Pears Pack 610g",
    description: "Storage:
To ripen pears, place in a fruit bowl at room temperature. To test ripeness, gently press your thumb near to the top of the pear, just below the stalk.  When the flesh gives, the pear is ripe and ready to eat. For maximum freshness, best kept refrigerated. Wash before use.",
    image: "http://img.tesco.com/Groceries/pi/598/0000003249598/IDShot_540x540.jpg",
    original_price: 1.29,
    offer_price: 0.20,
    end_time: Date.new(2016, 12, 17),
    is_available: true,
    quantity: 2,
    user: users[4],
    category: "Fruit"
  },{
    name: "Fresh Fruit: Pink Lady Apples minimum 5 pack 670g",
    description: "Storage:
For maximum freshness, best kept refrigerated. Wash before use.",
    image: "http://img.tesco.com/Groceries/pi/833/0000003249833/IDShot_540x540.jpg",
    original_price: 2.50,
    offer_price: 0.50,
    end_time: Date.new(2016, 12, 16),
    is_available: true,
    quantity: 2,
    user: users[4],
    category: "Fruit"
  },{
    name: "Fresh Fruit: Bananas loose",
    description: "Storage:
For maximum freshness, store in a cool dry place. Do not refrigerate.
",
    image: "http://img.tesco.com/Groceries/pi/000/0261480000000/IDShot_540x540.jpg",
    original_price: 0.13,
    offer_price: 0.05,
    end_time: Date.new(2016, 12, 16),
    is_available: true,
    quantity: 12,
    user: users[4],
    category: "Fruit"
  },{
    name: "Fresh Fruit: Red Seedless Grapes 500g",
    description: "Storage:
For maximum freshness, best kept refrigerated. Wash before use.",
    image: "http://img.tesco.com/Groceries/pi/140/0000010066140/IDShot_540x540.jpg",
    original_price: 2.00,
    offer_price: 0.50,
    end_time: Date.new(2016, 12, 18),
    is_available: true,
    quantity: 2,
    user: users[8],
    category: "Fruit"
  },{
    name: "Doughnuts, Cookies & Muffins: Jam Doughnuts 5 pack",
    description: "Ingredients:
Wheat Flour (Wheat Flour, Calcium Carbonate, Iron, Niacin, Thiamin), Water, Palm Oil, Sugar, Yeast, Rapeseed Oil, Dextrose, Emulsifiers (Sodium Stearoyl-2-Lactylate, Mono- and Di-Acetyltartaric Esters of Mono- and Di-Glycerides of Fatty Acids, Mono- and Di-Glycerides of Fatty Acids), Raising Agents (Potassium Bicarbonate, Disodium Diphosphate), Soya Flour, Salt, Dried Egg, Flour Treatment Agent (Ascorbic Acid)

Allergy Information:
Recipe: No nuts.Ingredients: Cannot guarantee nut free.Factory: No nuts.",
    image: "http://img.tesco.com/Groceries/pi/000/0286180000000/IDShot_540x540.jpg",
    original_price: 0.65,
    offer_price: 0.10,
    end_time: Date.new(2016, 12, 20),
    is_available: true,
    quantity: 3,
    user: users[9],
    category: "Cake"
  },{
    name: "Doughnuts, Cookies & Muffins: Milk Chocolate Cookie 5 pack",
    description: "Ingredients:
Wheat Flour (Wheat Flour, Calcium Carbonate, Iron, Niacin, Thiamin), Sugar, Milk Chocolate Chunks (20%), Palm Oil, Fructose-Glucose Syrup, Rapeseed Oil, Water, Raising Agents (Sodium Bicarbonate, Disodium Diphosphate, Calcium Dihydrogen Diphosphate, Calcium Phosphate), Wheat Fibre, Whey Powder (Milk), Flavouring, Salt, Milk Chocolate Chunks contains: Sugar, Dried Whole Milk, Cocoa Butter, Cocoa Mass, Whey Powder (Milk), Emulsifier (Soya Lecithins), Vanilla Extract

Allergy Information:
Recipe: No nuts.Ingredients: Cannot guarantee nut free.Factory: Before being prepared for manufacture of this product, the equipment was previously used to make products containing nuts.",
    image: "http://img.tesco.com/Groceries/pi/000/0289610000000/IDShot_540x540.jpg",
    original_price: 1.00,
    offer_price: 0.20,
    end_time: Date.new(2016, 12, 21),
    is_available: true,
    quantity: 3,
    user: users[4],
    category: "Cake"
  },{
    name: "Doughnuts, Cookies & Muffins: BlueBerry Muffins 4 pack",
    description: "Ingredients:
Wheat Flour, Sugar, Water, Rapeseed Oil, Blueberry (13%), Pasteurised Whole Egg, Modified Maize Starch, Milk Proteins, Whey Powder (Milk), Raising Agents (Potassium Bicarbonate, Sodium Polyphosphate), Emulsifier (Soya Lecithins), Salt, Vanilla, Flavouring, Flavouring contains: Propylene Glycol, Flavouring, Water

",
    image: "http://img.tesco.com/Groceries/pi/000/0286210000000/IDShot_540x540.jpg",
    original_price: 1.00,
    offer_price: 0.10,
    end_time: Date.new(2016, 12, 16),
    is_available: true,
    quantity: 3,
    user: users[4],
    category: "Cake"
  },{
    name: "Doughnuts, Cookies & Muffins: M & M Cookies 4 pack",
    description: "Ingredients:
Wheat Flour (Wheat Flour, Calcium Carbonate, Iron, Niacin, Thiamin), Sugar, M&M's (19%), Palm Oil, Fructose-Glucose Syrup, Rapeseed Oil, Glucose Syrup, Raising Agents (Sodium Bicarbonate, Disodium Diphosphate, Calcium Dihydrogen Diphosphate, Calcium Phosphate), Wheat Fibre, Whey Powder (Milk), Salt, M&M's contains: Sugar, Cocoa Mass, Dried Whole Milk, Cocoa Butter, Milk Sugar, Whey Powder (Milk), Maize Starch, Glucose Syrup, Stabiliser (Acacia), Water, Colours (Titanium Dioxide, Beetroot Red, Mixed Carotenes, Iron Oxide, Curcumin, Brilliant Blue FCF, Beta-Apo-8'-Carotenal), Emulsifier (Soya Lecithins), Thickener (Dextrin), Glazing Agent (Carnauba Wax), Coconut Oil, Salt, Vanilla Extract, Flavouring

Allergy Information:
Recipe: No nuts.Ingredients: Cannot guarantee nut free.Factory: Before being prepared for manufacture of this product, the equipment was previously used to make products containing nuts.
",
    image: "http://img.tesco.com/Groceries/pi/000/0288270000000/IDShot_540x540.jpg",
    original_price: 1.30,
    offer_price: 0.30,
    end_time: Date.new(2016, 12, 18),
    is_available: true,
    quantity: 1,
    user: users[4],
    category: "Cake"
  },{
    name: "Doughnuts, Cookies & Muffins: Cadbury Chocolate Mini Rolls 12 pac",
    description: "ngredients:
Milk Chocolate (33%) [Sugar, Cocoa Mass, Cocoa Butter, Dried Skimmed Milk, Milk Fat, Vegetable Fats (Palm, Shea, Sal, Mango in varying proportions), Dried Whey (from Milk), Emulsifier (Soya Lecithin)], Vanilla Flavour Creme (27%) [Vegetable Oils (Palm, Rapeseed), Glucose Syrup, Sugar, Dextrose. Flavouring, Emulsifiers (E471, E475)], Sugar, Wheat Flour (with added Calcium, Iron, Niacin, Thiamin), Glucose Syrup, Humectant (Glycerol), Dried Whole Egg, Fat Reduced Cocoa, Vegetable Oils (Palm, Rapeseed), Dried Whey (from Milk), Raising Agents (Sodium Bicarbonate, E450), Soya Flour, Dried Egg White, Salt, Emulsifiers (E471, E475), Milk Protein, Preservative (Potassium Sorbate)

Allergy Information:
May Contain: Nuts
Storage:
Store in a cool dry place",
    image: "http://img.tesco.com/Groceries/pi/577/5000221506577/IDShot_540x540.jpg",
    original_price: 2.75,
    offer_price: 1.50,
    end_time: Date.new(2016, 12, 16),
    is_available: true,
    quantity: 3,
    user: users[9],
    category: "Cake"
  }])


puts "Seeds file completed, successfully!"
