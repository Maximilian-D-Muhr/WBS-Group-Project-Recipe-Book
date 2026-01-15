import { query } from './db.js';

// ========== RECIPES ==========

/**
 * Get all recipes from the database
 */
export async function getAllRecipes() {
  return query('SELECT * FROM recipes ORDER BY created_at DESC');
}

/**
 * Get a single recipe by ID
 */
export async function getRecipeById(id) {
  const result = await query('SELECT * FROM recipes WHERE id = $1', [id]);
  return {
    data: result.data?.[0] || null,
    error: result.error,
  };
}

/**
 * Search recipes by title or description
 */
export async function searchRecipes(searchTerm) {
  return query(
    `SELECT * FROM recipes
     WHERE title ILIKE $1 OR description ILIKE $1
     ORDER BY title`,
    [`%${searchTerm}%`]
  );
}

// ========== COOKBOOK ==========

/**
 * Get all cookbook entries with recipe details
 */
export async function getCookbookEntries() {
  return query(
    `SELECT c.*, r.title, r.description, r.image_url, r.prep_time, r.cook_time
     FROM cookbook c
     JOIN recipes r ON c.recipe_id = r.id
     ORDER BY c.added_at DESC`
  );
}

/**
 * Add a recipe to the cookbook
 */
export async function addToCookbook(recipeId) {
  return query(
    `INSERT INTO cookbook (recipe_id) VALUES ($1)
     ON CONFLICT (recipe_id) DO NOTHING
     RETURNING *`,
    [recipeId]
  );
}

/**
 * Update notes for a cookbook entry
 */
export async function updateCookbookNote(id, notes) {
  return query(
    `UPDATE cookbook SET notes = $1 WHERE id = $2 RETURNING *`,
    [notes, id]
  );
}

/**
 * Remove a recipe from the cookbook
 */
export async function removeFromCookbook(id) {
  return query('DELETE FROM cookbook WHERE id = $1', [id]);
}

/**
 * Check if a recipe is in the cookbook
 */
export async function isInCookbook(recipeId) {
  const result = await query(
    'SELECT id FROM cookbook WHERE recipe_id = $1',
    [recipeId]
  );
  return {
    data: result.data && result.data.length > 0,
    error: result.error,
  };
}
