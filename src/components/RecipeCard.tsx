import Link from 'next/link';
import { Recipe } from '@/types';

interface RecipeCardProps {
  recipe: Recipe;
}

export default function RecipeCard({ recipe }: RecipeCardProps) {
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
