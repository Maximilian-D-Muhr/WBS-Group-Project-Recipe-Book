export default function RecipesLoading() {
  return (
    <div className="space-y-8">
      <section>
        <h1 className="text-3xl font-bold mb-6">All Recipes</h1>
        <div className="skeleton h-12 w-full max-w-md mx-auto mb-6"></div>
      </section>

      <section>
        <div className="skeleton h-8 w-48 mb-4"></div>
        <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">
          {[1, 2, 3, 4, 5, 6].map((i) => (
            <div key={i} className="card bg-base-100 shadow-md">
              <div className="card-body">
                <div className="skeleton h-6 w-3/4 mb-2"></div>
                <div className="skeleton h-4 w-full mb-1"></div>
                <div className="skeleton h-4 w-2/3 mb-4"></div>
                <div className="skeleton h-8 w-20"></div>
              </div>
            </div>
          ))}
        </div>
      </section>
    </div>
  );
}
