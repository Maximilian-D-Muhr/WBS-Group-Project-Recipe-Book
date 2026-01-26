'use client';

import { useState, type ChangeEvent } from 'react';
import { removeRecipeAction, updateNoteAction } from '@/app/cookbook/actions';
import type { CookbookEntryComponentProps } from '@/types';

export default function CookbookEntry({ entry, onRemove, onSaveNote }: CookbookEntryComponentProps): React.ReactElement {
  const [isEditing, setIsEditing] = useState<boolean>(false);
  const [noteText, setNoteText] = useState<string>(entry.notes ?? '');
  const [isSaving, setIsSaving] = useState<boolean>(false);
  const [isRemoving, setIsRemoving] = useState<boolean>(false);

  const handleRemove = async (): Promise<void> => {
    if (!confirm('Are you sure you want to remove this recipe from your cookbook?')) {
      return;
    }

    setIsRemoving(true);
    try {
      const response = await removeRecipeAction(entry.id);
      if (!response.error) {
        onRemove(entry.id);
      }
    } finally {
      setIsRemoving(false);
    }
  };

  const handleSaveNote = async (): Promise<void> => {
    setIsSaving(true);
    try {
      const formData = new FormData();
      formData.append('cookbookId', entry.id.toString());
      formData.append('notes', noteText);
      const response = await updateNoteAction(null, formData);
      if (!response.error) {
        onSaveNote(entry.id);
        setIsEditing(false);
      }
    } finally {
      setIsSaving(false);
    }
  };

  const handleNoteChange = (e: ChangeEvent<HTMLTextAreaElement>): void => {
    setNoteText(e.target.value);
  };

  return (
    <div className="card bg-base-100 shadow-md">
      <div className="card-body">
        <h3 className="card-title">{entry.title}</h3>
        <p className="text-base-content/70">{entry.description}</p>

        <div className="flex flex-wrap gap-2 mb-4">
          <span className="badge badge-outline">Prep: {entry.prep_time} min</span>
          <span className="badge badge-outline">Cook: {entry.cook_time} min</span>
        </div>

        {isEditing ? (
          <div className="space-y-3">
            <textarea
              className="textarea textarea-bordered w-full"
              placeholder="Add notes about this recipe..."
              value={noteText}
              onChange={handleNoteChange}
            />
            <div className="flex gap-2">
              <button
                onClick={handleSaveNote}
                disabled={isSaving}
                className="btn btn-sm btn-primary"
              >
                {isSaving ? 'Saving...' : 'Save'}
              </button>
              <button
                onClick={() => setIsEditing(false)}
                disabled={isSaving}
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
                onClick={() => setIsEditing(true)}
                className="btn btn-sm btn-outline"
              >
                Edit Notes
              </button>
              <button
                onClick={handleRemove}
                disabled={isRemoving}
                className="btn btn-sm btn-error"
              >
                {isRemoving ? 'Removing...' : 'Remove'}
              </button>
            </div>
          </div>
        )}
      </div>
    </div>
  );
}
