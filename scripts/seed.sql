-- Sample Recipe Data
-- Run this in Neon Console after creating the schema

-- Sample Recipes (Continued) - Add to Existing Table

INSERT INTO recipes (title, description, ingredients, instructions, prep_time, cook_time, servings, image_url)
VALUES
(
'Chicken Tikka Masala',
'Creamy tomato-based Indian curry with marinated chicken',
'["500g Chicken breast, cubed", "1 Onion, chopped", "2 cloves Garlic, minced", "1 inch Ginger, grated", "1 can (400g) Crushed tomatoes", "200ml Cream", "2 tbsp Garam Masala", "1 tbsp Turmeric", "1 tsp Chili powder", "1 Lemon, juice"]',
'Step 1: Marinate chicken in yogurt, ginger, garlic, turmeric, and chili powder for 30 mins
Step 2: Sauté onion, ginger, and garlic until golden
Step 3: Add garam masala and cook for 1 min
Step 4: Stir in crushed tomatoes, simmer for 15 mins
Step 5: Add chicken and cook until done
Step 6: Stir in cream and lemon juice, simmer for 5 mins
Step 7: Serve with rice or naan bread',
15,
30,
4,
'https://images.unsplash.com/photo-1588166524941-3bf61a9c41db?ixlib=rb-4.1.0&q=85&fm=jpg&crop=entropy&cs=srgb&w=600&h=600&fit=crop'
  ),
  (
'Beef Stroganoff',
'Russian dish with beef in a sour cream sauce',
'["500g Beef sirloin, sliced", "1 Onion, chopped", "250g Mushrooms, sliced", "2 tbsp Flour", "500ml Beef broth", "150ml Sour cream", "1 tbsp Dijon mustard", "Salt", "Pepper"]',
'Step 1: Sear beef in a pan until browned
Step 2: Sauté onion and mushrooms until softened
Step 3: Sprinkle flour over beef and vegetables, cook for 1 min
Step 4: Gradually add beef broth, stir until thickened
Step 5: Stir in sour cream and Dijon mustard
Step 6: Season with salt and pepper, serve over egg noodles',
10,
25,
4,
'https://images.unsplash.com/photo-1644592219048-5c070fd3c91c?ixlib=rb-4.1.0&q=85&fm=jpg&crop=entropy&cs=srgb&w=600&h=600&fit=crop'
  ),
  (
'Pad Thai',
'Thai stir-fried rice noodle dish',
'["200g Rice noodles", "200g Shrimp, peeled", "1 Egg", "1/4 cup Bean sprouts", "2 tbsp Fish sauce", "1 tbsp Tamarind paste", "1 tbsp Sugar", "1 tbsp Lime juice", "1/4 cup Chopped peanuts", "1/4 cup Scallions"]',
'Step 1: Soak rice noodles in warm water for 30 mins
Step 2: Stir-fry shrimp until pink
Step 3: Push shrimp to one side, crack egg and scramble
Step 4: Add noodles, fish sauce, tamarind paste, sugar, and lime juice
Step 5: Toss everything together, add bean sprouts, peanuts, and scallions
Step 6: Serve immediately',
15,
20,
2,
'https://images.unsplash.com/photo-1637806931098-af30b519be53?ixlib=rb-4.1.0&q=85&fm=jpg&crop=entropy&cs=srgb&w=600&h=600&fit=crop'
  ),
  (
'Shepherds Pie',
'Savory pie with a minced meat base and mashed potato topping',
'["500g Ground beef", "1 Onion, chopped", "2 Carrots, diced", "2 Celery stalks, diced", "2 tbsp Tomato paste", "500ml Beef broth", "1 tsp Worcestershire sauce", "500g Potatoes, peeled", "100ml Milk", "50g Butter"]',
'Step 1: Brown ground beef in a pan
Step 2: Add onion, carrots, and celery, cook until softened
Step 3: Stir in tomato paste, beef broth, and Worcestershire sauce, simmer for 15 mins
Step 4: Boil potatoes until tender, mash with milk and butter
Step 5: Transfer meat mixture to a baking dish, top with mashed potatoes
Step 6: Bake at 375°F (190°C) for 20 mins',
30,
45,
6,
'https://plus.unsplash.com/premium_photo-1726718442760-cccbd5f1e252?ixlib=rb-4.1.0&q=85&fm=jpg&crop=entropy&cs=srgb&w=600&h=600&fit=crop'
  ),
  (
'Greek Salad',
'Refreshing salad with tomatoes, cucumbers, feta, and olives',
'["2 Tomatoes, diced", "1 Cucumber, diced", "1/2 Red onion, thinly sliced", "100g Feta cheese, crumbled", "1/4 cup Kalamata olives, pitted", "2 tbsp Olive oil", "1 tbsp Red wine vinegar", "1 tsp Dried oregano"]',
'Step 1: Combine tomatoes, cucumber, red onion, feta, and olives in a bowl
Step 2: Dress with olive oil, red wine vinegar, and oregano
Step 3: Toss gently and serve',
10,
5,
4,
'https://plus.unsplash.com/premium_photo-1690561082636-06237f98bfab?ixlib=rb-4.1.0&q=85&fm=jpg&crop=entropy&cs=srgb&w=600&h=600&fit=crop'
  ),
  (
'Kimchi Fried Rice',
'Korean fried rice with kimchi',
'["2 cups Cooked rice", "1 cup Kimchi, chopped", "1/2 Onion, chopped", "2 cloves Garlic, minced", "1 tbsp Gochujang (Korean chili paste)", "1 tbsp Soy sauce", "1 tbsp Sesame oil", "1 Egg (optional)"]',
'Step 1: Sauté onion and garlic until fragrant
Step 2: Add kimchi and cook for 5 mins
Step 3: Stir in rice, gochujang, and soy sauce
Step 4: Fry until heated through
Step 5: Drizzle with sesame oil, top with fried egg (optional)',
10,
15,
2,
'https://plus.unsplash.com/premium_photo-1700161713033-3e0d305c59ce?ixlib=rb-4.1.0&q=85&fm=jpg&crop=entropy&cs=srgb&w=600&h=600&fit=crop'
  ),
  (
'French Toast',
'Classic breakfast dish made with fried bread',
'["4 slices Bread", "2 Eggs", "1/4 cup Milk", "1 tbsp Sugar", "1/2 tsp Cinnamon", "Butter, for frying"]',
'Step 1: Whisk together eggs, milk, sugar, and cinnamon
Step 2: Dip bread slices into egg mixture
Step 3: Fry in butter until golden brown
Step 4: Serve with maple syrup or fruit',
5,
10,
2,
'https://plus.unsplash.com/premium_photo-1663840225558-03ac41c68873?ixlib=rb-4.1.0&q=85&fm=jpg&crop=entropy&cs=srgb&w=600&h=600&fit=crop'
  ),
  (
'Lentil Soup',
'Hearty and flavorful soup made with lentils',
'["1 cup Lentils", "1 Onion, chopped", "2 Carrots, diced", "2 Celery stalks, diced", "4 cups Vegetable broth", "1 tbsp Tomato paste", "1 tsp Dried thyme", "Salt", "Pepper"]',
'Step 1: Sauté onion, carrots, and celery until softened
Step 2: Add lentils, vegetable broth, tomato paste, and thyme
Step 3: Simmer for 30 mins until lentils are tender
Step 4: Season with salt and pepper',
10,
40,
4,
'https://plus.unsplash.com/premium_photo-1712678665743-15e3833da37e?ixlib=rb-4.1.0&q=85&fm=jpg&crop=entropy&cs=srgb&w=600&h=600&fit=crop'
  ),
  (
'Chicken Noodle Soup',
'Comforting soup with chicken and noodles',
'["500g Chicken breast, cooked and shredded", "4 cups Chicken broth", "1 Onion, chopped", "2 Carrots, diced", "2 Celery stalks, diced", "1 cup Noodles", "Salt", "Pepper"]',
'Step 1: Sauté onion, carrots, and celery until softened
Step 2: Add chicken broth and bring to a boil
Step 3: Add noodles and cook according to package directions
Step 4: Stir in chicken, season with salt and pepper',
15,
25,
4,
'https://plus.unsplash.com/premium_photo-1664472752075-d5b2b3de0a88?ixlib=rb-4.1.0&q=85&fm=jpg&crop=entropy&cs=srgb&w=600&h=600&fit=crop'
  ),
  (
'Sushi Rolls',
'Japanese dish with vinegared rice and various fillings',
'["Sushi rice", "Nori seaweed sheets", "Avocado, sliced", "Cucumber, sliced", "Smoked salmon", "Soy sauce", "Wasabi", "Pickled ginger"]',
'Step 1: Cook sushi rice and season with vinegar
Step 2: Place nori sheet on a bamboo mat
Step 3: Spread rice evenly over nori
Step 4: Add avocado, cucumber, and salmon
Step 5: Roll tightly using the bamboo mat
Step 6: Slice into sushi rolls
Step 7: Serve with soy sauce, wasabi, and pickled ginger',
20,
30,
2,
'https://images.unsplash.com/photo-1582450871972-ab5ca641643d?ixlib=rb-4.1.0&q=85&fm=jpg&crop=entropy&cs=srgb&w=600&h=600&fit=crop'
  ),
  (
'Moussaka',
'Greek baked dish with eggplant, meat sauce, and béchamel',
'["2 Eggplants, sliced", "500g Ground lamb", "1 Onion, chopped", "2 cloves Garlic, minced", "1 can (400g) Crushed tomatoes", "1 tbsp Tomato paste", "1 tsp Cinnamon", "50g Butter", "50g Flour", "500ml Milk", "Nutmeg"]',
'Step 1: Grill or bake eggplant slices until tender
Step 2: Brown ground lamb with onion and garlic
Step 3: Add crushed tomatoes, tomato paste, and cinnamon, simmer for 15 mins
Step 4: Make béchamel sauce with butter, flour, and milk, season with nutmeg
Step 5: Layer eggplant, meat sauce, and béchamel in a baking dish
Step 6: Bake at 375°F (190°C) for 30 mins',
45,
60,
6,
'https://plus.unsplash.com/premium_photo-1664647841223-34681b3a90bd?ixlib=rb-4.1.0&q=85&fm=jpg&crop=entropy&cs=srgb&w=600&h=600&fit=crop'
  ),
  (
'Guacamole',
'Mexican avocado dip',
'["2 Avocados", "1/4 Red onion, finely chopped", "1 Tomato, diced", "1/2 Jalapeño, minced", "1 tbsp Lime juice", "Salt", "Cilantro, chopped (optional)"]',
'Step 1: Mash avocados in a bowl
Step 2: Stir in red onion, tomato, jalapeño, and lime juice
Step 3: Season with salt and cilantro (optional)',
5,
10,
4,
'https://plus.unsplash.com/premium_photo-1681406689584-2f7612fa98a4?ixlib=rb-4.1.0&q=85&fm=jpg&crop=entropy&cs=srgb&w=600&h=600&fit=crop'
  ),
  (
    'Spaghetti Carbonara',
    'Classic Italian pasta dish with creamy sauce and bacon',
    '["400g Spaghetti", "200g Guanciale", "4 Egg yolks", "100g Pecorino Romano", "Black pepper", "Salt"]',
    'Step 1: Cook pasta in salted boiling water until al dente (8-10 min)
Step 2: Fry guanciale in a large pan until crispy
Step 3: Mix egg yolks with grated Pecorino in a bowl
Step 4: Drain pasta, reserve 1 cup pasta water
Step 5: Add hot pasta to guanciale, turn off heat
Step 6: Stir in egg mixture quickly, add pasta water as needed for creaminess
Step 7: Season with black pepper and serve immediately',
    10,
    20,
    4,
    'https://images.unsplash.com/photo-1621996346565-e3dbc646d9a9?w=600&h=600&fit=crop'
  ),
  (
    'Caesar Salad',
    'Crispy romaine lettuce with creamy Caesar dressing and parmesan',
    '["1 Romaine lettuce", "50g Parmesan cheese", "100g Croutons", "2 tbsp Caesar dressing", "Black pepper"]',
    'Step 1: Wash and tear romaine lettuce into bite-sized pieces
Step 2: Make croutons by frying bread cubes in olive oil until golden
Step 3: Prepare Caesar dressing (mayo, anchovy, garlic, lemon juice)
Step 4: Toss lettuce with dressing in a large bowl
Step 5: Top with parmesan shavings and croutons
Step 6: Season with black pepper and serve',
    15,
    0,
    2,
    'https://images.unsplash.com/photo-1512621776951-a57141f2eefd?w=600&h=600&fit=crop'
  ),
  (
    'Chocolate Chip Cookies',
    'Soft and chewy cookies loaded with chocolate chips',
    '["225g Butter", "200g Brown sugar", "100g White sugar", "2 Eggs", "1 tbsp Vanilla extract", "280g Flour", "1 tsp Baking soda", "1 tsp Salt", "340g Chocolate chips"]',
    'Step 1: Preheat oven to 375°F (190°C)
Step 2: Cream butter with sugars until fluffy
Step 3: Beat in eggs and vanilla extract
Step 4: Mix flour, baking soda, and salt in separate bowl
Step 5: Combine wet and dry ingredients
Step 6: Fold in chocolate chips
Step 7: Drop spoonfuls onto baking sheet
Step 8: Bake for 9-11 minutes until golden brown
Step 9: Cool on baking sheet for 2 minutes, then transfer to wire rack',
    15,
    12,
    24,
    'https://images.unsplash.com/photo-1607623814075-e51df1bdc82f?w=600&h=600&fit=crop'
  ),
  (
    'Chicken Stir Fry',
    'Quick and easy Asian-inspired chicken with vegetables',
    '["500g Chicken breast", "2 cups Broccoli", "1 Red bell pepper", "200g Snow peas", "3 tbsp Soy sauce", "2 tbsp Sesame oil", "3 cloves Garlic", "1 tbsp Ginger", "2 tbsp Rice vinegar", "1 tbsp Cornstarch"]',
    'Step 1: Cut chicken into bite-sized pieces
Step 2: Cut vegetables into uniform sizes
Step 3: Mix soy sauce, sesame oil, vinegar, and cornstarch for sauce
Step 4: Heat wok or large pan over high heat
Step 5: Cook chicken until 75% done, remove and set aside
Step 6: Add garlic and ginger, cook for 30 seconds
Step 7: Add vegetables and stir fry for 3-4 minutes
Step 8: Return chicken to pan, pour sauce over
Step 9: Toss everything together for 1-2 minutes until sauce thickens
Step 10: Serve hot with rice',
    20,
    15,
    4,
    'https://images.unsplash.com/photo-1568299869110-461d8dd19601?w=600&h=600&fit=crop'
  ),
  (
    'Margherita Pizza',
    'Simple and delicious pizza with fresh mozzarella and basil',
    '["500g Pizza dough", "400g San Marzano tomatoes", "300g Fresh mozzarella", "Fresh basil leaves", "Olive oil", "Salt", "Black pepper", "Garlic"]',
    'Step 1: Preheat oven to 475°F (245°C)
Step 2: Shape pizza dough into a 12-inch round
Step 3: Brush dough with olive oil
Step 4: Spread crushed tomatoes evenly on dough
Step 5: Season tomatoes with salt, pepper, and minced garlic
Step 6: Tear mozzarella and distribute over tomatoes
Step 7: Drizzle with olive oil
Step 8: Bake for 12-15 minutes until crust is golden
Step 9: Add fresh basil leaves after baking
Step 10: Slice and serve immediately',
    15,
    15,
    2,
    'https://images.unsplash.com/photo-1604068549290-dea0e4a305ca?w=600&h=600&fit=crop'
  ),
  (
    'Frozen Pizza',
    'The ultimate lazy masterpiece - from freezer to table',
    '["1 Frozen Pizza", "Oven"]',
    'Step 1: Preheat oven to 180°C (as per package instructions)
Step 2: Remove frozen pizza from freezer
Step 3: Place directly on oven rack or baking tray
Step 4: Bake for 12-18 minutes until crust is crispy
Step 5: Remove from oven
Step 6: Let cool for 1 minute
Step 7: Slice and serve
CHEF''S NOTE: No prep time needed - straight from freezer to your table!',
    1,
    15,
    3,
    'https://images.unsplash.com/photo-1569718733340-fa203233bf52?w=600&h=600&fit=crop'
  ),
  (
    'Instant Noodle Soup',
    'The college student essential - instant gratification in a bowl',
    '["1 Package Instant Noodles", "500ml Water", "1 Egg", "Green onions", "Optional: soy sauce, chili oil"]',
    'Step 1: Boil water in a pot
Step 2: Add instant noodles
Step 3: Cook for 3-4 minutes until noodles are soft
Step 4: Add egg (optional - cook for 1 minute)
Step 5: Add green onions
Step 6: Season with soy sauce or chili oil if desired
Step 7: Pour into bowl and serve immediately
PRO TIP: This recipe was perfected over many late-night study sessions',
    2,
    5,
    1,
    'https://images.unsplash.com/photo-1555507036-ab1f4038808a?w=600&h=600&fit=crop'
  ),
  (
    'Tomato Soup',
    'Classic comfort soup with fresh tomatoes',
    '["1kg Fresh tomatoes", "1 Onion", "2 Garlic cloves", "500ml Vegetable broth", "200ml Cream", "Basil", "Olive oil", "Salt and pepper"]',
    'Step 1: Roast tomatoes in oven at 200°C for 30 minutes
Step 2: Sauté onion and garlic in olive oil
Step 3: Add roasted tomatoes to the pan
Step 4: Pour in vegetable broth
Step 5: Simmer for 20 minutes
Step 6: Blend soup until smooth
Step 7: Stir in cream
Step 8: Season with salt, pepper, and fresh basil
Step 9: Serve hot with crusty bread',
    10,
    40,
    4,
    'https://images.unsplash.com/photo-1547592166-7aae4d755b86?w=600&h=600&fit=crop'
  ),
  (
    'Beef Tacos',
    'Delicious Mexican-inspired street tacos',
    '["500g Ground beef", "8 Corn tortillas", "1 Onion", "Cilantro", "Lime", "Salsa", "Sour cream", "Cheese"]',
    'Step 1: Brown ground beef in a skillet with diced onion
Step 2: Season with cumin, chili powder, salt and pepper
Step 3: Cook for 8-10 minutes until beef is cooked through
Step 4: Warm tortillas in a dry pan
Step 5: Fill tortillas with beef mixture
Step 6: Top with cilantro, onion, and lime
Step 7: Serve with salsa and sour cream',
    15,
    20,
    4,
    'https://images.unsplash.com/photo-1565299585323-38d6b0865b47?w=600&h=600&fit=crop'
  ),
  (
    'Greek Salad',
    'Fresh Mediterranean salad with feta cheese',
    '["2 Cucumbers", "4 Tomatoes", "1 Red onion", "200g Feta cheese", "100g Kalamata olives", "Olive oil", "Vinegar", "Oregano"]',
    'Step 1: Chop cucumbers and tomatoes into chunks
Step 2: Slice red onion thinly
Step 3: Combine all vegetables in a large bowl
Step 4: Add kalamata olives
Step 5: Crumble feta cheese over the top
Step 6: Drizzle with olive oil and vinegar
Step 7: Season with oregano, salt and pepper
Step 8: Toss gently and serve',
    15,
    0,
    4,
    'https://images.unsplash.com/photo-1540189549336-e6e99c3679fe?w=600&h=600&fit=crop'
  ),
  (
    'Sushi Rolls',
    'Homemade sushi with fresh fish and vegetables',
    '["2 Cups cooked sushi rice", "4 Nori sheets", "200g Fresh salmon", "1 Cucumber", "1 Avocado", "Soy sauce", "Wasabi", "Ginger"]',
    'Step 1: Prepare sushi rice and let cool
Step 2: Place nori on bamboo mat shiny side down
Step 3: Spread thin layer of rice on nori
Step 4: Add salmon, cucumber, and avocado in the center
Step 5: Roll tightly using the mat
Step 6: Slice into 6-8 pieces
Step 7: Serve with soy sauce, wasabi, and pickled ginger',
    20,
    15,
    2,
    'https://images.unsplash.com/photo-1579584425555-c3ce17fd4351?w=600&h=600&fit=crop'
  ),
  (
    'Beef Steak',
    'Perfectly grilled medium-rare steak',
    '["2 Ribeye steaks (300g each)", "Butter", "Garlic", "Fresh thyme", "Salt", "Black pepper"]',
    'Step 1: Remove steaks from refrigerator 30 minutes before cooking
Step 2: Pat dry with paper towels
Step 3: Season generously with salt and pepper
Step 4: Heat cast iron skillet to very hot
Step 5: Sear steaks 4-5 minutes per side for medium-rare
Step 6: Add butter, garlic, and thyme in the last minute
Step 7: Rest steaks for 5 minutes before serving
Step 8: Slice and serve with your favorite side',
    5,
    12,
    2,
    'https://images.unsplash.com/photo-1432139555190-58524dae6a55?w=600&h=600&fit=crop'
  ),
  (
    'Pasta Carbonara',
    'Italian classic with eggs and bacon',
    '["400g Spaghetti", "200g Bacon", "4 Eggs", "100g Parmesan", "Black pepper"]',
    'Step 1: Cook spaghetti in salted boiling water
Step 2: Fry bacon until crispy
Step 3: Whisk eggs with grated Parmesan
Step 4: Drain pasta, reserve pasta water
Step 5: Mix hot pasta with bacon
Step 6: Remove from heat and add egg mixture
Step 7: Toss quickly, adding pasta water as needed
Step 8: Season with black pepper and serve',
    5,
    15,
    4,
    'https://images.unsplash.com/photo-1645112411341-6c4ee32510d8?w=600&h=600&fit=crop'
  ),
  (
    'Pancakes',
    'Fluffy breakfast pancakes with syrup',
    '["2 Cups flour", "2 Eggs", "1.5 Cups milk", "4 tbsp Butter", "2 tsp Baking powder", "Maple syrup"]',
    'Step 1: Mix flour, baking powder, salt in a bowl
Step 2: Whisk eggs, milk, and melted butter together
Step 3: Combine wet and dry ingredients until just mixed
Step 4: Heat griddle or pan over medium heat
Step 5: Pour batter and cook until bubbles form
Step 6: Flip and cook until golden brown
Step 7: Stack on plate and drizzle with maple syrup
Step 8: Serve warm with butter',
    10,
    20,
    4,
    'https://images.unsplash.com/photo-1567620905732-2d1ec7ab7445?w=600&h=600&fit=crop'
  ),
  (
    'Pad Thai',
    'Thai street food favorite with rice noodles',
    '["300g Rice noodles", "200g Shrimp", "2 Eggs", "3 Garlic cloves", "100g Bean sprouts", "2 tbsp Tamarind paste", "Fish sauce", "Lime"]',
    'Step 1: Soak rice noodles in warm water for 30 minutes
Step 2: Heat wok over high heat and add oil
Step 3: Stir-fry shrimp until pink
Step 4: Push shrimp aside and scramble eggs
Step 5: Add minced garlic and cook briefly
Step 6: Add drained noodles and tamarind paste
Step 7: Toss in fish sauce and mix well
Step 8: Add bean sprouts and cook for 1 minute
Step 9: Serve with lime wedges',
    20,
    15,
    2,
    'https://images.unsplash.com/photo-1481070414601-52ec2a4bacf7?w=600&h=600&fit=crop'
  ),
  (
    'Burger',
    'Juicy homemade burger with all the fixings',
    '["400g Ground beef", "4 Burger buns", "4 Lettuce leaves", "4 Tomato slices", "4 Cheese slices", "Onion", "Condiments"]',
    'Step 1: Form ground beef into 4 patties
Step 2: Season patties with salt and pepper
Step 3: Cook on grill or skillet 3-4 minutes per side
Step 4: Toast buns lightly
Step 5: Place cheese on patty while still hot
Step 6: Assemble burger with lettuce, tomato, and onion
Step 7: Add your favorite condiments
Step 8: Serve immediately',
    10,
    15,
    4,
    'https://images.unsplash.com/photo-1593618998160-e34014e67546?w=600&h=600&fit=crop'
  ),
  (
    'Quesadilla',
    'Cheesy Mexican tortilla sandwich',
    '["4 Flour tortillas", "300g Shredded cheese", "200g Cooked chicken", "1 Bell pepper", "1 Onion", "Sour cream", "Salsa"]',
    'Step 1: Heat skillet over medium heat
Step 2: Place tortilla in skillet
Step 3: Top with cheese, chicken, and vegetables
Step 4: Cover with second tortilla
Step 5: Cook until bottom is golden, about 3-4 minutes
Step 6: Flip carefully and cook other side
Step 7: Transfer to cutting board and cut into triangles
Step 8: Serve with sour cream and salsa',
    10,
    10,
    2,
    'https://images.unsplash.com/photo-1565229656933-4b7ce993cab9?w=600&h=600&fit=crop'
  ),
  (
    'Grilled Salmon',
    'Omega-3 rich grilled salmon fillet',
    '["4 Salmon fillets (150g each)", "Lemon", "Dill", "Olive oil", "Salt", "Black pepper"]',
    'Step 1: Preheat grill to medium-high heat
Step 2: Pat salmon dry with paper towels
Step 3: Brush with olive oil and season with salt and pepper
Step 4: Place skin-side down on grill
Step 5: Cook for 4-5 minutes without moving
Step 6: Flip carefully and cook another 3-4 minutes
Step 7: Garnish with fresh dill and lemon
Step 8: Serve with roasted vegetables',
    5,
    10,
    4,
    'https://images.unsplash.com/photo-1580959375944-abd7e991b971?w=600&h=600&fit=crop'
  ),
  (
    'Vegetable Curry',
    'Fragrant and colorful Indian curry',
    '["2 Bell peppers", "300g Chickpeas", "2 Carrots", "1 Onion", "3 Garlic cloves", "2 tbsp Curry powder", "400ml Coconut milk", "Ginger", "Cilantro"]',
    'Step 1: Heat oil in large pot and sauté onion, garlic, and ginger
Step 2: Add curry powder and cook for 1 minute
Step 3: Add chopped vegetables and chickpeas
Step 4: Pour in coconut milk
Step 5: Simmer for 20-25 minutes until vegetables are tender
Step 6: Season with salt to taste
Step 7: Garnish with fresh cilantro
Step 8: Serve with basmati rice or naan',
    15,
    30,
    4,
    'https://images.unsplash.com/photo-1476124369162-f0bd1e1b2e25?w=600&h=600&fit=crop'
  ),
  (
    'Tiramisu',
    'Classic Italian dessert with coffee and mascarpone',
    '["300g Mascarpone", "3 Eggs", "100g Sugar", "24 Ladyfinger biscuits", "300ml Strong coffee", "Cocoa powder", "Marsala wine"]',
    'Step 1: Whisk egg yolks with sugar until pale
Step 2: Fold in mascarpone cheese gently
Step 3: In separate bowl, whip egg whites until stiff peaks
Step 4: Fold egg whites into mascarpone mixture
Step 5: Dip ladyfingers in coffee mixed with Marsala
Step 6: Layer in dish: cookies, then cream, repeat
Step 7: Dust top with cocoa powder
Step 8: Refrigerate for 4 hours before serving',
    20,
    0,
    6,
    'https://images.unsplash.com/photo-1571877227200-a0fb08a01a09?w=600&h=600&fit=crop'
  ),
  (
    'Lemon Cake',
    'Bright and zesty lemon cake',
    '["2 Cups flour", "200g Butter", "300g Sugar", "3 Eggs", "1 Cup milk", "4 Lemons", "Baking powder"]',
    'Step 1: Preheat oven to 180°C
Step 2: Cream butter and sugar together
Step 3: Beat in eggs one at a time
Step 4: Alternate adding flour mixture and milk
Step 5: Fold in lemon zest and juice
Step 6: Pour into greased pan
Step 7: Bake for 35-40 minutes until golden
Step 8: Cool and serve with lemon glaze',
    15,
    40,
    8,
    'https://images.unsplash.com/photo-1578985545062-69928b1d9587?w=600&h=600&fit=crop'
  ),
  (
    'Fish and Chips',
    'Classic British comfort food',
    '["400g Fish fillets", "300g Potatoes", "1 Cup flour", "1 Egg", "Beer", "Salt", "Vinegar", "Tartar sauce"]',
    'Step 1: Cut potatoes into thick chips
Step 2: Deep fry chips until golden, set aside
Step 3: Make batter with flour, egg, and beer
Step 4: Pat fish dry and coat with flour
Step 5: Dip in batter and deep fry until golden
Step 6: Drain on paper towels
Step 7: Serve with chips, vinegar, and tartar sauce
Step 8: Enjoy this British classic!',
    15,
    25,
    2,
    'https://images.unsplash.com/photo-1534080564419-4481377183f0?w=600&h=600&fit=crop'
  ),
  (
    'Smoothie Bowl',
    'Breakfast bowl with granola and fruit',
    '["2 Cups Greek yogurt", "1 Cup berries", "1 Banana", "1 Cup granola", "Coconut flakes", "Honey", "Almond milk"]',
    'Step 1: Blend berries, banana, and yogurt with almond milk
Step 2: Pour smoothie into bowl
Step 3: Top with granola
Step 4: Add fresh berries
Step 5: Sprinkle coconut flakes
Step 6: Drizzle with honey
Step 7: Add sliced almonds if desired
Step 8: Eat with spoon and enjoy!',
    10,
    5,
    1,
    'https://images.unsplash.com/photo-1590301157890-4810ed352733?w=600&h=600&fit=crop'
  ),
  (
    'Ramen',
    'Japanese comfort noodle soup',
    '["4 Cups Ramen broth", "200g Ramen noodles", "2 Eggs", "100g Pork belly", "Green onions", "Nori sheets", "Sesame oil"]',
    'Step 1: Heat ramen broth in pot
Step 2: Boil ramen noodles separately, then drain
Step 3: Slice pork belly and cook until caramelized
Step 4: Boil eggs until soft-boiled, then peel
Step 5: Assemble: noodles in bowl, pour hot broth
Step 6: Top with pork, eggs, and nori
Step 7: Garnish with green onions and sesame oil
Step 8: Eat immediately while hot',
    10,
    30,
    1,
    'https://images.unsplash.com/photo-1568050559173-a58ac90e0e6b?w=600&h=600&fit=crop'
  ),
  (
    'Caprese Salad',
    'Simple Italian salad with tomato and mozzarella',
    '["4 Large tomatoes", "250g Fresh mozzarella", "Fresh basil", "Olive oil", "Balsamic vinegar", "Salt", "Black pepper"]',
    'Step 1: Slice tomatoes into thick rounds
Step 2: Slice fresh mozzarella
Step 3: Arrange on plate alternating tomato and cheese
Step 4: Tear fresh basil over the top
Step 5: Drizzle with olive oil
Step 6: Add few drops of balsamic vinegar
Step 7: Season with salt and black pepper
Step 8: Serve immediately',
    5,
    0,
    2,
    'https://images.unsplash.com/photo-1599599810694-b5ac4dd26626?w=600&h=600&fit=crop'
  ),
  (
    'Beef Chili',
    'Hearty and spicy beef chili',
    '["500g Ground beef", "2 Cans kidney beans", "400g Canned tomatoes", "2 Onions", "3 Garlic cloves", "2 tbsp Chili powder", "Cumin", "Beef broth"]',
    'Step 1: Brown ground beef in large pot with onions
Step 2: Add garlic and chili powder, cook 1 minute
Step 3: Add cumin and tomatoes
Step 4: Pour in beef broth
Step 5: Add kidney beans
Step 6: Simmer for 30-40 minutes
Step 7: Taste and adjust seasonings
Step 8: Serve hot with toppings like sour cream',
    15,
    45,
    6,
    'https://images.unsplash.com/photo-1585521922961-961b74f0f9d0?w=600&h=600&fit=crop'
  ),
  (
    'Avocado Toast',
    'Millennial favorite with smashed avocado',
    '["2 Slices whole grain bread", "1 Avocado", "2 Eggs", "Lime", "Red pepper flakes", "Salt", "Olive oil"]',
    'Step 1: Toast bread until golden and crispy
Step 2: Fry or poach eggs to your liking
Step 3: Cut avocado in half and remove pit
Step 4: Scoop onto cutting board and mash
Step 5: Mix mashed avocado with lime juice and salt
Step 6: Spread avocado generously on toast
Step 7: Top with fried eggs
Step 8: Sprinkle with red pepper flakes and serve',
    5,
    10,
    1,
    'https://images.unsplash.com/photo-1606220945770-6c3cfe3f3330?w=600&h=600&fit=crop'
  ),
  (
    'Guacamole',
    'Creamy Mexican avocado dip',
    '["3 Ripe avocados", "1 Lime", "1 Red onion", "Cilantro", "Tomato", "Jalapeño", "Salt", "Tortilla chips"]',
    'Step 1: Cut avocados in half and remove pits
Step 2: Scoop into bowl
Step 3: Mash with fork until desired consistency
Step 4: Squeeze lime juice over top
Step 5: Add diced red onion and cilantro
Step 6: Fold in diced tomato and jalapeño
Step 7: Season with salt to taste
Step 8: Serve immediately with tortilla chips',
    10,
    0,
    4,
    'https://images.unsplash.com/photo-1611214155371-62535016515f?w=600&h=600&fit=crop'
  ),
  (
    'Minestrone Soup',
    'Hearty Italian vegetable soup',
    '["2 Onions", "3 Carrots", "3 Celery stalks", "2 Cans tomatoes", "1 Can white beans", "100g Pasta", "Vegetable broth", "Spinach", "Basil"]',
    'Step 1: Sauté onion, carrot, and celery
Step 2: Add garlic and cook 1 minute
Step 3: Pour in vegetable broth and canned tomatoes
Step 4: Add white beans
Step 5: Simmer for 20 minutes
Step 6: Add pasta and cook until al dente
Step 7: Stir in fresh spinach
Step 8: Season with salt, pepper, and fresh basil',
    15,
    35,
    6,
    'https://images.unsplash.com/photo-1609137253924-643f82d67d12?w=600&h=600&fit=crop'
  ),
  (
    'Brownies',
    'Fudgy chocolate brownies',
    '["200g Dark chocolate", "150g Butter", "200g Sugar", "3 Eggs", "100g Flour", "1 tbsp Cocoa powder", "Vanilla extract"]',
    'Step 1: Preheat oven to 180°C
Step 2: Melt chocolate and butter together
Step 3: Beat eggs with sugar until fluffy
Step 4: Fold in chocolate mixture
Step 5: Add flour, cocoa powder, and vanilla
Step 6: Pour into greased pan
Step 7: Bake for 25-30 minutes (center should be fudgy)
Step 8: Cool and cut into squares',
    10,
    30,
    12,
    'https://images.unsplash.com/photo-1607623814075-e51df1bdc82f?w=600&h=600&fit=crop'
  ),
  (
    'Shrimp Scampi',
    'Garlic and butter shrimp pasta',
    '["400g Spaghetti", "500g Large shrimp", "6 Garlic cloves", "100ml White wine", "4 tbsp Butter", "Lemon", "Red pepper flakes", "Parsley"]',
    'Step 1: Cook spaghetti in salted boiling water
Step 2: Heat butter and minced garlic in large skillet
Step 3: Add shrimp and cook until pink
Step 4: Pour in white wine and simmer 2 minutes
Step 5: Drain pasta and add to skillet
Step 6: Toss to combine
Step 7: Squeeze lemon juice and sprinkle parsley
Step 8: Serve immediately',
    10,
    15,
    4,
    'https://images.unsplash.com/photo-1604959597512-b659ca7268f4?w=600&h=600&fit=crop'
  ),
  (
    'Falafel',
    'Crispy Middle Eastern chickpea fritters',
    '["400g Canned chickpeas", "1 Onion", "4 Garlic cloves", "100g Parsley", "100g Cilantro", "2 tbsp Flour", "Cumin", "Coriander"]',
    'Step 1: Drain and rinse chickpeas
Step 2: Process chickpeas with onion, garlic, herbs
Step 3: Mix in flour and spices
Step 4: Let mixture rest 1 hour in fridge
Step 5: Form into balls or patties
Step 6: Deep fry until golden brown
Step 7: Drain on paper towels
Step 8: Serve with tahini sauce and pita bread',
    15,
    20,
    4,
    'https://images.unsplash.com/photo-1585238341710-4811eb76ce70?w=600&h=600&fit=crop'
  );



-- Verify data inserted
SELECT 'Sample recipes inserted successfully' AS status, COUNT(*) as recipe_count FROM recipes;