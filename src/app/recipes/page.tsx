import { getAllRecipes, searchRecipes } from '@/lib/queries';
import SearchBar from '@/components/SearchBar';
import RecipeCard from '@/components/RecipeCard';
import type { Recipe, RecipesSearchParams } from '@/types';

const RECIPES_LIMIT = 100;

export default async function RecipesPage({ searchParams }: RecipesSearchParams): Promise<React.ReactElement> {
  const { q } = await searchParams;

  let recipes: Recipe[] = [];
  let error: string | null = null;
  let totalCount = 0;

  if (q && q.trim()) {
    const result = await searchRecipes(q);
    recipes = result.data ?? [];
    error = result.error;
    totalCount = recipes.length;
  } else {
    const result = await getAllRecipes();
    const allRecipes = result.data ?? [];
    error = result.error;
    totalCount = allRecipes.length;
    recipes = allRecipes.slice(0, RECIPES_LIMIT);
  }

  return (
    <div className="space-y-8">
      <section>
        <h1 className="text-3xl font-bold mb-6">All Recipes</h1>
        <SearchBar />
      </section>

      {error && (
        <div className="alert alert-error">
          <span>Error loading recipes: {error}</span>
        </div>
      )}

      {recipes.length === 0 && !error && (
        <div className="alert alert-info">
          <span>No recipes found. {q ? 'Try a different search.' : 'Check back soon!'}</span>
        </div>
      )}

      {recipes.length > 0 && (
        <section>
          <h2 className="text-xl font-bold mb-4">
            {q ? `Search results for "${q}"` : 'All Recipes'} ({recipes.length}{totalCount > RECIPES_LIMIT ? ` of ${totalCount}` : ''})
          </h2>
          <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">
            {recipes.map((recipe) => (
              <RecipeCard key={recipe.id} recipe={recipe} />
            ))}
          </div>
          {totalCount > RECIPES_LIMIT && !q && (
            <div className="alert alert-warning mt-8">
              <span>Showing {RECIPES_LIMIT} of {totalCount} recipes. Refine your search to find more.</span>
            </div>
          )}
        </section>
      )}
    </div>
  );
}
