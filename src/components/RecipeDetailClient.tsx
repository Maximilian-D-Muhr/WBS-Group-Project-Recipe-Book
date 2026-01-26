'use client';

import { useState } from 'react';
import { addRecipeAction } from '@/app/cookbook/actions';
import type { RecipeDetailClientProps } from '@/types';

export default function RecipeDetailClient({ recipeId, inCookbook: initialInCookbook }: RecipeDetailClientProps): React.ReactElement {
  const [inCookbook, setInCookbook] = useState<boolean>(initialInCookbook);
  const [isPending, setIsPending] = useState<boolean>(false);

  const handleAddToCookbook = async (): Promise<void> => {
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
