/**
 * Recipe type from database
 */
export interface Recipe {
  id: number;
  title: string;
  description: string;
  ingredients: string; // JSON stringified array
  instructions: string;
  prep_time: number;
  cook_time: number;
  servings: number;
  image_url: string | null;
  created_at: string;
}

/**
 * Cookbook entry type (user's saved recipe)
 */
export interface CookbookEntry {
  id: number;
  recipe_id: number;
  title?: string;
  description?: string;
  image_url?: string | null;
  prep_time?: number;
  cook_time?: number;
  notes: string | null;
  added_at: string;
}
