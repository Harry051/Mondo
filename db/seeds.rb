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
    categories: ['Main'],
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
    categories: ['Pescetarian'],
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
    categories: ['Puddings'],
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
    categories: ['Vegetarian'],
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
    categories: ['Vegetarian', 'Puddings'],
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
    categories: ['Vegetarian', 'Vegan', 'Lactose', 'Gluten'],
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
  },

  {
    name: 'Prinsesstårta',
    description: "A classic Scandinavian torte with layers of sponge cake, raspberry jam, vanilla custard, and whipped cream. It is traditionally dome-shaped and covered with a layer of sweet marzipan tinted green.",
    average_rating: 4.2,
    categories: ['Vegetarian', 'Puddings'],
    times: { prep: 60,
             cook: 40,
             total: 100
               },
    ingredients: [
      '4 large eggs',
      '1 cup sugar',
      '1/2 cup flour',
      '1/2 cup potato flour or (70g) cornstarch',
      '1 teaspoon baking powder',
      '1/8 teaspoon salt',
      'Powdered sugar for dusting',
      '1 lb. prepared marzipan',
      'Leaf green food color',
      'Ready made rose icing decorations',
      'Rose food colouring',
      'Clear extract'
                     ],
    recipe: [
      "Preheat the oven to 350°F. Grease and line a 9-inch round springform pan with parchment paper",
      "Make the sponge: Place the eggs and sugar in a mixing bowl and beat on high speed until pale and thickened. Properly whipped batter should be light and thick, and fall in a ribbon back into the bowl leaving trails of batter on the surface. In a separate bowl, whisk the flours (or cornstarch), baking powder and salt together. Carefully fold the dry mixture into the egg mixture until thoroughly combined. Pour the batter into the prepared pan and bake for about 40 minutes or until a toothpick tester comes out clean. Let the cake cool slightly in the pan for a few minutes then run a knife around the edge and remove the springform collar. Peel away the parchment and let cool completely on a wire rack.",
      "Make the custard filling: Stir together the cream, egg yolks, cornstarch, and sugar in a small saucepan. Cook over medium heat, whisking constantly, until the mixture thickens. Stir in the vanilla and remove from heat. Transfer to a bowl and let cool slightly. Press plastic wrap over the surface of the custard and refrigerate until firm. The chilled custard should be thick and hold in the bowl of a spoon.",
      "Make the stabilized whipped cream: Sprinkle the gelatin over the 2 tablespoons of water in a small bowl. Let stand until set. Place the heavy cream in the bowl of an electric mixer fitted with a whip attachment. Set mixer speed to medium and beat until soft peaks form. Gradually add in the powdered sugar and then mix in the vanilla. Heat gelatin in the microwave for 5-7 seconds, or until completely liquid. Gradually add liquid gelatin to whipped cream in a thin stream with the mixer running. After all of the gelatin is added, increase mixer speed to high and beat to stiff peaks. Set aside.",
      "Build the layers: Torte the cake into four layers using a serrated knife or cake leveler. The layers will be very thin so do this carefully. Place the bottom cake layer on a plate or cake board. Spread on the raspberry jam and top with a second cake piece. Top the second cake piece with the custard filling (you may have extra custard). Top with a third cake layer. Pile all of the whipped cream on top and smooth into a dome shape using a large spatula. Place the final cake layer on top and press down so that all of the cake’s edges are smoothed against the whipped cream and a dome shape is formed. Cover the entire cake with a thin layer of buttercream, smoothing it as much as possible. Refrigerate until the frosting is firm, about 40 minutes.",
      "Prep and cover with marzipan: Dust a work surface with marzipan. Knead the marzipan with your hands to soften and place it on the work surface. Add a small amount of leaf green food color to the marzipan and knead in until a consistent green color is achieved. Lightly add powdered sugar as needed to prevent sticking. Roll it to a large circle, lifting to occasionally dust underneath with powdered sugar to prevent sticking. Gently lay the marzipan circle over the top of the cake and use your hands to form the marzipan to the shape of the cake. Trim the excess marzipan from the bottom of the cake using a pizza or pastry wheel. Gently tuck the bottom edges of the marzipan under the cake using the back of a butter knife.",
      "Decors: Paint the white Wilton candy roses with a little Baker’s Rose food color dissolved in clear extract. Use a kitchen-dedicated art brush with soft bristles so the food color can easily be brushed between the petals.",
      "Tint leftover marzipan with a little more leaf green food color, and roll flat on a powdered sugar-dusted work surface. Cut small star-shaped flowers from the marzipan using a fondant cutter. Use leftover buttercream or a dot of corn syrup to attach the star shape to the bottom of the candy rose.",
      "Attach the rose to the top center of the cake using buttercream or a dot of corn syrup. Dust the top of the cake with powdered sugar using a small sieve.",
      "The cake needs to be refrigerated until serving time and any leftovers need to be refrigerated as well."
                ],
    dish_image_url: 'https://cdn.sprinklebakes.com/media/2019/01/Swedish2BPrincess2BCake2B3.jpg',
    country: 'Sweden',
    country_bio: "Historically, in the far north, meats such as reindeer, and other (semi-)game dishes were eaten, some of which have their roots in the Sami culture, while fresh vegetables have played a larger role in the South. Many traditional dishes employ simple, contrasting flavours, such as the traditional dish of meatballs and brown cream sauce with tart, pungent lingonberry jam (slightly similar in taste to cranberry sauce).",
    country_image_url: 'https://upload.wikimedia.org/wikipedia/en/thumb/4/4c/Flag_of_Sweden.svg/1920px-Flag_of_Sweden.svg.png',
    calories: 253
  },

  {
    name: 'Muriwo Undeovi',
    description: "Muriwo Unedovi, sometimes called peanut butter greens, is a traditional Zimbabwe dish that combines a leafy green of your choosing and a peanut butter sauce.",
    average_rating: 3.9,
    categories: ['Vegetarian', 'Vegan', 'Gluten', 'Lactose'],
    times: { prep: 20,
             cook: 10,
             total: 30
               },
    ingredients: [
      "1 onion, chopped",
      "½ cup bell pepper, chopped",
      "1 tomato, chopped",
      "1-inch piece of fresh ginger, minced or grated",
      "2 cloves garlic, minced",
      "1 Tbsp smoked paprika",
      "1 tsp garlic powder",
      "1 tsp onion powder",
      "10 to 12 cups chopped kale or collard greens",
      "1 onion, chopped",
      "¼ cup creamy peanut butter (without added oil and sugar)",
      "¼ cup of water",
      "2 tsp coconut aminos",
      "1 tsp scotch bonnet pepper sauce for heat",
      "2 Tbsp Simple Homemade Date Syrup"

                     ],
    recipe: [
      "Preheat a large skillet or sauté pan over medium heat.",
      "Add chopped onion to the hot pan and dry sauté for 3 to 4 minutes.",
      "Stir in chopped bell pepper and tomato. Continue cooking for another 3 to 4 minutes until tomatoes start to break down.",
      "Add minced garlic and ginger, and stir to combine.",
      "Stir in smoked paprika, onion powder, and garlic powder and cook for another minute. Your kitchen should smell amazing.",
      "Add chopped kale or collard greens, cover, and allow the greens to wilt without overcooking. They should be bright green, slightly tender, but with a bit of crunch. About 3 to 5 minutes should do it.",
      "While greens are wilting, prepare the peanut butter sauce.",
      "In a small mixing bowl, add peanut butter, scotch bonnet pepper sauce, coconut aminos, Simple Homemade Date Syrup, and water. Stir well. The sauce should be smooth and creamy, like a thick dressing. Taste it and adjust seasonings, if needed. ",
      "Pour the sauce over the greens and stir well to combine. Turn off the heat, plate, and enjoy!"
                ],
    dish_image_url: 'https://danielsplate.com/wp-content/uploads/2022/04/muriwo-unedovi-peanut-butter-greens-3-8.jpg',
    country: 'Zimbabwe',
    country_bio: "Like in many African countries, the majority of Zimbabweans depend on a few staple foods. 'Mealie meal', also known as cornmeal, is used to prepare sadza or isitshwala, as well as porridge known as bota or ilambazi. Sadza is made by mixing the cornmeal with water to produce a thick paste/porridge. After the paste has been cooking for several minutes, more cornmeal is added to thicken the paste. This is usually eaten as lunch or dinner, usually with sides such as gravy, vegetables (spinach, chomolia, or spring greens/collard greens), beans, and meat (stewed, grilled, roasted, or sundried). Sadza is also commonly eaten with curdled milk (sour milk), commonly known as lacto (mukaka wakakora), or dried Tanganyika sardine, known locally as kapenta or matemba. Bota is a thinner porridge, cooked without the additional cornmeal and usually flavoured with peanut butter, milk, butter, or jam. Bota is usually eaten for breakfast.",
    country_image_url: 'https://upload.wikimedia.org/wikipedia/commons/thumb/6/6a/Flag_of_Zimbabwe.svg/2560px-Flag_of_Zimbabwe.svg.png',
    calories: 160
  },

  {
    name: 'Asado',
    description: "The Argentine barbecue or asado is more than just a meal; these food-centric get-togethers constitute an important part of the Argentine social life.",
    average_rating: 4.8,
    categories: ['Lactose'],
    times: { prep: 90,
             cook: 90,
             total: 180
               },
    ingredients: [
      "2½ kg meat flank steak, flap, skirt steak, tenderloin. But always choose the ribs and a cut of meat",
      "6 chorizo sausages",
      "400 g chinchulines chinchulines is a term that makes reference to the offal of the cow such as the small intestine, kidneys and sweetbread. Black pudding is usually considered in this group too",
      "2 lemons",
      "coarse salt",
      "marinade optional if using kidneys",
      "mini baguettes toasted lightly on the grill for a minute before serving the sausages",
      "simple salad",
      "1 cup olive oil 250 ml",
      "1 tbsp white-wine vinegar",
      "½ cup fresh parsley 30 g, finely chopped",
      "¼ cup fresh oregano 15 g, finely chopped",
      "¼ cup fresh thyme 15 g, finely chopped",
      "¼ cup onion 30 g, finely chopped",
      "1 tbsp minced garlic",
      "salt and cayenne pepper to taste"
                     ],
    recipe: [
      "Before you start, soak the chorizos in bowl until you are ready to cook them. This is to prevent dryness after cooking.",
      "Make a fire using charcoal, wood and paper. This would probably take you around an hour.",
      "Once you have the fire ready, distribute the embers so you have a high heat and a low heat area. Sprinkle some salt on top of the embers to prevent the ashes from rising too much.",
      "Keep to the side a small additional fire going from where you can take embers to put in the main fire when needed.",
      "If you’re making chinchulines you need to wash and clean them very well. They take a long time to cook, around 1 or 1,5 hours. Make sure they are on a low heat and far from the meat to prevent the chinchulines from giving the meat their flavor.",
      "a. Small intestine: after cleaning and taking the fat out, make a braid or just roll it in a circle and put it on the grill. Turn it after 30 minutes and add salt.",
      "b. Kidneys: Peeled off the membrane they come in, take out the renal pelvis and after washing, leave overnight in water with vinegar, red wine or milk (3:1). When cooking on the grill put first the side that has the opening of the renal pelvis so it would finish draining. Turn around once the kidney has a more rigid texture to the touch (around 30-40 minutes). Don’t forget to add salt.",
      "c. Chorizos: just take them out of the water and put them on the grill.",
      "d. Black pudding: since this is already cooked, add it last to the grill, 30 min after after the rest.",
      "Sprinkle coarse salt and lemon juice on both side of the meat.",
      "Put the meat on the grill, fat side down and let it cook for at least 40 min - one hour, turning the meat every 15 or 20 minutes.",
      "Place the ribs on the grill. They are ready in 15 - 20 minutes.",
      "When the meat is ready, cut it in portions and put them in a large plate so everyone can choose what they want."
                    ],
    dish_image_url: 'https://chowcation.com/wp-content/uploads/2017/asado-1024x683.jpg',
    country: 'Argentina',
    country_bio: "Argentine cuisine is described as a cultural blending of Mediterranean influences brought by the Spanish during the colonial period and, later, by Italian and Spanish immigrants to Argentina during 19th and 20th centuries, with influences from a further cultural blending of criollos (due to Spanish colonizers) with the Indigenous peoples of Argentina (such as mate and humitas). Beyond asado (the Argentine barbecue), no other dish more genuinely matches the national identity. Nevertheless, the country's vast area, and its cultural diversity, have led to a local cuisine of various dishes. Argentine people have a reputation for their love of eating.[3] Social gatherings are commonly centred on sharing a meal. Invitations to have dinner at home are generally viewed as a symbol of friendship, warmth, and integration. Sunday family lunch is considered the most significant meal of the week, whose highlights often include asado or pasta.",
    country_image_url: 'https://upload.wikimedia.org/wikipedia/commons/thumb/1/1a/Flag_of_Argentina.svg/1920px-Flag_of_Argentina.svg.png',
    calories: 985
  },

  {
    name: 'Pork Adobo',
    description: "Almost every region in the Philippines have their own pork adobo version. Sometimes, there can be more than one version in a location. This is one of the favorite when it comes to family picnics. This is a dish wherein pork and chicken slices are combined and cooked inadobo style.",
    average_rating: 4.1,
    categories: ['Lactose', 'Gluten'],
    times: { prep: 10,
             cook: 60,
             total: 70
               },
    ingredients: [
      "2 lbs pork belly",
      "2 tablespoons garlic minced or crushed",
      "5 dried bay leaves",
      "4 tablespoons vinegar",
      "1/2 cup soy sauce",
      "1 tablespoon peppercorn",
      "2 cups water",
      "Salt to taste"
                     ],
    recipe: [
      "Combine the pork belly, soy sauce, and garlic then marinade for at least 1 hour",
      "Heat the pot and put-in the marinated pork belly then cook for a few minutes",
      "Pour remaining marinade including garlic.",
      "Add water, whole pepper corn, and dried bay leaves then bring to a boil. Simmer for 40 minutes to 1 hour",
      "Put-in the vinegar and simmer for 12 to 15 minutes",
      "Add salt to taste",
      "Serve hot. Share and enjoy!"
                    ],
    dish_image_url: 'https://panlasangpinoy.com/wp-content/uploads/2009/08/Pork-Adobo-.jpg?x45865',
    country: 'Philippines',
    country_bio: "A majority of mainstream Filipino dishes that compose Filipino cuisine are from the food traditions of various ethnolinguistic groups and tribes of the archipelago, including the Ilocano, Pangasinan, Kapampangan, Tagalog, Bicolano, Visayan (Cebuano, Hiligaynon and Waray), Chavacano and Maranao ethnolinguistic groups. The style of food making and preparation, and the dishes associated with them, have evolved over many centuries from a largely indigenous (largely Austronesian) base shared with maritime Southeast Asia with varied influences from Chinese, Spanish and American cuisines, in line with the major waves of influence that had enriched the cultures of the archipelago, as well as others adapted to indigenous ingredients and the local palate.",


    country_image_url: 'https://upload.wikimedia.org/wikipedia/commons/thumb/9/99/Flag_of_the_Philippines.svg/1200px-Flag_of_the_Philippines.svg.png',
    calories: 1211
  },

  {
    name: 'Vegetable Chettinad',
    description: "Almost every region in the Philippines have their own pork adobo version. Sometimes, there can be more than one version in a location. This is one of the favorite when it comes to family picnics. This is a dish wherein pork and chicken slices are combined and cooked inadobo style.",
    average_rating: 4.1,
    categories: ['Vegetarian', 'Vegan', 'Lactose', 'Gluten'],
    times: { prep: 20,
             cook: 30,
             total: 50
               },
    ingredients: [
      "½ cup vegetable oil",
      "20 dried red chilies, mild, preferably goondu milagi, seeded and broken in 2",
      "1 1½-inch piece cinnamon",
      "11 large garlic cloves, peeled and sliced in thirds, lengthwise",
      "20 medium shallots, peeled whole",
      "½ tsp turmeric",
      "½ medium onion, finely chopped",
      "1½ medium tomatoes, sliced in half and then quartered",
      "1 tsp salt, or to taste"
                     ],
    recipe: [
      "Heat oil in a large heavy-bottomed kadhai or wok over high heat. When hot but not smoking, add the red chillies, stirring to release their fragrance.",
      "Break the cinnamon into a few pieces and add to the kadhai; follow with sliced garlic. Stir to ensure that it does not burn.",
      "Slide in the shallots, onion and turmeric to stir to combine. The kadhai should be smoking hot.",
      "Add the tomatoes and stir. Let the mixture cook for three minutes before adding the salt. Stir occasionally for about four minutes.",
      "Add one cup of water, bring to a boil and then reduce to a simmer. If more water is needed to continue the cooking process, add as required, if using a pressure cooker, seal lid and cook for 15 minutes or until the first whistle, and then let simmer for another 15 minutes. Remove lid once cooled.",
      "Braise until water has mostly evaporated and mutton has darkened substantially and is beautifully coated with the sauce."
                    ],
    dish_image_url: 'https://assets.vogue.in/photos/5f2d006293fbd755fe1ac36f/2:3/w_2240,c_limit/Chicken%20Chettinad%20easy%20chettinad%20recipes%20chettinad%20cuisine.jpg',
    country: 'India',
    country_bio: "Indian cuisine consists of a variety of regional and traditional cuisines native to India. Given the diversity in soil, climate, culture, ethnic groups, and occupations, these cuisines vary substantially and use locally available spices, herbs, vegetables, and fruits. Indian cuisine has shaped the history of international relations; the spice trade between India and Europe was the primary catalyst for Europe's Age of Discovery.[4] Spices were bought from India and traded around Europe and Asia. Indian cuisine has influenced other cuisines across the world, especially those from Europe (especially Britain), the Middle East, Southern African, East Africa, Southeast Asia, North America, Mauritius, Fiji, Oceania, and the Caribbean.",
    country_image_url: 'https://upload.wikimedia.org/wikipedia/en/thumb/4/41/Flag_of_India.svg/1920px-Flag_of_India.svg.png',
    calories: 472
  },

  {
    name: 'Satay Beef Soup Noodle',
    description: "Warm rice noodles and tender sweet nutty satay beef swimming in a simple broth. A dish that is often served for lunch or an afternoon snack at Hong Kong style cafes. This dish is great for lunch or dinner. A bowl of comfort, perfect for a cold day.",
    average_rating: 4.8,
    categories: ['Main'],
    times: { prep: 20,
             cook: 20,
             total: 40
               },
    ingredients: [
      "500 grams vermicelli rice noodles",
      "7 cups unsalted chicken broth",
      "2 tbsp soy sauce",
      "5 tbsp oyster sauce",
      "½ tbsp sesame oil",
      "½ tsp turmeric",
      "500 grams beef, flank steak recommended",
      "1 tsp cooking oil",
      "¼ tsp Baking soda",
      "4 tsp Soy sauce",
      "1 ½ tsp Cornstarch",
      "½ tsp Garlic powder",
      "2 tsp Water",
      "½ tbsp garlic, minced",
      "3 tbsp peanut butter, smooth kind",
      "½ tsp Ginger powder",
      "2 tbsp Lemongrass, finely minced",
      "1 tsp sesame oil",
      "3 tbsp brown sugar",
      "One Shallot, minced",
      "3 tbsp soy sauce",
      "2 tsp Garlic, minced",
      "1 tsp red chili, finely minced"
                     ],
    recipe: [
      "Slice your steak against the grain and very thinly. Tip: if you freeze the steak for 20-30 minutes, this will allow you to slice the steak very thinly. Transfer beef to a mixing bowl.",
      "To the same mixing bowl, add your beef marinade ingredients. Mix with tongs or your hands and then pack the beef into a ball so that the marinade really soaks into the meat. Set aside.",
      "In another bowl, whisk together your satay sauce ingredients until well combine. Tip: if you have a blender, add your ingredients to the blender and then blend until smooth. Set aside.",
      "Next in a non-stick pan set over medium high heat, add cooking oil and your marinated beef. Fry until the edges are brown and the meat is 50-60% cooked, about 5 minutes.",
      "Then when the beef is 75% cooked, pour in your satay sauce and mix. Cook for 1-2 minutes until beef is cooked through and not red. Transfer to a plate and set aside.",
      "In a pot, boil your rice vermicelli noodles for a couple of minutes loosened and softer, about 2-3 minutes. Strain immediately. Rinse with cold water and strain again. Divide your noodles into 5 bowls.",
      "Divide your satay beef between the bowls placing them over your noodles.",
      "Meanwhile, mix chicken broth, oyster sauce, soy sauce and sesame oil. Bring to a boil. Then divide the broth between the bowl by pouring it over your noodles. Serve and enjoy!"
                    ],
    dish_image_url: 'https://christieathome.com/wp-content/uploads/2021/05/Satay-Beef-Noodle-Soup-8.jpg',
    country: 'Hong Kong',
    country_bio: "Hong Kong cuisine is mainly influenced by Cantonese cuisine, European cuisines (especially British cuisine) and non-Cantonese Chinese cuisines (especially Hakka, Teochew, Hokkien and Shanghainese), as well as Japanese, Korean and Southeast Asian cuisines, due to Hong Kong's past as a British colony and a long history of being an international port of commerce. Complex combinations and international gourmet expertise have given Hong Kong the labels of 'Gourmet Paradise' and 'World's Fair of Food'.",
    country_image_url: 'https://upload.wikimedia.org/wikipedia/commons/thumb/5/5b/Flag_of_Hong_Kong.svg/2880px-Flag_of_Hong_Kong.svg.png',
    calories: 667
  },

  {
    name: 'Baigan Chokha',
    description: "The term chokha refers to any dish of vegetables roasted over a fire or scorched in hot oil, then mashed into a paste, and usually eaten with roti.",
    average_rating: 4.9,
    categories: ['Vegetarian', 'Vegan'],
    times: { prep: 5,
             cook: 25,
             total: 30 },
    ingredients: ["2 large Italian eggplants",
                  "1 tablespoon canola oil",
                  "1/2 medium onion, chopped",
                  "2 /3 cup vegetable oil",
                  "2 cloves garlic, finely chopped",
                  "1 small tomato, chopped",
                  "1/4 teaspoon coarse salt, or to taste",
                  "Freshly ground black pepper to taste",
                  "1 tablespoon coarsely chopped cilantro",
                  "Roti, for serving"],
    recipe: ["Prepare a hot grill or preheat the broiler.",
             "With a fork, pierce the eggplants all over, and place on the grill or under the broiler. Grill or broil until completely charred and soft, about 20 minutes, turning frequently (the eggplants will brown and blister quickly). Remove and allow to cool.",
             "Once cool, cut open the eggplants and scrape out the flesh. The flesh should be soft to the touch and pulpy, and should easily come away from the skin. Set aside.",
             "Heat the canola oil in a frying pan. Add the onion and sauté until translucent. Add the garlic and fry until the garlic turns a dark golden brown, then add the tomato and fry for 1 to 2 minutes.",
             "Stir in the mashed eggplant and cook for about 2 minutes. Season with salt and black pepper to taste. Garnish with the cilantro and serve with roti."],
    dish_image_url: 'https://assets.epicurious.com/photos/5f7b812ee3c3c1d8f0b080da/1:1/w_2240,c_limit/BaiganChkha_RECIPE_091620_11868.jpg',
    country: 'Trinidad & Tobago',
    country_bio: "a unique history and its food is influenced by Indian-South Asian, West African, Creole, European, American, Chinese, Amerindian, and Latin American culinary styles. Trinidad and Tobagonian food is dominated by a wide selection of seafood dishes, most notably, curried crab and dumplings.",
    country_image_url: 'https://upload.wikimedia.org/wikipedia/commons/thumb/6/64/Flag_of_Trinidad_and_Tobago.svg/200px-Flag_of_Trinidad_and_Tobago.svg.png',
    calories: 266
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
    categories: ['Vegetarian'],
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
    categories: ['Lactose'],
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
  },

  {
    name: 'Goan Fish Curry',
    description: "This famous fish curry comes to you from Goa, a little pocket of Indian paradise that's all about the sun, surf, sand and excellent seafood! Deeply aromatic with a tomato and coconut based sauce.",
    average_rating: 3.6,
    categories: ['Pescetarian', 'Lactose'],
    times: { prep: 15,
             cook: 20,
             total: 35
               },
    ingredients: [
      "2 1/2 tbsp Kashmiri chilli powder",
      "1 tbsp coriander",
      "2 tsp cumin",
      "1 tsp turmeric",
      "1/2 tsp fenugreek powder",
      "3/8 tsp ground cloves",
      "6 cloves garlic , minced",
      "1 tbsp fresh ginger , finely grated",
      "2 tbsp tamarind puree",
      "1/2 red onion , chopped",
      "6 tbsp water (plus more, as needed)",
      "3 tbsp vegetable oil",
      "1/2 tsp black mustard seeds",
      "1/2 red onion , cut in half again (like a quartered orange) and thinly sliced",
      "1 tbsp tomato paste",
      "2/3 cup canned tomato pulp/polp (Mutti), OR tomato passata or crushed tomato",
      "2/3 cup water",
      "400ml/ 14oz coconut milk , full fat",
      "1 1/4 tsp salt , cooking/kosher (or 3/4 tsp fine table salt)",
      "1 1/2 tsp sugar",
      "1/4 tsp chilli powder",
      "2 long green chillies , cut into half lengthwise and deseeded",
      "1 tomato , cut into 8 wedges then into 2.5cm chunks",
      "600g / 1.2 lb firm-fleshed white fish , cut into 3cm cubes"
                     ],
    recipe: [
      "Sizzle black mustard seeds: Heat oil over medium heat in a large pot. Add black mustard seeds and let them sizzle for 30 seconds - careful, they might pop!",
      "Saute onion: Add red onion and cook for 3 minutes until edges start to tinge with gold.",
      "Cook off curry paste: Add curry paste and cook for 3 minutes - to evaporate water, make spices bloom and cook garlic & ginger.",
      "Cook off tomato: Turn heat up to medium high. Add tomato paste and tomato pulp, cook for 2 minutes.",
      "Coconut milk: Add water, coconut milk, sugar, salt and chilli powder if using. Stir, then bring to simmer, low heat so it's bubbling gently.",
      "Simmer 2 minutes, add tomato & green chilli: Simmer for 2 minutes, add tomato and green chilli.",
      "Simmer 3 minutes: Simmer for another 3 minutes, stirring every now and then - sauce should be thickened (not watery), it gets looser again when fish is added (because fish will drop some juices = even more flavour!).",
      "Add fish: Add fish, stir, cook for 3 to 4 minutes until fish easily flakes.",
      "Garnish & serve: Remove from stove and transfer to serving bowl. Garnish with coriander/cilantro and fresh green chillies if desired. Serve with basmati rice!"
                ],
    dish_image_url: 'https://www.recipetineats.com/wp-content/uploads/2020/10/Goan-Fish-Curry_6.jpg',
    country: 'India',
    country_bio: "Indian cuisine consists of a variety of regional and traditional cuisines native to India. Given the diversity in soil, climate, culture, ethnic groups, and occupations, these cuisines vary substantially and use locally available spices, herbs, vegetables, and fruits. Indian cuisine has shaped the history of international relations; the spice trade between India and Europe was the primary catalyst for Europe's Age of Discovery.[4] Spices were bought from India and traded around Europe and Asia. Indian cuisine has influenced other cuisines across the world, especially those from Europe (especially Britain), the Middle East, Southern African, East Africa, Southeast Asia, North America, Mauritius, Fiji, Oceania, and the Caribbean.",
    country_image_url: 'https://upload.wikimedia.org/wikipedia/en/thumb/4/41/Flag_of_India.svg/1920px-Flag_of_India.svg.png',
    calories: 484
  },

  {
    name: 'Sopa de Quinoa',
    description: "A gluten-free, nutritious, and tasty soup recipe that's easy to make and a definite crowd pleaser. ",
    average_rating: 3.2,
    categories: ['Vegetarian'],
    times: { prep: 10,
             cook: 40,
             total: 50
               },
    ingredients: [
      "3 ounces dried quinoa",
      "1 large carrot",
      "1 large leek",
      "2 celery stalks",
      "¼ medium white cabbage",
      "4-5 cups water or chicken stock",
      "1 teaspoon garlic minced",
      "Salt black pepper and cumin to taste",
      "Fresh cilantro or celery leaves chopped (optional, for decoration)",
                     ],
    recipe: [
      "Remove veins and sinew from the beef heart and cut the resulting firm meat into 1 1/2 inch cubes.",
      "In a medium bowl, whisk together the aji panca, vegetable oil, red wine vinegar, garlic, oregano, cumin, and salt. Add the cubed beef heart, tossing to coat thoroughly. Cover and refrigerate for at least 3 hours.",
      "Bring a large pot of water to a boil. Add the potatoes. When they are nearly tender, add the corn. When both are cooked through, drain and set aside. When cool enough to handle, cut the corn on the cob into serving sizes. Peel the potatoes and cut into thick slices.",
      "In a small bowl, whisk in desired amount of sliced scallion into the aji amarillo paste. Season with salt and set aside.Set the grill to medium heat.",
      "Place 3-4 beef cubes on each skewer. Set aside the remaining marinade for basting. Arrange the skewers on the preheated grill. Baste the marinade onto the skewers with a pastry brush or fresh corn husks and grill for 3 minutes. Flip to the other side, baste, and grill until cooked through with a little char, another 3 minutes.",
      "Serve hot with the potatoes, corn, and seasoned aji amarillo."
                ],
    dish_image_url: 'https://www.eatperu.com/wp-content/uploads/2020/10/peruvian-soup-recipe-sopa-de-quinoa.webp',
    country: 'Peru',
    country_bio: "Peruvian cuisine reflects local practices and ingredients including influences mainly from the indigenous population, including the Inca, and cuisines brought by immigrants from Europe (Spanish cuisine, Italian cuisine); Asia (Japanese cuisine and Chinese cuisine); and Africa (Maghrebi cuisine and West African cuisine). Without the familiar ingredients from their home countries, immigrants modified their traditional cuisines by using ingredients available in Peru.",
    country_image_url: 'https://upload.wikimedia.org/wikipedia/commons/thumb/c/cf/Flag_of_Peru.svg/510px-Flag_of_Peru.svg.png',
    calories: 200
  },

  {
    name: 'Patacones',
    description: "In some countries they are known as tostones, but in the northern region of Peru, where plantains are abundant and an important part of the daily diet, these tasty fritters are called patacones. They are usually eaten as an accompaniment for meat and fish dishes, instead of bread, French fries, or rice.",
    average_rating: 4.7,
    categories: ['Vegetarian'],
    times: { prep: 60,
             cook: 20,
             total: 80
               },
    ingredients: [
      "3 medium green plantains, unpeeled",
      "1/2 teaspoon kosher salt, plus more to taste",
      "4 cups water, or amount to cover plantains",
      "2 /3 cup vegetable oil"
                ],
    recipe: [
      "Slice the ends off of each plantain, then slice the unpeeled plantains crosswise into 1 1/2-inch wide circles.",
      "Place the plantain slices in a bowl with 1/2 teaspoon salt and 4 cups water to soak for 1 hour.",
      "After soaking, peel the plantain slices. If the peel does not come off easily, make a slit through the skin with a sharp knife, then peel it off. Place the peeled plantain slices on paper towels and pat dry.",
      "In a heavy skillet, heat 1 to 2 inches of vegetable oil to 350 F.",
      "Place plantain slices in the oil and cook until golden (the plantain should sizzle gently). Work in batches if necessary and drain on paper towels.",
      "Use the bottom of a glass or bottle to flatten the slices of plantain into disks about 1/3- to 1/2-inch thick.",
      "Return flattened plantains to the hot oil and fry until a deep golden brown. Drain on paper towels, and sprinkle generously with kosher salt.",
      "Serve plantain warm with aji sauce for dipping."
                ],
    dish_image_url: 'https://as2.ftcdn.net/v2/jpg/05/26/58/77/1000_F_526587756_imAxOTJ9L5NbbegQHYiKWy73ppGz99tS.jpg',
    country: 'Peru',
    country_bio: "Peruvian cuisine reflects local practices and ingredients including influences mainly from the indigenous population, including the Inca, and cuisines brought by immigrants from Europe (Spanish cuisine, Italian cuisine); Asia (Japanese cuisine and Chinese cuisine); and Africa (Maghrebi cuisine and West African cuisine). Without the familiar ingredients from their home countries, immigrants modified their traditional cuisines by using ingredients available in Peru.",
    country_image_url: 'https://upload.wikimedia.org/wikipedia/commons/thumb/c/cf/Flag_of_Peru.svg/510px-Flag_of_Peru.svg.png',
    calories: 491
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
