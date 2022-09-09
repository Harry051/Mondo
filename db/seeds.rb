# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# To access image for upload to cloudinary
require "open-uri"

# Recipes/Country seeder
recipes = [
  {
    name: 'Moussaka',
    description: "Moussaka is a classic Greek dish that's perfect comfort food. This version may not be completely traditional, but it's definitely delicious. A family favorite.",
    average_rating: 5.0,
    categories: ['Main Course'],
    times: { prep: 20,
             cook: 70,
             total: 90
               },
    ingredients: ['2 eggplant aubergine, large',
              '3 tablespoon olive oil for frying, or more as needed',
              '1 tablespoon olive oil',
              '1 onion large',
              '3 cloves garlic or 2 if large',
              '2 lb ground lamb 900g lamb mince',
              '28 oz chopped tomatoes or use 1x 26.46oz/750g carton - I prefer finely chopped',
              '1 tablespoon mixed herbs eg Italian mixed herbs',
              'salt and pepper',
              '2 tablespoon butter 25g',
              '3 tablespoon flour',
              '1 1/4 cups milk 300ml',
              '1 1/3 cups hard cheese - suggest Jarlesberg 100g, grated',
              '1 egg'
                     ],
    recipe: [
             'Preheat the oven to 375F/190C',
             "Slice the eggplant/aubergine in around 1/2in/1cm slices and lay out flat. Sprinkle with a little salt and leave a couple minutes (don't be tempted to skip - it does help draw out any bitterness and apparently stop them absorbing as much oil).",
             "Heat a little olive oil in a skillet/frying pan over a medium-high heat. Dry the slices of eggplant/aubergine and brush off the salt. Fry the eggplant/aubergine slices in batches until gently browned on each side. Don't be tempted to use too much oil - just enough to stop them sticking. When cooked, put to one side. If they are oily, dry on paper towel (you can also put oilier ones on top off other slices you are cooking and some will drain out to help those ones not stick when you turn over).",
             'Heat the tablespoon oil in another pan over a medium heat. Dice the onion and add to he pan. Dice the garlic small and add as well.',
             'Cook the onions and garlic for around 5 minutes until soft but not browning then add the lamb.',
             'Brown the lamb - you may need to turn up the heat a bit - until it is all cooked then add the tomatoes, herbs and some salt and pepper. Stir well and set aside.',
             'In another pan, melt the butter over a medium heat. Add the flour and stir well, cooking until it starts to become slightly nutty, a minute or two.',
             "Turn the heat down a little and add the milk gradually, stirring in well as you go, around 1/2 cup at a time, pressing any lumps to the side of the pan to remove. Don't worry if still a couple.",
             "Add the majority of the cheese (keep back a couple handfuls) and mix through so it melts. Remove from the heat, add the egg and whisk it through.",
             "Start layering up your dish in a large oven dish - put half the meat mixture on the bottom, followed by half the eggplant/aubergine slices covering, overlapping slightly, then some sauce. Use roughly half the sauce but a little less as you want more on top if anything.",
             "Then gently spread out the rest of the lamb on top, followed by the remaining eggplant/aubergine in a layer and finally the last of the sauce. Sprinkle the cheese you kept back over the top.",
             "Bake for approx 40mins until golden brown on the top."
                ],
    dish_image_url: 'https://i0.wp.com/www.eatlivecool.com/wp-content/uploads/2018/11/Moussaka-Vertical-5.jpg?w=800&ssl=1',
    country: 'Greece',
    country_bio: "In common with many other cuisines of the Mediterranean, it is founded on the triad of wheat, olive oil, and wine. It uses vegetables, olive oil, grains, fish, and meat, including pork, poultry, veal and beef, lamb, rabbit, and goat. Other important ingredients include pasta (for example hilopites), cheeses, lemon juice, herbs, olives, and yogurt. Bread made of wheat is ubiquitous; other grains, notably barley, are also used, especially for paximathia. Common dessert ingredients include nuts, honey, fruits, and filo pastries. It continues traditions from Ancient Greek and Byzantine cuisine, while incorporating Balkan and Italian influences. - Wikipedia",
    country_image_url: 'https://upload.wikimedia.org/wikipedia/commons/thumb/5/5c/Flag_of_Greece.svg/510px-Flag_of_Greece.svg.png',
    calories: 771
  },
  {
    name: 'Tiradito',
    description: 'This classic Japanese-Peruvian dish is easy to prepare and makes a wonderful appetizer.',
    average_rating: 4.3,
    categories: ['Appetizer/Starter'],
    times: { prep: 10,
             cook: 0,
             total: 10
               },
    ingredients: [
                      '1/4 lb white fish 110g, as a chunk, ideally even in shape - I used hake loin',
             '1 tablespoon lime juice',
             '1 tablespoon lemon juice',
             '1 tablespoon aji amarillo chili paste ( or better fresh if you can find it)',
             '1/4 teaspoon salt',
             '1/4 teaspoon grated ginger',
             '1/4 teaspoon grated garlic',
             'A little cilantro to decorate'
                     ],
    recipe: [
                 'Thinly slice the fish and place on a plate. Chill while you prepare the sauce',
           'Mix the sauce ingredients together well (lime and lemon juices, aji amarillo, salt, ginger and garlic) then pour over the fish. Serve immediately.'
                ],
    dish_image_url: 'https://www.carolinescooking.com/wp-content/uploads/2020/03/Peruvian-tiradito-photo.jpg',
    country: 'Peru',
    country_bio: "Peruvian cuisine reflects local practices and ingredients including influences mainly from the indigenous population, including the Inca, and cuisines brought by immigrants from Europe (Spanish cuisine, Italian cuisine); Asia (Japanese cuisine and Chinese cuisine); and Africa (Maghrebi cuisine and West African cuisine). Without the familiar ingredients from their home countries, immigrants modified their traditional cuisines by using ingredients available in Peru. - Wikipedia",
    country_image_url: 'https://upload.wikimedia.org/wikipedia/commons/thumb/c/cf/Flag_of_Peru.svg/510px-Flag_of_Peru.svg.png',
    calories: 106
  },

  {
    name: 'Pavlova with raspberries and cream',
    description: "A delicious meringue that's soft inside and crisp outside, loaded up with raspberries and cream - such a tasty dessert.",
    average_rating: 4.6,
    categories: ['Dessert'],
    times: { prep: 15,
             cook: 45,
             total: 60
               },
    ingredients: [
                      '2 egg whites large',
             '1/2 cup granulated sugar 100g (3 1/2oz)',
             '1/2 teaspoon vanilla extract',
             '1/2 teaspoon cornstarch cornflour',
             '1/2 teaspoon white wine vinegar (or red wine/rice vinegar if not available)',
             'To top: 1/2 cup heavy cream 120ml double or whipping cream, 1/2cup raspberries 65g, plus extra to decorate- around 8'
                     ],
    recipe: [
                 "Preheat the oven to 300F/150C and line a baking sheet/tray with parchment paper that's at least 8in/20cm square.",
           "Whisk the egg whites in a clean bowl until stiff peaks - the way to know if they are stiff enough is if you try to tip the bowl, if they slide they are not stiff enough, if they don't, they are fine. Avoid beating beyond this point as you may over-beat.",
           'Gradually add the sugar 1tbsp at a time, beating in after each addition, until it is all added and the mixture is glossy.',
           'Add the vanilla, cornstarch and vinegar, whisk in then turn the mixture out into the middle of the parchment-lined tray. Form a circle about 6-7in/15-18cm in diameter with a slight dip in the middle.',
           "Bake in the preheated oven, in the middle of the oven, for approximately 45-50 minutes until it is lightly golden and dry to touch. It will seem crisp when touched (although be gentle so you don't break it). Turn off the oven and leave the pavlova inside with the door closed for a further 50min-1 hour. This will help avoid it sinking and cracking.",
           "Up to around 2hrs before serving, carefully remove the parchment from the bottom of the pavlova and place on a serving plate.",
           "Whip the cream until lightly whipped (soft peaks) then add the raspberries - if using a stand mixture you can probably put them in whole, with a hand mixture you'll need to break them up a bit first. Beat a little more until combined and semi-firm.",
           'Pour the cream mixture into the middle of the pavlova and carefully spread out so you still have a good 1in/3cm or so without cream round the edge. Top with the extra raspberries. Keep chilled until ready to serve.'
                ],
    dish_image_url: 'https://www.carolinescooking.com/wp-content/uploads/2016/05/pavlova-raspberries-and-cream-photo.jpg',
    country: 'Australia',
    country_bio: "In common with many other cuisines of the Mediterranean, it is founded on the triad of wheat, olive oil, and wine. It uses vegetables, olive oil, grains, fish, and meat, including pork, poultry, veal and beef, lamb, rabbit, and goat. Other important ingredients include pasta (for example hilopites), cheeses, lemon juice, herbs, olives, and yogurt. Bread made of wheat is ubiquitous; other grains, notably barley, are also used, especially for paximathia. Common dessert ingredients include nuts, honey, fruits, and filo pastries. It continues traditions from Ancient Greek and Byzantine cuisine, while incorporating Balkan and Italian influences. - Wikipedia",
    country_image_url: 'https://upload.wikimedia.org/wikipedia/commons/thumb/8/88/Flag_of_Australia_%28converted%29.svg/510px-Flag_of_Australia_%28converted%29.svg.png',
    calories: 216
  },

  {
    name: 'Vegetarian breakfast burrito',
    description: "A delicious combination that's easy to make and tasty too.",
    average_rating: 4.4,
    categories: ['Breakfast', 'Vegetarian'],
    times: { prep: 5,
             cook: 10,
             total: 15
               },
    ingredients: [
                  '1/2 onion small',
                  '1/4 red pepper or yellow/orange',
                  '1 tomato small, or 1/2 large',
                  '1/2 tablespoon oil',
                  '4 tablespoon black beans',
                  '4 eggs or 3 if extra-large, lightly beaten',
                  '4 tablespoon grated cheese',
                  '6 stems cilantro leaves chopped',
                  '2 tortillas flour or corn',
                  'Optional toppings: Sour cream, avocado, hot sauce, extra cheese'
                  ],
    recipe: [
           "Dice the onion, pepper and tomato fairly small.",
           "Heat the oil in a skillet/frying pan or shallow pan over a medium heat and fry the onion for a couple minutes until softening.",
           'Add the pepper and cook another minute or two then add the tomato. Reduce the heat a little if sticking or drying out.',
           "Add the beans and mix through then add the eggs. Cook, stirring regularly, as if you are cooking scrambled eggs. Take off the heat just before they are fully cooked as they will continue to cook a bit after in the pan.",
           "Meanwhile warm the tortillas gently (in microwave, under grill or in a skillet/frying pan) - if you forget don't worry it's not the end of the world.",
           "Add the cheese and cilantro to the eggs and mix through then fill the two tortillas. Add any or all of your preferred toppings and serve immediately."
                ],
    dish_image_url: 'https://www.mexicanplease.com/wp-content/uploads/2022/06/Vegetarian-Breakfast-Burritos-11.jpg',
    country: 'USA',
    country_bio: "Principal influences on American cuisine are Native American, British, French, German, Spanish, and Italian cuisines. Whilst some of American cuisine is fusion cuisine, many regions in America have a specific regional cuisine. Each are deeply rooted in ethnic heritages, for example Cajun, Louisiana Creole, Native American, New England Algonquian, New Mexican, Pennsylvania Dutch, Soul food, Texan/Tex-Mex, Southern, and Tlingit. - Wikipedia",
    country_image_url: 'https://upload.wikimedia.org/wikipedia/en/thumb/a/a4/Flag_of_the_United_States.svg/440px-Flag_of_the_United_States.svg.png',
    calories: 430
  },

  {
    name: 'Mooncakes',
    description: "Mooncakes are traditionally eaten to celebrate the Mid-Autumn Festival, but whatever your excuse these are both pretty and delicious with their sweet-nutty filling.",
    average_rating: 3.7,
    categories: ['Snack, Vegetarian'],
    times: { prep: 45,
             cook: 5,
             total: 50
               },
    ingredients: [
      '½ cup cooked glutinous rice flour 55g',
      '¼ cup confectioners sugar 35g, icing sugar',
      '1 ½ tablespoon coconut oil',
      '2 tablespoon water or a little more',
      '½ cup black sesame seeds 75g',
      '2 tablespoon unsalted butter 20g',
      '3 tablespoon confectioners sugar 26g, icing sugar',
      '2 tablespoon glutinous rice flour'
                     ],
    recipe: [
      'For the outer dough',
      "Sift the cooked glutinous rice flour and confectioner's sugar together into a bowl. Add the coconut oil and water and mix to combine. If you'd like to add color, add a little at this point either to all or part (I added a little freeze dried strawberry to give pink tinge; matcha powder is another good option). Press the mixture together, adding a little more water if it breaks up too much. Weigh out 4 pieces of 17g each (you will have spare).",
      "For the filling",
      "Toast the sesame seeds in a dry skillet for around 4 min until they start to smell nutty and sizzle slightly. Transfer to a food processor and leave to cool before pulsing until smooth, scraping down the sides as needed.",
      "Add the butter and sugar to the sesame seeds and pulse until mixed through. Add the glutinous rice flour and pulse to mix. Form the dough into 30g balls - you should get 4.",
      "To form mooncakes",
      "Flatten the pieces of outer dough into a thin round then place one of the sesame filling balls on top of a round. Wrap the outer dough around the filling, kneading it around as needed, so it covers completely. Repeat with the rest.",
      "Lightly flour the mooncake mould then carefully put one of the mooncakes inside. Place on a surface and press down the top of the mould so that it imprints the top then press out the mooncake. Repeat with the rest then serve. You can keep them chilled for a couple days or slightly longer frozen."
                ],
    dish_image_url: 'https://www.carolinescooking.com/wp-content/uploads/2017/08/Chinese-mooncakes-snow-skiin-mooncakes-photo.jpg',
    country: 'China',
    country_bio: "Chinese cuisine encompasses the numerous cuisines originating from China, as well as overseas cuisines created by the Chinese diaspora. Because of the Chinese diaspora and historical power of the country, Chinese cuisine has influenced many other cuisines in Asia and beyond, with modifications made to cater to local palates. Chinese food staples such as rice, soy sauce, noodles, tea, chili oil, and tofu, and utensils such as chopsticks and the wok, can now be found worldwide.
    The preferences for seasoning and cooking techniques of Chinese provinces depend on differences in historical background and ethnic groups. Geographic features including mountains, rivers, forests, and deserts also have a strong effect on the local available ingredients, considering that the climate of China varies from tropical in the south to subarctic in the northeast. Imperial royal and noble preference also plays a role in the change of Chinese cuisine. Because of imperial expansion and trading, ingredients and cooking techniques from other cultures have been integrated into Chinese cuisines over time.",
    country_image_url: 'https://upload.wikimedia.org/wikipedia/commons/thumb/f/fa/Flag_of_the_People%27s_Republic_of_China.svg/1920px-Flag_of_the_People%27s_Republic_of_China.svg.png',
    calories: 295
  },

  {
    name: 'Okro Stew',
    description: "As one of Ghana’s national dishes, okro stew is prepared with tomatoes, red palm oil, onions, tomatoes, spices and finely chopped okra.",
    average_rating: 4.2,
    categories: ['Main'],
    times: { prep: 20,
             cook: 40,
             total: 60
               },
    ingredients: [
      '2 lb stewing beef',
      '1 beef stock cube (or chicken stock cube)',
      '4 kpakposhito peppers',
      '4 tablespoons palm oil',
      '2 large onions',
      '2 cloves garlic , finely diced',
      '1 inch piece ginger',
      '4 medium vine tomatoes',
      'Scotch bonnet pepper (or chili powder), according to taste',
      '2 fillets smoked mackerels (optional)',
      '24 pods okra',
      'Water (as needed)'
                     ],
    recipe: [
      "Cut the stewing beef into bite sized chunks and place into a pot. Chop ¾ of the first onion and add it to the beef. Reserve the other ¼ onion for the sauce.",
      "Add the kpakposhito to the pot, whole.",
      "Add a cube of beef or chicken stock seasoning, top with water and braise until tender. Cooking time depends on the type of stewing beef used. While the beef is cooking, prepare the other ingredients as follows.",
      "Finely chop the second whole onion. Place a large pot on the stove and heat up the palm oil. Fry the onions in the oil until they just begin to caramelize.",
      "Add the diced ginger to the pot and fry for about 1 minute, just before adding the tomatoes.",
      "Chop the tomatoes into small chunks and place them into a blender or food processor. Add the ginger to the tomatoes.",
      "Add the remaining onion to the blender.",
      "Add the desired amount of scotch bonnet peppers.",
      "Pulse or liquidize the ingredients until smooth.",
      "Pour the mixture over the caramelized onions and allow the sauce to cook down and thicken. This should take 10 minutes, as oil begins to rise to the top. Stir regularly to prevent burning.",
      "Quarter the okra pods, then chop them into ¼-inch (5 mm) thin slices. Set aside.",
      "Break the smoked mackerel into chunks and add to the stew (optional). Add a little more water and allow to simmer for 5 minutes to allow the flavors to infuse into the sauce.",
      "Add the chopped okra into the stew and stir. A little more water may be added to encourage the okra to cook well. The presence of tomatoes in the stew slows down the sliming process. Simmer for 10 minutes.",
      "Add the cooked beef along with the stock created during the braising process and stir to incorporate into the stew. Simmer for 5 minutes.",
      "Check for seasoning and add salt if required. The dish is now ready to be served alongside banku."
                ],
    dish_image_url: 'https://myrecipejoint.com/wp-content/uploads/2020/12/126054251_364930781267593_715183987144198136_n.jpg',
    country: 'Ghana',
    country_bio: "Ghanaian cuisine is the cuisine of the Ghanaian people. Ghanaian main dishes are organized around a starchy staple food, which goes with a sauce or soup containing a protein source. The main ingredients for the vast majority of soups and stews are tomatoes, hot peppers and onions. As a result, most of the Ghanaian soups and stews are red or orange in appearance.",
    country_image_url: 'https://upload.wikimedia.org/wikipedia/commons/thumb/1/19/Flag_of_Ghana.svg/1920px-Flag_of_Ghana.svg.png',
    calories: 250
  }
 ]

# Clear models before reseeding
Dish.destroy_all
Country.destroy_all

# Create country and dish with the hash above
recipes.each do |r|
  country = Country.create!(name: r[:country], story: r[:country_bio], address: r[:country])
  puts "Country: #{country.id} created!"

  dish = Dish.create!(
    title: r[:name],
    description: r[:description],
    average_rating: r[:average_rating],
    categories: r[:categories],
    times: r[:times],
    ingredients: r[:ingredients],
    recipe: r[:recipe],
    calories: r[:calories],
    country: country
    )
  puts "Dish: #{dish.id} created!"

  file = URI.open(r[:dish_image_url])
  dish.photo.attach(io: file, filename: "#{dish.title}.jpg", content_type: "image/jpg")
  dish.save
  puts "Dish image created!"

  file = URI.open(r[:country_image_url])
  country.photo.attach(io: file, filename: "#{country.name}.jpg", content_type: "image/jpg")
  country.save
  puts "Country image created!"
end

recipes = [

  {
    name: 'Yuca fries',
    description: "These yuca fries are wonderfully crisp and perfect for dipping!",
    average_rating: 5.0,
    categories: ['Snack, Vegetarian'],
    times: { prep: 15,
             cook: 40,
             total: 55
               },
    ingredients: [
      '19 oz yuca 550g, approx 15oz-1lb/425-450g peeled and trimmed weight',
      '½ teaspoon salt approx, to taste',
      '1.5 - 2 cups vegetable oil 360-480ml, approx - to make a layer deep enough in skillet/frying pan',
      'aji verde, Peruvian green sauce to serve, or sauce of own choice'
                     ],
    recipe: [
      "Trim the ends off the yuca root and cut it into approximately 3-4 lengths of similar length. Take care and use a sharp knife as it can be difficult to cut.",
      "Score through the skin up and down (so from one cut edge to the other) just enough to break the skin rather than cut into the main root. Then using either the knife or your fingers, open up the skin and peel it off. There should be two layers of skin you want to remove - the thin outer dark layer and a slightly thicker white layer. They should both come off easily together after scoring through, but if needed, use a vegetable peeler to remove any still left.",
      "Place the peeled chunks of yuca into a pot large enough to hold them all in a layer. Fill the pot with cold water so the yuca pieces are completely submerged.",
      "Add some salt to the water, cover then place over a medium heat to bring to a boil. Once boiling, simmer for approximately 20 - 30 minutes until the yuca is tender. The middle of the root will open up and the pieces may break open a little which is fine and a sign it is cooked.",
      "Remove the pieces from the water and let them cool a minute or two until cool enough to handle. Then cut the pieces in half and remove the inner tough core.",
      "Cut the main root into strips - you can split as they naturally break then cut further as needed. You can make them whatever thickness suits - thicker will have more soft middle relative to the crisp outside after frying, thinner will be more crisp throughout. Leave the pieces to cool to room temperature and dry a little more.",
      "Fill a small-medium skillet/frying pan with oil to create a layer around 1in/2.5cm. You want it deep enough so that the yuca pieces can be submerged when you add them (though they will tend to float up). Warm the oil over a medium-high heat until warm but not starting to smoke.",
      "Add a few pieces of yuca to the oil so that you don't have huge spaces between pieces but also don't overcrowd the pan. Fry the yuca pieces in batches like this, turning once for around 3 - 5 minutes per side until they are golden and crisp. Remove the cooked fries from the oil using a slotted spoon and drain them on kitchen paper/paper towel. Repeat with rest of yuca pieces.",
      "Serve ideally warm, freshly cooked (although room temperature works) with aji verde or your choice of dipping sauce."
                ],
    dish_image_url: 'https://www.carolinescooking.com/wp-content/uploads/2022/04/yuca-fries-photo.jpg',
    country: 'Peru',
    country_bio: "Peruvian cuisine reflects local practices and ingredients including influences mainly from the indigenous population, including the Inca, and cuisines brought by immigrants from Europe (Spanish cuisine, Italian cuisine); Asia (Japanese cuisine and Chinese cuisine); and Africa (Maghrebi cuisine and West African cuisine). Without the familiar ingredients from their home countries, immigrants modified their traditional cuisines by using ingredients available in Peru.",
    country_image_url: 'https://upload.wikimedia.org/wikipedia/commons/thumb/c/cf/Flag_of_Peru.svg/510px-Flag_of_Peru.svg.png',
    calories: 439
  },

  {
    name: 'Anticuchos de Corazón',
    description: "TThe mere thought of preparing anticuchos makes me happy; it represents Peruvian cuisine at its purest. The star ingredient of this recipe is beef heart. If you have not yet tasted this delicious and highly nutritious organ meat, I encourage you to give this dish a try. It is not only healthy but also delicious and satisfying.",
    average_rating: 2.7,
    categories: ['Main'],
    times: { prep: 20,
             cook: 20,
             total: 40
               },
    ingredients: [
      '1 beef heart',
      '1/2 cup aji panca paste',
      '1/2 cup vegetable oil',
      '1/4 cup red wine vinegar',
      '1 tablespoon minced garlic',
      '1 tablespoon dried oregano',
      '1 teaspoon ground cumin',
      '2 russet potatoes',
      '2 corn on the cob Choclo- Peruvian giant kernel corns if available',
      '1/2 cup aji amarillo paste',
      '1 scallion thinly sliced',
      'Salt to taste'
                     ],
    recipe: [
      "Remove veins and sinew from the beef heart and cut the resulting firm meat into 1 1/2 inch cubes.",
      "In a medium bowl, whisk together the aji panca, vegetable oil, red wine vinegar, garlic, oregano, cumin, and salt. Add the cubed beef heart, tossing to coat thoroughly. Cover and refrigerate for at least 3 hours.",
      "Bring a large pot of water to a boil. Add the potatoes. When they are nearly tender, add the corn. When both are cooked through, drain and set aside. When cool enough to handle, cut the corn on the cob into serving sizes. Peel the potatoes and cut into thick slices.",
      "In a small bowl, whisk in desired amount of sliced scallion into the aji amarillo paste. Season with salt and set aside.Set the grill to medium heat.",
      "Place 3-4 beef cubes on each skewer. Set aside the remaining marinade for basting. Arrange the skewers on the preheated grill. Baste the marinade onto the skewers with a pastry brush or fresh corn husks and grill for 3 minutes. Flip to the other side, baste, and grill until cooked through with a little char, another 3 minutes.",
      "Serve hot with the potatoes, corn, and seasoned aji amarillo."
                ],
    dish_image_url: 'https://i0.wp.com/tarasmulticulturaltable.com/wp-content/uploads/2016/03/Anticuchos-Peruvian-Beef-Heart-Skewers-2-of-3.jpg?resize=1024%2C680&ssl=1',
    country: 'Peru',
    country_bio: "Peruvian cuisine reflects local practices and ingredients including influences mainly from the indigenous population, including the Inca, and cuisines brought by immigrants from Europe (Spanish cuisine, Italian cuisine); Asia (Japanese cuisine and Chinese cuisine); and Africa (Maghrebi cuisine and West African cuisine). Without the familiar ingredients from their home countries, immigrants modified their traditional cuisines by using ingredients available in Peru.",
    country_image_url: 'https://upload.wikimedia.org/wikipedia/commons/thumb/c/cf/Flag_of_Peru.svg/510px-Flag_of_Peru.svg.png',
    calories: 324
  }

]

recipes.each do |r|

 dish = Dish.create!(
    title: r[:name],
    description: r[:description],
    average_rating: r[:average_rating],
    categories: r[:categories],
    times: r[:times],
    ingredients: r[:ingredients],
    recipe: r[:recipe],
    country_id: Country.find_by(name: r[:country]).id,
    calories: r[:calories]
    )
  puts "Dish: #{dish.id} created!"
  puts Country.find_by(name: r[:country]).id

  file = URI.open(r[:dish_image_url])
  dish.photo.attach(io: file, filename: "#{dish.title}.jpg", content_type: "image/jpg")
  dish.save
  puts "Dish image created!"
end
