type Params = Promise<{ id: string }>;

export default async function RecipeDetailPage({ params }: { params: Params }) {
  const { id } = await params;

  return (
    <article className="max-w-3xl mx-auto">
      <header className="mb-8">
        <h1 className="text-3xl font-bold mb-2">Recipe {id}</h1>
        <p className="text-base-content/70">
          Recipe details will be displayed here once the database is connected.
        </p>
      </header>
    </article>
  );
}
