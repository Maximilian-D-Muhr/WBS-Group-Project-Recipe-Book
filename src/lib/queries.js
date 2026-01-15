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
  if (!Number.isInteger(id) || id <= 0) {
    return { data: null, error: 'Invalid recipe ID' };
  }
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
  if (!searchTerm || typeof searchTerm !== 'string' || searchTerm.trim().length === 0) {
    return { data: [], error: null };
  }
  if (searchTerm.length > 100) {
    return { data: null, error: 'Search term too long (max 100 characters)' };
  }
  return query(
    `SELECT * FROM recipes
     WHERE title ILIKE $1 OR description ILIKE $1
     ORDER BY title`,
    [`%${searchTerm.trim()}%`]
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
  if (!Number.isInteger(recipeId) || recipeId <= 0) {
    return { data: null, error: 'Invalid recipe ID' };
  }
  const result = await query(
    `INSERT INTO cookbook (recipe_id) VALUES ($1)
     ON CONFLICT (recipe_id) DO NOTHING
     RETURNING *`,
    [recipeId]
  );
  return {
    data: result.data,
    error: result.error,
    wasAdded: result.data && result.data.length > 0,
  };
}

/**
 * Update notes for a cookbook entry
 */
export async function updateCookbookNote(id, notes) {
  if (!Number.isInteger(id) || id <= 0) {
    return { data: null, error: 'Invalid cookbook ID' };
  }
  if (notes && typeof notes !== 'string') {
    return { data: null, error: 'Notes must be a string' };
  }
  return query(
    `UPDATE cookbook SET notes = $1 WHERE id = $2 RETURNING *`,
    [notes || null, id]
  );
}

/**
 * Remove a recipe from the cookbook
 */
export async function removeFromCookbook(id) {
  if (!Number.isInteger(id) || id <= 0) {
    return { data: null, error: 'Invalid cookbook ID' };
  }
  return query('DELETE FROM cookbook WHERE id = $1', [id]);
}

/**
 * Check if a recipe is in the cookbook
 */
export async function isInCookbook(recipeId) {
  if (!Number.isInteger(recipeId) || recipeId <= 0) {
    return { data: false, error: 'Invalid recipe ID' };
  }
  const result = await query(
    'SELECT id FROM cookbook WHERE recipe_id = $1',
    [recipeId]
  );
  return {
    data: result.data && result.data.length > 0,
    error: result.error,
  };
}
