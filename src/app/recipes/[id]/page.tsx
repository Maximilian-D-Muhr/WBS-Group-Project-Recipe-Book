import { notFound } from 'next/navigation';
import { getRecipeById } from '@/lib/queries';

type Params = Promise<{ id: string }>;

export default async function RecipeDetailPage({ params }: { params: Params }) {
  const { id } = await params;
  const { data: recipe, error } = await getRecipeById(parseInt(id));

  if (error || !recipe) {
    notFound();
  }

  const ingredients = JSON.parse(recipe.ingredients || '[]');
  const totalTime = recipe.prep_time + recipe.cook_time;

  return (
    <article className="max-w-3xl mx-auto">
      <header className="mb-8">
        <h1 className="text-4xl font-bold mb-4">{recipe.title}</h1>
        <p className="text-lg text-base-content/70 mb-6">{recipe.description}</p>

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
          <ul className="list-disc list-inside space-y-2">
            {ingredients.map((ingredient: string, index: number) => (
              <li key={index} className="text-base-content/80">
                {ingredient}
              </li>
            ))}
          </ul>
        </section>

        <section>
          <h2 className="text-2xl font-bold mb-4">Instructions</h2>
          <p className="whitespace-pre-line text-base-content/80">
            {recipe.instructions}
          </p>
        </section>
      </div>
    </article>
  );
}
