import { notFound } from 'next/navigation';
import { getRecipeById, isInCookbook } from '@/lib/queries';
import RecipeDetailClient from '@/components/RecipeDetailClient';
import type { RecipePageParams } from '@/types';

export default async function RecipeDetailPage({ params }: RecipePageParams): Promise<React.ReactElement> {
  const { id } = await params;
  const recipeId = parseInt(id);
  const { data: recipe, error } = await getRecipeById(recipeId);
  const { data: inCookbookData } = await isInCookbook(recipeId);

  if (error || !recipe) {
    notFound();
  }

  let ingredients: string[] = [];
  try {
    let ingredientsStr = '[]';

    if (recipe.ingredients) {
      if (typeof recipe.ingredients === 'string') {
        ingredientsStr = recipe.ingredients;
      } else if (Buffer.isBuffer(recipe.ingredients)) {
        ingredientsStr = recipe.ingredients.toString('utf-8');
      } else if (typeof recipe.ingredients === 'object') {
        ingredientsStr = JSON.stringify(recipe.ingredients);
      } else {
        ingredientsStr = '[]';
      }
    }

    ingredientsStr = ingredientsStr.trim();

    const parsed: unknown = JSON.parse(ingredientsStr);
    if (Array.isArray(parsed)) {
      ingredients = parsed.map((ing: unknown) =>
        typeof ing === 'string' ? ing : ((ing as { item?: string }).item ?? JSON.stringify(ing))
      );
    }
  } catch (e: unknown) {
    const errorMessage = e instanceof Error ? e.message : 'Unknown error';
    console.error('Failed to parse ingredients for recipe', recipeId, ':', errorMessage);
    ingredients = [];
  }

  const totalTime = (recipe.prep_time ?? 0) + (recipe.cook_time ?? 0);

  return (
    <article className="max-w-6xl mx-auto px-4">
      <header className="mb-8">
        <h1 className="text-4xl font-bold mb-4">{recipe.title}</h1>
        <p className="text-lg text-base-content/70 mb-6">{recipe.description}</p>

        {recipe.image_url && (
          <div className="w-full max-w-md mx-auto mb-6 aspect-square overflow-hidden rounded-lg shadow-lg">
            <img
              src={recipe.image_url}
              alt={recipe.title}
              className="w-full h-full object-cover"
            />
          </div>
        )}

        <div className="flex flex-wrap gap-3">
          <span className="badge badge-outline">Prep: {recipe.prep_time} min</span>
          <span className="badge badge-outline">Cook: {recipe.cook_time} min</span>
          <span className="badge badge-outline">Total: {totalTime} min</span>
          <span className="badge badge-outline">{recipe.servings} servings</span>
        </div>
      </header>

      <div className="grid grid-cols-1 md:grid-cols-2 gap-8">
        <section>
          <h2 className="text-2xl font-bold mb-4">Ingredients</h2>
          {ingredients.length > 0 ? (
            <ul className="list-disc list-inside space-y-2 text-xl">
              {ingredients.map((ingredient, index) => (
                <li key={index} className="text-base-content/80">
                  {ingredient}
                </li>
              ))}
            </ul>
          ) : (
            <p className="text-base-content/60 italic">No ingredients available</p>
          )}
        </section>

        <section>
          <h2 className="text-2xl font-bold mb-4">Instructions</h2>
          <p className="whitespace-pre-line text-base-content/80 text-xl">
            {recipe.instructions}
          </p>
        </section>
      </div>

      <RecipeDetailClient recipeId={recipeId} inCookbook={inCookbookData ?? false} />
    </article>
  );
}
