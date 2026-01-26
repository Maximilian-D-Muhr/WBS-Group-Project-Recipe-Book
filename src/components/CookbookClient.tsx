'use client';

import { useState } from 'react';
import CookbookEntry from './CookbookEntry';
import type { CookbookClientProps, CookbookEntry as CookbookEntryType, CookbookEntryId } from '@/types';

export default function CookbookClient({ entries }: CookbookClientProps): React.ReactElement {
  const [successMessage, setSuccessMessage] = useState<string | null>(null);
  const [visibleEntries, setVisibleEntries] = useState<CookbookEntryType[]>(entries);

  const handleRemove = (entryId: CookbookEntryId): void => {
    setVisibleEntries(visibleEntries.filter((e) => e.id !== entryId));
    setSuccessMessage('Recipe removed successfully!');
    setTimeout(() => setSuccessMessage(null), 3000);
  };

  const handleSaveNote = (): void => {
    setSuccessMessage('Note saved successfully!');
    setTimeout(() => {
      window.location.reload();
    }, 2000);
  };

  return (
    <div className="space-y-6">
      {successMessage && (
        <div className="alert alert-success" role="status">
          <span>{successMessage}</span>
        </div>
      )}
      {visibleEntries.map((entry) => (
        <CookbookEntry
          key={entry.id}
          entry={entry}
          onRemove={handleRemove}
          onSaveNote={handleSaveNote}
        />
      ))}
    </div>
  );
}
