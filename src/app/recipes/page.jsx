import { getAllRecipes, searchRecipes } from '@/lib/queries';
import SearchBar from '@/components/SearchBar';
import RecipeCard from '@/components/RecipeCard';

export default async function RecipesPage({ searchParams }) {
  const { q } = await searchParams;

  let recipes = [];
  let error = null;

  if (q && q.trim()) {
    const result = await searchRecipes(q);
    recipes = result.data || [];
    error = result.error;
  } else {
    const result = await getAllRecipes();
    recipes = result.data || [];
    error = result.error;
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
            {q ? `Search results for "${q}"` : 'All Recipes'} ({recipes.length})
          </h2>
          <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">
            {recipes.map((recipe) => (
              <RecipeCard key={recipe.id} recipe={recipe} />
            ))}
          </div>
        </section>
      )}
    </div>
  );
}
