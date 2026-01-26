// === Domain Types ===

export type RecipeId = number;
export type CookbookEntryId = number;

export type Ingredient = {
  name: string;
  amount: number;
  unit: string;
};

export type Recipe = {
  id: RecipeId;
  title: string;
  description: string;
  image_url: string | null;
  prep_time: number;
  cook_time: number;
  servings: number;
  ingredients: Ingredient[] | string | null;
  instructions: string;
  created_at: Date | string | null;
};

export type CookbookEntry = {
  id: CookbookEntryId;
  recipe_id: RecipeId;
  title: string;
  description: string;
  image_url: string | null;
  prep_time: number;
  cook_time: number;
  notes: string | null;
  added_at: Date | string | null;
};

// === API Response Types ===

export type QueryResult<T> = {
  data: T | null;
  error: string | null;
};

export type QueryResultWithFlag<T> = QueryResult<T> & {
  wasAdded?: boolean;
};

export type ActionResponse = {
  success?: boolean;
  error?: string;
  message?: string;
};

// === Component Props Types ===

export type RecipeCardProps = {
  recipe: Recipe;
};

export type RecipeDetailClientProps = {
  recipeId: RecipeId;
  inCookbook: boolean;
};

export type CookbookClientProps = {
  entries: CookbookEntry[];
};

export type CookbookEntryComponentProps = {
  entry: CookbookEntry;
  onRemove: (entryId: CookbookEntryId) => void;
  onSaveNote: (entryId: CookbookEntryId) => void;
};

// === Navigation Types ===

export type NavLink = {
  href: string;
  label: string;
};

// === Next.js Page Types ===

export type RecipePageParams = {
  params: Promise<{ id: string }>;
};

export type RecipesSearchParams = {
  searchParams: Promise<{ q?: string }>;
};

export type LayoutProps = {
  children: React.ReactNode;
};

export type ErrorPageProps = {
  error: Error & { digest?: string };
  reset: () => void;
};
