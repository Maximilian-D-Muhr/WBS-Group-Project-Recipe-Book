import Link from 'next/link';
import { getAllRecipes } from '@/lib/queries';

/**
 * Home page with recipe grid gallery (limited to 8 newest recipes)
 * @returns {JSX.Element}
 */
export default async function HomePage() {
  const { data: allRecipes = [] } = await getAllRecipes();
  const recipes = allRecipes.slice(0, 8);
  const hasMoreRecipes = allRecipes.length > 8;

  return (
    <div className="space-y-8">
      <section className="text-center">
        <h1 className="text-4xl font-bold mb-4">Recipe Creator</h1>
        <p className="text-lg text-base-content/70 mb-2">
          Discover our collection of recipes
        </p>
        <p className="text-base-content/60 mb-8">
          Click on any recipe to view details or add to your cookbook
        </p>
      </section>

      <section className="grid grid-cols-2 md:grid-cols-3 lg:grid-cols-4 gap-6">
        {recipes.map((recipe) => (
          <Link
            key={recipe.id}
            href={`/recipes/${recipe.id}`}
            className="group relative overflow-hidden rounded-lg shadow-md hover:shadow-xl transition-all duration-300 aspect-square"
          >
            {recipe.image_url ? (
              <>
                <img
                  src={recipe.image_url}
                  alt={recipe.title}
                  className="w-full h-full object-cover group-hover:scale-105 transition-transform duration-300"
                />
                <div className="absolute inset-0 bg-black/40 group-hover:bg-black/50 transition-colors duration-300 flex items-end">
                  <h3 className="text-white font-bold text-center w-full pb-4 px-2">
                    {recipe.title}
                  </h3>
                </div>
              </>
            ) : (
              <div className="w-full h-full bg-base-200 flex items-center justify-center">
                <span className="text-center px-4">
                  <p className="font-bold">{recipe.title}</p>
                </span>
              </div>
            )}
          </Link>
        ))}
      </section>

      {hasMoreRecipes && (
        <section className="flex justify-center py-8">
          <Link
            href="/recipes"
            className="btn btn-primary btn-lg"
          >
            View More Recipes
          </Link>
        </section>
      )}
    </div>
  );
}
