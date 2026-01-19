'use client';

import { useState } from 'react';
import { addRecipeAction } from '@/app/cookbook/actions';

/**
 * Interactive recipe detail buttons (add to cookbook)
 * @param {number} recipeId - Recipe ID
 * @param {boolean} initialInCookbook - Whether recipe is already in cookbook
 * @returns {JSX.Element}
 */
export default function RecipeDetailClient({ recipeId, inCookbook: initialInCookbook }) {
  const [inCookbook, setInCookbook] = useState(initialInCookbook);
  const [isPending, setIsPending] = useState(false);

  const handleAddToCookbook = async () => {
    setIsPending(true);
    await addRecipeAction(recipeId);
    setInCookbook(true);
    setIsPending(false);
  };

  return (
    <div className="mt-8">
      {inCookbook ? (
        <span className="badge badge-success badge-lg">In My Cookbook</span>
      ) : (
        <button
          onClick={handleAddToCookbook}
          disabled={isPending}
          className="btn btn-primary btn-lg"
        >
          {isPending ? 'Adding...' : 'Add to My Cookbook'}
        </button>
      )}
    </div>
  );
}
