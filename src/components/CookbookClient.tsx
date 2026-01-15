'use client';

import { useState } from 'react';
import { removeRecipeAction, updateNoteAction } from '@/app/cookbook/actions';
import { CookbookEntry } from '@/types';

interface CookbookClientProps {
  entries: CookbookEntry[];
}

export default function CookbookClient({ entries }: CookbookClientProps) {
  const [editingId, setEditingId] = useState<number | null>(null);
  const [notes, setNotes] = useState<Record<number, string>>({});

  const handleRemove = async (cookbookId: number) => {
    await removeRecipeAction(cookbookId);
  };

  const handleSaveNote = async (cookbookId: number) => {
    const formData = new FormData();
    formData.append('cookbookId', cookbookId.toString());
    formData.append('notes', notes[cookbookId] || '');
    await updateNoteAction({}, formData);
    setEditingId(null);
  };

  return (
    <div className="space-y-6">
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
                    className="btn btn-sm btn-primary"
                  >
                    Save
                  </button>
                  <button
                    onClick={() => setEditingId(null)}
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
                    className="btn btn-sm btn-error"
                  >
                    Remove
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
