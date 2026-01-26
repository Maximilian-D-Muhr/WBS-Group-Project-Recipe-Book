import Link from 'next/link';
import type { RecipeCardProps } from '@/types';

export default function RecipeCard({ recipe }: RecipeCardProps): React.ReactElement {
  const totalTime = recipe.prep_time + recipe.cook_time;

  return (
    <Link
      href={`/recipes/${recipe.id}`}
      className="card bg-base-100 shadow-md hover:shadow-lg transition-shadow cursor-pointer"
    >
      <div className="card-body flex flex-col items-center">
        {recipe.image_url && (
          <div className="w-32 h-32 mb-4 flex-shrink-0">
            <img
              src={recipe.image_url}
              alt={recipe.title}
              className="w-full h-full object-cover rounded-full shadow-md"
            />
          </div>
        )}
        <h3 className="card-title text-center">{recipe.title}</h3>
        <p className="text-base-content/70 line-clamp-2 text-center">{recipe.description}</p>
        <div className="card-actions justify-center mt-4">
          <span className="badge badge-ghost">{totalTime} min</span>
          <span className="badge badge-outline">{recipe.servings} servings</span>
        </div>
      </div>
    </Link>
  );
}
