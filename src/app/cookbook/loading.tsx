export default function CookbookLoading(): React.ReactElement {
  return (
    <div className="space-y-8">
      <h1 className="text-3xl font-bold mb-6">My Cookbook</h1>
      <div className="space-y-6">
        {[1, 2, 3].map((i) => (
          <div key={i} className="card bg-base-100 shadow-md">
            <div className="card-body">
              <div className="skeleton h-6 w-3/4 mb-2"></div>
              <div className="skeleton h-4 w-full mb-1"></div>
              <div className="skeleton h-4 w-2/3 mb-4"></div>
              <div className="skeleton h-10 w-40"></div>
            </div>
          </div>
        ))}
      </div>
    </div>
  );
}
