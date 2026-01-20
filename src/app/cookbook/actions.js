'use server';

import { revalidatePath } from 'next/cache';
import { addToCookbook, removeFromCookbook, updateCookbookNote } from '@/lib/queries';

export async function addRecipeAction(recipeId) {
  try {
    // Input validation
    if (!Number.isInteger(recipeId) || recipeId <= 0) {
      return { error: 'Invalid recipe ID' };
    }

    const result = await addToCookbook(recipeId);
    if (result.error) {
      return { error: result.error };
    }
    if (!result.wasAdded) {
      return { error: 'Recipe is already in your cookbook' };
    }
    revalidatePath('/cookbook');
    revalidatePath(`/recipes/${recipeId}`);
    return { success: true, message: 'Recipe added to cookbook!' };
  } catch (error) {
    return { error: 'Something went wrong' };
  }
}

export async function removeRecipeAction(cookbookId) {
  try {
    // Input validation
    if (!Number.isInteger(cookbookId) || cookbookId <= 0) {
      return { error: 'Invalid cookbook ID' };
    }

    const result = await removeFromCookbook(cookbookId);
    if (result.error) {
      return { error: result.error };
    }
    revalidatePath('/cookbook');
    return { success: true, message: 'Recipe removed from cookbook' };
  } catch (error) {
    return { error: 'Something went wrong' };
  }
}

export async function updateNoteAction(prevState, formData) {
  try {
    const cookbookId = formData.get('cookbookId');
    const notes = formData.get('notes');

    // Input validation
    if (!cookbookId) {
      return { error: 'Invalid request' };
    }

    const parsedId = parseInt(cookbookId, 10);
    if (!Number.isInteger(parsedId) || parsedId <= 0) {
      return { error: 'Invalid cookbook ID' };
    }

    if (notes && typeof notes !== 'string') {
      return { error: 'Notes must be text' };
    }

    const result = await updateCookbookNote(parsedId, notes || null);
    if (result.error) {
      return { error: result.error };
    }

    revalidatePath('/cookbook');
    return { success: true, message: 'Note saved!' };
    
  } catch (error) {
    return { error: 'Something went wrong' };
  }
}
