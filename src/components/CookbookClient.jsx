'use client';

import { useState } from 'react';
import { removeRecipeAction, updateNoteAction } from '@/app/cookbook/actions';

export default function CookbookClient({ entries }) {
  const [editingId, setEditingId] = useState(null);
  const [notes, setNotes] = useState({});
  const [savingId, setSavingId] = useState(null);
  const [removingId, setRemovingId] = useState(null);
  const [error, setError] = useState(null);
  const [successMessage, setSuccessMessage] = useState(null);

  const handleRemove = async (cookbookId) => {
    if (!confirm('Are you sure you want to remove this recipe from your cookbook?')) {
      return;
    }

    setRemovingId(cookbookId);
    setError(null);
    try {
      const response = await removeRecipeAction(cookbookId);
      if (response.error) {
        setError(response.error);
      } else {
        setSuccessMessage('Recipe removed successfully!');
        setTimeout(() => setSuccessMessage(null), 3000);
      }
    } finally {
      setRemovingId(null);
    }
  };

  const handleSaveNote = async (cookbookId) => {
    setSavingId(cookbookId);
    setError(null);
    try {
      const formData = new FormData();
      formData.append('cookbookId', cookbookId.toString());
      formData.append('notes', notes[cookbookId] || '');
      const response = await updateNoteAction({}, formData);
      if (response.error) {
        setError(response.error);
      } else {
        setSuccessMessage('Note saved successfully!');
        setEditingId(null);
        const newNotes = { ...notes };
        delete newNotes[cookbookId];
        setNotes(newNotes);
        setTimeout(() => setSuccessMessage(null), 3000);
      }
    } finally {
      setSavingId(null);
    }
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
      {entries.map((entry) => (
        <div key={entry.id} className="card bg-base-100 shadow-md">
          <div className="card-body">
            <h3 className="card-title">{entry.title}</h3>
            <p className="text-base-content/70">{entry.description}</p>

            <div className="flex flex-wrap gap-2 mb-4">
              <span className="badge badge-outline">Prep: {entry.prep_time} min</span>
              <span className="badge badge-outline">Cook: {entry.cook_time} min</span>
            </div>

            {editingId === entry.id ? (
              <div className="space-y-3">
                <textarea
                  className="textarea textarea-bordered w-full"
                  placeholder="Add notes about this recipe..."
                  value={notes[entry.id] || entry.notes || ''}
                  onChange={(e) => setNotes({ ...notes, [entry.id]: e.target.value })}
                />
                <div className="flex gap-2">
                  <button
                    onClick={() => handleSaveNote(entry.id)}
                    disabled={savingId === entry.id}
                    className="btn btn-sm btn-primary"
                  >
                    {savingId === entry.id ? 'Saving...' : 'Save'}
                  </button>
                  <button
                    onClick={() => setEditingId(null)}
                    disabled={savingId === entry.id}
                    className="btn btn-sm btn-ghost"
                  >
                    Cancel
                  </button>
                </div>
              </div>
            ) : (
              <div>
                {entry.notes && (
                  <p className="text-base-content/80 mb-3">
                    <strong>Notes:</strong> {entry.notes}
                  </p>
                )}
                <div className="card-actions justify-end">
                  <button
                    onClick={() => {
                      setEditingId(entry.id);
                      setNotes({ ...notes, [entry.id]: entry.notes || '' });
                    }}
                    className="btn btn-sm btn-outline"
                  >
                    Edit Notes
                  </button>
                  <button
                    onClick={() => handleRemove(entry.id)}
                    disabled={removingId === entry.id}
                    className="btn btn-sm btn-error"
                  >
                    {removingId === entry.id ? 'Removing...' : 'Remove'}
                  </button>
                </div>
              </div>
            )}
          </div>
        </div>
      ))}
    </div>
  );
}
