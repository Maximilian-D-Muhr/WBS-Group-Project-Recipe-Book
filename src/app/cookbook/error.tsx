'use client';

import type { ErrorPageProps } from '@/types';

export default function CookbookError({ error, reset }: ErrorPageProps): React.ReactElement {
  return (
    <div className="min-h-[50vh] flex flex-col items-center justify-center text-center">
      <h1 className="text-4xl font-bold text-error mb-4">Cookbook Error</h1>
      <p className="text-base-content/70 mb-6">{error.message}</p>
      <button onClick={reset} className="btn btn-primary">
        Try again
      </button>
    </div>
  );
}
