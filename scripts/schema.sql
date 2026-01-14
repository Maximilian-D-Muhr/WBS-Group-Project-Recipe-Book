-- Recipe Creator Database Schema
-- Run this in Neon Console to create the tables

-- Recipes table
CREATE TABLE IF NOT EXISTS recipes (
  id SERIAL PRIMARY KEY,
  title VARCHAR(255) NOT NULL,
  description TEXT,
  ingredients JSONB DEFAULT '[]',
  instructions TEXT,
  prep_time INTEGER DEFAULT 0,
  cook_time INTEGER DEFAULT 0,
  servings INTEGER DEFAULT 4,
  image_url VARCHAR(500),
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Cookbook table (user's saved recipes)
CREATE TABLE IF NOT EXISTS cookbook (
  id SERIAL PRIMARY KEY,
  recipe_id INTEGER REFERENCES recipes(id) ON DELETE CASCADE,
  notes TEXT,
  added_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  UNIQUE(recipe_id)
);

-- Index for faster recipe searches
CREATE INDEX IF NOT EXISTS idx_recipes_title ON recipes(title);

-- Verify tables created
SELECT 'Tables created successfully' AS status;
