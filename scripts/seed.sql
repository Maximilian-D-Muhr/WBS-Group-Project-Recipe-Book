-- Sample Recipe Data
-- Run this in Neon Console after creating the schema

INSERT INTO recipes (title, description, ingredients, instructions, prep_time, cook_time, servings, image_url)
VALUES
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
    'https://unsplash.com/photos/dvgjof0_TP8/download?w=600&h=600&fit=crop'
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
    'https://images.unsplash.com/photo-1546069901-ba9599a7e63c?w=600&h=600&fit=crop'
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
    'https://images.unsplash.com/photo-1499636136210-6f4ee915583e?w=600&h=600&fit=crop'
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
    'https://images.unsplash.com/photo-1609501676725-7186f017a4b7?w=600&h=600&fit=crop'
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
  );

-- Verify data inserted
SELECT 'Sample recipes inserted successfully' AS status, COUNT(*) as recipe_count FROM recipes;
