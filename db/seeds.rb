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
    dish_image_url: 'https://www.carolinescooking.com/wp-content/uploads/2015/01/moussaka-photo-300x225.jpg',
    country: 'Greece',
    country_bio: "In common with many other cuisines of the Mediterranean, it is founded on the triad of wheat, olive oil, and wine. It uses vegetables, olive oil, grains, fish, and meat, including pork, poultry, veal and beef, lamb, rabbit, and goat. Other important ingredients include pasta (for example hilopites), cheeses, lemon juice, herbs, olives, and yogurt. Bread made of wheat is ubiquitous; other grains, notably barley, are also used, especially for paximathia. Common dessert ingredients include nuts, honey, fruits, and filo pastries. It continues traditions from Ancient Greek and Byzantine cuisine, while incorporating Balkan and Italian influences. - Wikipedia",
    country_image_url: 'https://upload.wikimedia.org/wikipedia/commons/thumb/5/5c/Flag_of_Greece.svg/510px-Flag_of_Greece.svg.png'
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
    dish_image_url: 'https://www.carolinescooking.com/wp-content/uploads/2020/06/tiradito-featured-pic-sq-300x300.jpg',
    country: 'Peru',
    country_bio: "Peruvian cuisine reflects local practices and ingredients including influences mainly from the indigenous population, including the Inca, and cuisines brought by immigrants from Europe (Spanish cuisine, Italian cuisine); Asia (Japanese cuisine and Chinese cuisine); and Africa (Maghrebi cuisine and West African cuisine). Without the familiar ingredients from their home countries, immigrants modified their traditional cuisines by using ingredients available in Peru. - Wikipedia",
    country_image_url: 'https://upload.wikimedia.org/wikipedia/commons/thumb/c/cf/Flag_of_Peru.svg/510px-Flag_of_Peru.svg.png'
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
    dish_image_url: 'https://www.carolinescooking.com/wp-content/uploads/2016/05/pavlova-raspberries-and-cream-photo-300x225.jpg',
    country: 'Australia',
    country_bio: "In common with many other cuisines of the Mediterranean, it is founded on the triad of wheat, olive oil, and wine. It uses vegetables, olive oil, grains, fish, and meat, including pork, poultry, veal and beef, lamb, rabbit, and goat. Other important ingredients include pasta (for example hilopites), cheeses, lemon juice, herbs, olives, and yogurt. Bread made of wheat is ubiquitous; other grains, notably barley, are also used, especially for paximathia. Common dessert ingredients include nuts, honey, fruits, and filo pastries. It continues traditions from Ancient Greek and Byzantine cuisine, while incorporating Balkan and Italian influences. - Wikipedia",
    country_image_url: 'https://upload.wikimedia.org/wikipedia/commons/thumb/8/88/Flag_of_Australia_%28converted%29.svg/510px-Flag_of_Australia_%28converted%29.svg.png'
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
    dish_image_url: 'https://www.carolinescooking.com/wp-content/uploads/2021/04/vegetarian-breakfast-burrito-featured-pic-sq-300x300.jpg',
    country: 'American',
    country_bio: "Principal influences on American cuisine are Native American, British, French, German, Spanish, and Italian cuisines. Whilst some of American cuisine is fusion cuisine, many regions in America have a specific regional cuisine. Each are deeply rooted in ethnic heritages, for example Cajun, Louisiana Creole, Native American, New England Algonquian, New Mexican, Pennsylvania Dutch, Soul food, Texan/Tex-Mex, Southern, and Tlingit. - Wikipedia",
    country_image_url: 'https://upload.wikimedia.org/wikipedia/en/thumb/a/a4/Flag_of_the_United_States.svg/440px-Flag_of_the_United_States.svg.png'
  }
 ]

# Clear models before reseeding
Dish.destroy_all
Country.destroy_all

# Create country and dish with the hash above
recipes.each do |r|
  country = Country.create!(name: r[:country], story: r[:country_bio])
  puts "Country: #{country.id} created!"

  dish = Dish.create!(
    title: r[:name],
    description: r[:description],
    average_rating: r[:average_rating],
    categories: r[:categories],
    times: r[:times],
    ingredients: r[:ingredients],
    recipe: r[:recipe],
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
