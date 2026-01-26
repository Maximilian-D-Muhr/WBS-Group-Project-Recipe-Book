import type { NavLink } from '@/types';

export const APP_TITLE = '🍳 Recipe Creator';
export const APP_DESCRIPTION = 'Find and save your favorite recipes';

export const NAV_LINKS: NavLink[] = [
  { href: '/', label: 'Home' },
  { href: '/recipes', label: 'Recipes' },
  { href: '/cookbook', label: 'My Cookbook' },
] as const satisfies NavLink[];
