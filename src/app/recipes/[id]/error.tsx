'use client';

import type { ErrorPageProps } from '@/types';

export default function RecipeDetailError({ error, reset }: ErrorPageProps): React.ReactElement {
  return (
    <div className="max-w-3xl mx-auto py-12">
      <div className="alert alert-error" role="alert">
        <div>
          <h3 className="font-bold mb-2">Error loading recipe</h3>
          <p className="text-sm">{error?.message ?? 'Something went wrong while loading the recipe.'}</p>
        </div>
      </div>
      <button
        onClick={() => reset()}
        className="btn btn-primary mt-4"
      >
        Try again
      </button>
    </div>
  );
}
