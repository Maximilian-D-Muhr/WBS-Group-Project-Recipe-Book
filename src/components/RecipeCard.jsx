import Link from 'next/link';

/**
 * Individual recipe card preview with title, description, and time/servings
 * @param {Object} recipe - Recipe data object
 * @returns {JSX.Element}
 */
export default function RecipeCard({ recipe }) {
  const totalTime = recipe.prep_time + recipe.cook_time;

  return (
    <Link
      href={`/recipes/${recipe.id}`}
      className="card bg-base-100 shadow-md hover:shadow-lg transition-shadow cursor-pointer"
    >
      <div className="card-body">
        <h3 className="card-title">{recipe.title}</h3>
        <p className="text-base-content/70 line-clamp-2">{recipe.description}</p>
        <div className="card-actions justify-end mt-4">
          <span className="badge badge-ghost">{totalTime} min</span>
          <span className="badge badge-outline">{recipe.servings} servings</span>
        </div>
      </div>
    </Link>
  );
}
