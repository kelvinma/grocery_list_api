RecipeIngredient.delete_all
Ingredient.delete_all
Recipe.delete_all

Ingredient.create!([
  { name: 'Walnuts', type_of: 'protein', is_vegetarian: true, is_vegan: true },
  { name: 'Almonds', type_of: 'protein', is_vegetarian: true, is_vegan: true },
  { name: 'Apple', type_of: 'fruit', is_vegetarian: true, is_vegan: true },
  { name: 'Cinnamon', type_of: 'seasoning', is_vegetarian: true, is_vegan: true },
  { name: 'Dates', type_of: 'seasoning', is_vegetarian: true, is_vegan: true },
  { name: 'Brown Rice', type_of: 'grain/starch', is_vegetarian: true, is_vegan: true },
  { name: 'Tempeh', type_of: 'protein', is_vegetarian: true, is_vegan: true },
  { name: 'Baby Bok Choy', type_of: 'vegetable', is_vegetarian: true, is_vegan: true },
  { name: 'Red Pepper', type_of: 'vegetable', is_vegetarian: true, is_vegan: true },
  { name: 'Fresh Ginger', type_of: 'seasoning', is_vegetarian: true, is_vegan: true },
  { name: 'Soy Sauce', type_of: 'seasoning', is_vegetarian: true, is_vegan: true },
  { name: 'Olive Oil', type_of: 'seasoning', is_vegetarian: true, is_vegan: true },
  { name: 'Apple Cider Vinegar', type_of: 'seasoning', is_vegetarian: true, is_vegan: true},
  { name: 'Garlic', type_of: 'seasoning', is_vegetarian: true, is_vegan: true },
  { name: 'Water', type_of: 'seasoning', is_vegetarian: true, is_vegan: true },
  { name: 'Quinoa', type_of: 'grain/starch', is_vegetarian: true, is_vegan: true },
  { name: 'Black Beans', type_of: 'protein', is_vegetarian: true, is_vegan: true },
  { name: 'Romaine Lettuce', type_of: 'vegetable', is_vegetarian: true, is_vegan: true },
  { name: 'Tomato', type_of: 'vegetable', is_vegetarian: true, is_vegan: true },
  { name: 'Chili Powder', type_of: 'seasoning', is_vegetarian: true, is_vegan: true},
  { name: 'Cumin', type_of: 'seasoning', is_vegetarian: true, is_vegan: true },
  { name: 'Lime', type_of: 'seasoning', is_vegetarian: true, is_vegan: true },
  { name: 'Yellow Corn', type_of: 'vegetable', is_vegetarian: true, is_vegan: true },
])

Recipe.create!([
  { name: 'Mexican Quinoa Bowl', which_meal: 'Lunch, Dinner', style: 'Mexican',
    description: "Maybe it's the corn, or the fresh lime juice, but a Mexican-spiced meal always reminds me of a refreshing, summer day. But, you can get that feeling any time of year with this filling and finger-licking bowl of quinoa, beans, bright veggies and spices. Consuming beans on a regular basis is associated with a lower risk for heart disease, cancer and type II diabetes. The acidic (and tasty) lime juice helps you absorb more iron from this meal, which is needed to move oxygen throughout the body. Tonight, the cantina comes to your kitchen!",
    instructions: "Mince the garlic. Wash and roughly chop the lettuce. Rinse and roughly chop the tomato(es).
      Heat the olive oil in a skillet or pot (with a lid) over medium-high heat. (To make this recipe oil-free, substitute water for olive oil.) Add garlic, and cook for about 1 minute.
      Then, add to the skillet: quinoa, water, beans, tomatoes, corn, chili powder and cumin. (Tip: Your water measurement should be 2 times the quinoa measurement.) Stir to combine.
      Bring the mixture to a boil. Then, cover with the lid and reduce heat to low.
      Simmer until quinoa is cooked (about 15 minutes). Add salt and pepper, and season to taste.
      Serve over a bed of fresh greens and top with lime juice, avocado and/or fresh cilantro." },
  { name: 'Almost Raw Apple Crisp', which_meal: 'Breakfast', style: 'Breakfast',
    description: "Fruit crisp should be just that - fruity and crispy! Made with crunchy apples and a mix of nuts and spices, this simple recipe has all of the flavor (and none of the goop) of your favorite apple pie.",
    instructions: "Wash and dry your fruit. Slice apples into small, thin pieces and set aside. If you have lemon juice, you can squirt a tiny bit on the apples to prevent browning.
    Combine all other ingredients into a food processor and blend until everything is finely chopped and completely mixed. If you don't have a food processor, give the nuts and dates a rough chop with a good knife.
    Sprinkle the crisp mixture on top of the fruit and enjoy! Add finely chopped fresh mint or basil for an extra fresh boost of flavor and nutrition." },
  { name: 'Bok Choy Stir Fry', which_meal: 'Dinner', style: 'Asian',
    description: "It's hard to beat a simple stir-fry! Tempeh takes center stage tonight. Made from fermented soybeans, tempeh is high in protein and fiber and fills out this hearty meal with a rich, nutty flavor. Bok choy, sometimes called \"Chinese Cabbage,\" is a staple in any authentic stir-fry. Its leaves turn soft and deep green when cooked, while its white stalks happily retain their crispness. Red pepper makes the colors on your plate pop, and packs each serving with Vitamin C. Unlike some stir-fry sauces that are overly sweet or goopy, the sauce on this dish is flavorful and light.",
    instructions: "Bring water and rice to a boil in a pot with a tight-fitting lid. (Your water measurement should be 2 times the rice measurement.) Cover and reduce heat to low. Simmer for 40-50 minutes, or until water is absorbed. Or, use a rice cooker!
      Produce Prep: Rinse all the produce thoroughly. Mince the ginger and garlic. Remove the insides and the stem from the pepper and chop into thin strips. Slice off the woody base of the bok choy head/bunch (other than the base, you should be using the entire head), and then chop the stems finely. Chop the green leaves of the bok choy into thick strips. Chop the tempeh into cubes.
      Heat the olive oil and tempeh for 5-10 minutes on medium-high heat in a large pan or wok until golden brown. (To make this recipe oil-free, use a little bit of water and a non-stick pan.)
      Turn the heat down to medium-low. To keep the tempeh crispy, heat the rest of the food in a separate pan. In the new pan, stir in the ginger, garlic, and pepper and a touch of olive oil if needed. After 5 minutes, add the bok choy stems, soy sauce, and water.
      When the pepper is slightly tender, turn off the heat and mix in the vinegar and the bok choy leaves. Serve over brown rice. Season to taste. This dish is fairly mild, so turn it up a notch by adding more ginger, garlic, soy sauce, and even some spicy sriracha or pepper!" }
])

RecipeIngredient.create!([
  { recipe_id: 2, ingredient_id: 1, amount: '1 Cup' },
  { recipe_id: 2, ingredient_id: 2, amount: '1 Cup' },
  { recipe_id: 2, ingredient_id: 3, amount: '4' },
  { recipe_id: 2, ingredient_id: 4, amount: '0.5 teaspoons' },
  { recipe_id: 2, ingredient_id: 5, amount: '8' },
  { recipe_id: 3, ingredient_id: 6, amount: '0.5 Cup' },
  { recipe_id: 3, ingredient_id: 7, amount: '2 packages' },
  { recipe_id: 3, ingredient_id: 8, amount: '4' },
  { recipe_id: 3, ingredient_id: 9, amount: '2' },
  { recipe_id: 3, ingredient_id: 10, amount: '4 tablespoons' },
  { recipe_id: 3, ingredient_id: 11, amount: '5 tablespoons' },
  { recipe_id: 3, ingredient_id: 12, amount: '2 tablespoons' },
  { recipe_id: 3, ingredient_id: 13, amount: '2 tablespoons' },
  { recipe_id: 3, ingredient_id: 14, amount: '8 cloves' },
  { recipe_id: 3, ingredient_id: 15, amount: '0.5 Cup' },
  { recipe_id: 1, ingredient_id: 16, amount: '1 Cup' },
  { recipe_id: 1, ingredient_id: 17, amount: '2 Cans' },
  { recipe_id: 1, ingredient_id: 18, amount: '4 Cups' },
  { recipe_id: 1, ingredient_id: 19, amount: '2' },
  { recipe_id: 1, ingredient_id: 20, amount: '2 teaspoons' },
  { recipe_id: 1, ingredient_id: 12, amount: '4 teaspoons' },
  { recipe_id: 1, ingredient_id: 21, amount: '1 teaspoon' },
  { recipe_id: 1, ingredient_id: 14, amount: '4 cloves' },
  { recipe_id: 1, ingredient_id: 15, amount: '2 Cups' },
  { recipe_id: 1, ingredient_id: 22, amount: '2' },
  { recipe_id: 1, ingredient_id: 23, amount: '1 Cup' }
])
