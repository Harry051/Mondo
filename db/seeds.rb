# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
recipes = [
  {
    'name' => 'Moussaka',
    'description' => "Moussaka is a classic Greek dish that's perfect comfort food. This version may not be completely traditional, but it's definitely delicious. A family favorite.",
    'average_rating' => 5,
    'categories' => ['Main Course', 'Greek'],
    'times' => { 'prep' => 20,
             'cook' => 70,
             'total' => 90
               }
    'ingredients' => [
                      '2 eggplant aubergine, large',
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
    'recipe' => [
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
    'country' => 'Greece'
    'image_url' => 'https://www.carolinescooking.com/wp-content/uploads/2015/01/moussaka-photo-300x225.jpg'
  },
  {
    'name' => 'Tiradito',
    'description' => 'This classic Japanese-Peruvian dish is easy to prepare and makes a wonderful appetizer.',
    'average_rating' => 5,
    'categories' => ['Appetizer/Starter', 'Peruvian'],
    'times' => { 'prep' => 10,
             'cook' => 0,
             'total' => 10
               }
    'ingredients' => [
                      '1/4 lb white fish 110g, as a chunk, ideally even in shape - I used hake loin',
             '1 tablespoon lime juice',
             '1 tablespoon lemon juice',
             '1 tablespoon aji amarillo chili paste ( or better fresh if you can find it)',
             '1/4 teaspoon salt',
             '1/4 teaspoon grated ginger',
             '1/4 teaspoon grated garlic',
             'A little cilantro to decorate'
                     ],
    'recipe' => [
                 'Thinly slice the fish and place on a plate. Chill while you prepare the sauce',
           'Mix the sauce ingredients together well (lime and lemon juices, aji amarillo, salt, ginger and garlic) then pour over the fish. Serve immediately.'
                ],
    'country' => 'Peru'
    'image_url' => 'https://www.carolinescooking.com/wp-content/uploads/2020/06/tiradito-featured-pic-sq-300x300.jpg'
  },

  {
    'name' => 'Pavlova with raspberries and cream',
    'description' => "A delicious meringue that's soft inside and crisp outside, loaded up with raspberries and cream - such a tasty dessert.",
    'average_rating' => 5,
    'categories' => ['Dessert', 'Australian'],
    'times' => { 'prep' => 15,
             'cook' => 45,
             'total' => 60
               }
    'ingredients' => [
                      '2 egg whites large',
             '1/2 cup granulated sugar 100g (3 1/2oz)',
             '1/2 teaspoon vanilla extract',
             '1/2 teaspoon cornstarch cornflour',
             '1/2 teaspoon white wine vinegar (or red wine/rice vinegar if not available)',
             'To top: 1/2 cup heavy cream 120ml double or whipping cream, 1/2cup raspberries 65g, plus extra to decorate- around 8'
                     ],
    'recipe' => [
                 "Preheat the oven to 300F/150C and line a baking sheet/tray with parchment paper that's at least 8in/20cm square.",
           "Whisk the egg whites in a clean bowl until stiff peaks - the way to know if they are stiff enough is if you try to tip the bowl, if they slide they are not stiff enough, if they don't, they are fine. Avoid beating beyond this point as you may over-beat.",
           'Gradually add the sugar 1tbsp at a time, beating in after each addition, until it is all added and the mixture is glossy.',
           'Add the vanilla, cornstarch and vinegar, whisk in then turn the mixture out into the middle of the parchment-lined tray. Form a circle about 6-7in/15-18cm in diameter with a slight dip in the middle.',
           "Bake in the preheated oven, in the middle of the oven, for approximately 45-50 minutes until it is lightly golden and dry to touch. It will seem crisp when touched (although be gentle so you don't break it). Turn off the oven and leave the pavlova inside with the door closed for a further 50min-1 hour. This will help avoid it sinking and cracking.",
           "Up to around 2hrs before serving, carefully remove the parchment from the bottom of the pavlova and place on a serving plate.",
           "Whip the cream until lightly whipped (soft peaks) then add the raspberries - if using a stand mixture you can probably put them in whole, with a hand mixture you'll need to break them up a bit first. Beat a little more until combined and semi-firm.",
           'Pour the cream mixture into the middle of the pavlova and carefully spread out so you still have a good 1in/3cm or so without cream round the edge. Top with the extra raspberries. Keep chilled until ready to serve.'
                ],
    'country' => 'Australia'
    'image_url' => 'https://www.carolinescooking.com/wp-content/uploads/2016/05/pavlova-raspberries-and-cream-photo-300x225.jpg'
  }
 ]
