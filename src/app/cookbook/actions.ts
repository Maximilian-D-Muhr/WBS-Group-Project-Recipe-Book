'use server';

import { revalidatePath } from 'next/cache';
import { addToCookbook, removeFromCookbook, updateCookbookNote } from '@/lib/queries';

export async function addRecipeAction(recipeId: number) {
  try {
    const result = await addToCookbook(recipeId);
    if (result.error) {
      return { error: 'Failed to add recipe to cookbook' };
    }
    revalidatePath('/cookbook');
    revalidatePath(`/recipes/${recipeId}`);
    return { success: true, message: 'Recipe added to cookbook!' };
  } catch (error) {
    return { error: 'Something went wrong' };
  }
}

export async function removeRecipeAction(cookbookId: number) {
  try {
    const result = await removeFromCookbook(cookbookId);
    if (result.error) {
      return { error: 'Failed to remove recipe from cookbook' };
    }
    revalidatePath('/cookbook');
    return { success: true, message: 'Recipe removed from cookbook' };
  } catch (error) {
    return { error: 'Something went wrong' };
  }
}

export async function updateNoteAction(prevState: any, formData: FormData) {
  try {
    const cookbookId = formData.get('cookbookId') as string;
    const notes = formData.get('notes') as string;

    if (!cookbookId) {
      return { error: 'Invalid request' };
    }

    const result = await updateCookbookNote(parseInt(cookbookId), notes || null);
    if (result.error) {
      return { error: 'Failed to save note' };
    }

    revalidatePath('/cookbook');
    return { success: true, message: 'Note saved!' };
  } catch (error) {
    return { error: 'Something went wrong' };
  }
}
