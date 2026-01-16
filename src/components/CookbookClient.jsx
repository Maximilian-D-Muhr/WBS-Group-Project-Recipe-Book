'use client';

import { useState } from 'react';
import CookbookEntry from './CookbookEntry';

/**
 * Container for cookbook entries with alert messages
 * @param {Array} entries - Array of cookbook recipe entries
 * @returns {JSX.Element}
 */
export default function CookbookClient({ entries }) {
  const [error, setError] = useState(null);
  const [successMessage, setSuccessMessage] = useState(null);
  const [visibleEntries, setVisibleEntries] = useState(entries);

  const handleRemove = (entryId) => {
    setVisibleEntries(visibleEntries.filter((e) => e.id !== entryId));
    setSuccessMessage('Recipe removed successfully!');
    setTimeout(() => setSuccessMessage(null), 3000);
  };

  const handleSaveNote = () => {
    setSuccessMessage('Note saved successfully!');
    setTimeout(() => setSuccessMessage(null), 3000);
  };

  return (
    <div className="space-y-6">
      {successMessage && (
        <div className="alert alert-success" role="status">
          <span>{successMessage}</span>
        </div>
      )}
      {error && (
        <div className="alert alert-error" role="alert">
          <span>{error}</span>
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
