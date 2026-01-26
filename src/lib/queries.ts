import { query } from './db';
import type { Recipe, CookbookEntry, QueryResult, QueryResultWithFlag } from '@/types';

// ========== RECIPES ==========

export async function getAllRecipes(): Promise<QueryResult<Recipe[]>> {
  return query<Recipe>('SELECT * FROM recipes ORDER BY created_at DESC');
}

export async function getRecipeById(id: number): Promise<QueryResult<Recipe | null>> {
  if (!Number.isInteger(id) || id <= 0) {
    return { data: null, error: 'Invalid recipe ID' };
  }
  const result = await query<Recipe>('SELECT * FROM recipes WHERE id = $1', [id]);
  return {
    data: result.data?.[0] ?? null,
    error: result.error,
  };
}

export async function searchRecipes(searchTerm: string): Promise<QueryResult<Recipe[]>> {
  if (!searchTerm || typeof searchTerm !== 'string' || searchTerm.trim().length === 0) {
    return { data: [], error: null };
  }
  if (searchTerm.length > 100) {
    return { data: null, error: 'Search term too long (max 100 characters)' };
  }
  return query<Recipe>(
    `SELECT * FROM recipes
     WHERE title ILIKE $1 OR description ILIKE $1
     ORDER BY title`,
    [`%${searchTerm.trim()}%`]
  );
}

// ========== COOKBOOK ==========

export async function getCookbookEntries(): Promise<QueryResult<CookbookEntry[]>> {
  return query<CookbookEntry>(
    `SELECT c.*, r.title, r.description, r.image_url, r.prep_time, r.cook_time
     FROM cookbook c
     JOIN recipes r ON c.recipe_id = r.id
     ORDER BY c.added_at DESC`
  );
}

type CookbookInsertResult = {
  id: number;
  recipe_id: number;
  notes: string | null;
  added_at: Date | string | null;
};

export async function addToCookbook(recipeId: number): Promise<QueryResultWithFlag<CookbookInsertResult[]>> {
  if (!Number.isInteger(recipeId) || recipeId <= 0) {
    return { data: null, error: 'Invalid recipe ID' };
  }
  const result = await query<CookbookInsertResult>(
    `INSERT INTO cookbook (recipe_id) VALUES ($1)
     ON CONFLICT (recipe_id) DO NOTHING
     RETURNING *`,
    [recipeId]
  );
  return {
    data: result.data,
    error: result.error,
    wasAdded: result.data !== null && result.data.length > 0,
  };
}

export async function updateCookbookNote(id: number, notes: string | null): Promise<QueryResult<CookbookEntry[]>> {
  if (!Number.isInteger(id) || id <= 0) {
    return { data: null, error: 'Invalid cookbook ID' };
  }
  if (notes !== null && typeof notes !== 'string') {
    return { data: null, error: 'Notes must be a string' };
  }
  return query<CookbookEntry>(
    'UPDATE cookbook SET notes = $1 WHERE id = $2 RETURNING *',
    [notes ?? null, id]
  );
}

export async function removeFromCookbook(id: number): Promise<QueryResult<unknown[]>> {
  if (!Number.isInteger(id) || id <= 0) {
    return { data: null, error: 'Invalid cookbook ID' };
  }
  return query('DELETE FROM cookbook WHERE id = $1', [id]);
}

export async function isInCookbook(recipeId: number): Promise<QueryResult<boolean>> {
  if (!Number.isInteger(recipeId) || recipeId <= 0) {
    return { data: false, error: 'Invalid recipe ID' };
  }
  const result = await query<{ id: number }>(
    'SELECT id FROM cookbook WHERE recipe_id = $1',
    [recipeId]
  );
  return {
    data: result.data !== null && result.data.length > 0,
    error: result.error,
  };
}
