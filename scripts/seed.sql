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
'Pesto Pasta',
'Italian pasta dish with pesto sauce',
'["300g Pasta", "1/2 cup Pesto", "1/4 cup Parmesan cheese"]',
'Step 1: Cook pasta according to package directions
Step 2: Drain pasta and mix with pesto and parmesan cheese',
10,
15,
2,
'https://plus.unsplash.com/premium_photo-1705338026209-e6f86c9eeaae?ixlib=rb-4.1.0&q=85&fm=jpg&crop=entropy&cs=srgb&w=600&h=600&fit=crop'
  ),
  (
'Corn Chowder',
'Creamy soup with corn and potatoes',
'["4 cups Corn kernels", "2 Potatoes, diced", "1 Onion, chopped", "4 cups Vegetable broth", "1 cup Cream"]',
'Step 1: Sauté onion and potatoes until softened
Step 2: Add corn kernels and vegetable broth, simmer for 15 mins
Step 3: Stir in cream',
15,
30,
4,
'https://images.unsplash.com/photo-1644483662084-5a690debfdf8?ixlib=rb-4.1.0&q=85&fm=jpg&crop=entropy&cs=srgb&w=600&h=600&fit=crop'
  ),
  (
'Clam Chowder',
'Classic New England soup with clams',
'["4 cups Clams, chopped", "2 Potatoes, diced", "1 Onion, chopped", "4 cups Vegetable broth", "1 cup Cream"]',
'Step 1: Sauté onion and potatoes until softened
Step 2: Add clams and vegetable broth, simmer for 15 mins
Step 3: Stir in cream',
20,
40,
4,
'https://images.unsplash.com/photo-1560684352-8497838a2229?ixlib=rb-4.1.0&q=85&fm=jpg&crop=entropy&cs=srgb&w=600&h=600&fit=crop'
  ),
  (
'Chicken Biryani',
'Indian mixed rice dish',
'["500g Chicken, marinated", "2 cups Basmati rice", "1 Onion, sliced", "1/4 cup Yogurt", "1 tbsp Ginger-garlic paste", "1 tsp Garam masala", "1/2 tsp Turmeric", "1/4 cup Mint leaves", "1/4 cup Cilantro"]',
'Step 1: Marinate chicken with yogurt, ginger-garlic paste, garam masala, and turmeric
Step 2: Layer rice, chicken, onion, mint, and cilantro in a pot
Step 3: Cook until rice is tender',
45,
75,
6,
'https://images.unsplash.com/photo-1589302168068-964664d93dc0?ixlib=rb-4.1.0&q=85&fm=jpg&crop=entropy&cs=srgb&w=600&h=600&fit=crop'
  ),
  (
'Jambalaya',
'American rice dish with meat and vegetables',
'["500g Chicken, diced", "500g Andouille sausage, sliced", "1 Onion, chopped", "1 Green bell pepper, chopped", "2 cups Rice", "4 cups Chicken broth", "1 tbsp Cajun seasoning"]',
'Step 1: Brown chicken and sausage in a pot
Step 2: Add onion and bell pepper, cook until softened
Step 3: Add rice, chicken broth, and Cajun seasoning, simmer until rice is tender',
30,
60,
6,
'https://plus.unsplash.com/premium_photo-1667807522175-bc48128e951e?ixlib=rb-4.1.0&q=85&fm=jpg&crop=entropy&cs=srgb&w=600&h=600&fit=crop'
  ),
  (
'Black Bean Soup',
'Hearty soup made with black beans',
'["2 cans Black beans", "1 Onion, chopped", "2 cloves Garlic, minced", "4 cups Vegetable broth", "1 tbsp Cumin", "1/2 tsp Chili powder"]',
'Step 1: Sauté onion and garlic until softened
Step 2: Add black beans, vegetable broth, cumin, and chili powder, simmer for 20 mins',
20,
40,
4,
'https://plus.unsplash.com/premium_photo-1726862909502-2345256df8fd?ixlib=rb-4.1.0&q=85&fm=jpg&crop=entropy&cs=srgb&w=600&h=600&fit=crop'
  ),
  (
'Spaghetti Carbonara',
'Italian pasta dish with eggs, cheese, and bacon',
'["300g Spaghetti", "100g Bacon, diced", "2 Eggs", "1/2 cup Parmesan cheese", "Black pepper"]',
'Step 1: Cook spaghetti according to package directions
Step 2: Fry bacon until crispy
Step 3: Whisk eggs and parmesan cheese together
Step 4: Combine cooked spaghetti, bacon, and egg mixture, season with black pepper',
15,
25,
2,
'https://images.unsplash.com/photo-1608756687911-aa1599ab3bd9?ixlib=rb-4.1.0&q=85&fm=jpg&crop=entropy&cs=srgb&w=600&h=600&fit=crop'
  );



-- Verify data inserted
SELECT 'Sample recipes inserted successfully' AS status, COUNT(*) as recipe_count FROM recipes;