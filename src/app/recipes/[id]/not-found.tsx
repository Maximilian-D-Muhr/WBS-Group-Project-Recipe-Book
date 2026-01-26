import Link from 'next/link';

export default function RecipeNotFound(): React.ReactElement {
  return (
    <div className="min-h-[50vh] flex flex-col items-center justify-center text-center">
      <h1 className="text-5xl font-bold text-warning mb-4">404</h1>
      <p className="text-xl text-base-content/70 mb-6">Recipe not found</p>
      <Link href="/recipes" className="btn btn-primary">
        Back to All Recipes
      </Link>
    </div>
  );
}
