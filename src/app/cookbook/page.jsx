import { getCookbookEntries } from '@/lib/queries';
import CookbookClient from '@/components/CookbookClient';

export default async function CookbookPage() {
  const { data: entries, error } = await getCookbookEntries();

  return (
    <div className="space-y-8">
      <h1 className="text-3xl font-bold mb-6">My Cookbook</h1>

      {error && (
        <div className="alert alert-error">
          <span>Error loading cookbook: {error}</span>
        </div>
      )}

      {entries && entries.length === 0 && !error && (
        <p className="text-base-content/70">
          No saved recipes yet. Browse recipes and add your favorites!
        </p>
      )}

      {entries && entries.length > 0 && <CookbookClient entries={entries} />}
    </div>
  );
}
