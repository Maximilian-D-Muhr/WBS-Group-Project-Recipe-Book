# Recipe Creator

A full-featured recipe management web application built with Next.js, React, Tailwind CSS, and Neon PostgreSQL.

## Overview

Recipe Creator allows users to:
- Browse and search recipes by title or description
- View detailed recipe information (ingredients, instructions, timing)
- Save favorite recipes to a personal cookbook
- Add custom notes to saved recipes
- Remove recipes from their cookbook

## Tech Stack

| Technology | Version | Purpose |
|------------|---------|---------|
| Next.js | 15.x | React Framework with App Router |
| React | 19.x | UI Library |
| Tailwind CSS | 4.x | Utility-first CSS framework |
| DaisyUI | 5.x | Tailwind CSS component library |
| PostgreSQL | - | Relational database (via Neon) |
| pg | 8.x | PostgreSQL Node.js client |
| Node.js | 25.x | JavaScript runtime |

## Project Structure

```
src/
├── app/                          # Next.js App Router pages
│   ├── layout.jsx               # Root layout with Navigation & Footer
│   ├── page.jsx                 # Home page
│   ├── loading.jsx              # Global loading state
│   ├── error.jsx                # Global error boundary
│   ├── not-found.jsx            # Global 404 page
│   ├── globals.css              # Global styles (Tailwind + DaisyUI)
│   │
│   ├── recipes/
│   │   ├── page.jsx             # All recipes / search results
│   │   ├── loading.jsx          # Recipes loading skeleton
│   │   └── [id]/
│   │       ├── page.jsx         # Recipe detail page
│   │       ├── not-found.jsx    # Recipe 404 page
│   │
│   └── cookbook/
│       ├── page.jsx             # My Cookbook listing
│       ├── actions.js           # Server Actions (add/remove/update)
│       ├── loading.jsx          # Cookbook loading skeleton
│       └── error.jsx            # Cookbook error boundary
│
├── components/                   # Reusable React components
│   ├── Navigation.jsx           # Header navigation
│   ├── Footer.jsx               # Footer with project info
│   ├── RecipeCard.jsx           # Recipe card display
│   ├── SearchBar.jsx            # Search input (client component)
│   ├── CookbookClient.jsx       # Cookbook list container (client component)
│   ├── CookbookEntry.jsx        # Individual cookbook entry (client component)
│   └── RecipeDetailClient.jsx   # Add to cookbook button (client component)
│
├── lib/                          # Utility functions & helpers
│   ├── db.js                    # Database connection (singleton pool)
│   ├── queries.js               # SQL query functions
│   └── constants.js             # Global constants & navigation links
│
└── types/                        # JSDoc type definitions (TypeScript-ready)
    └── index.ts                 # Type interfaces (for Day 6+ refactor)
```

## Database Schema

### recipes table
```sql
CREATE TABLE recipes (
  id SERIAL PRIMARY KEY,
  title VARCHAR(255) NOT NULL,
  description TEXT,
  ingredients JSONB,              -- JSON array of ingredients
  instructions TEXT,
  prep_time INTEGER,              -- Minutes
  cook_time INTEGER,              -- Minutes
  servings INTEGER DEFAULT 4,
  image_url VARCHAR(500),
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
```

### cookbook table
```sql
CREATE TABLE cookbook (
  id SERIAL PRIMARY KEY,
  recipe_id INTEGER REFERENCES recipes(id) ON DELETE CASCADE,
  notes TEXT,                     -- User's custom notes
  added_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  UNIQUE(recipe_id)
);
```

## Setup Instructions

### Prerequisites
- Node.js 25.x or higher
- npm or yarn
- Neon PostgreSQL account (free at https://neon.tech)

### 1. Clone the Repository
```bash
git clone https://github.com/Maximilian-D-Muhr/WBS-Group-Project-Recipe-Book.git
cd wbs-group-project-recipe-book
```

### 2. Install Dependencies
```bash
npm install
```

### 3. Set Up Neon Database

1. Go to https://neon.tech and create an account
2. Create a new project named "WBS"
3. Copy your connection string
4. Create `.env.local` file in project root:
   ```
   DATABASE_URL="postgresql://user:password@ep-xxx.gwc.azure.neon.tech/neondb?sslmode=require&channel_binding=require"
   ```

### 4. Initialize Database Schema

Run the SQL commands from `scripts/schema.sql` in your Neon console:

```bash
# Option A: Using neonctl CLI
neonctl sql --file scripts/schema.sql

# Option B: Manually copy/paste into Neon SQL Editor
```

### 5. Seed Sample Data

Run the SQL commands from `scripts/seed.sql`:

```bash
neonctl sql --file scripts/seed.sql
```

Or manually copy/paste into Neon SQL Editor

### 6. Start Development Server
```bash
npm run dev
```

Open http://localhost:3000 in your browser

## Features

### Search & Browse
- Search recipes by title or description
- View all recipes in responsive grid
- Real-time search results

### Recipe Details
- View full ingredient list
- Read step-by-step instructions
- See prep/cook times and servings
- Add recipe to cookbook

### Cookbook Management
- Add recipes to personal cookbook
- Remove recipes from cookbook
- Add/edit/save custom notes per recipe
- View all saved recipes with details

### User Experience
- Loading skeletons during data fetch
- Error boundaries with retry functionality
- 404 pages for missing content
- Responsive design (mobile, tablet, desktop)
- Dark/light theme support (DaisyUI themes)

## Available Scripts

```bash
# Development
npm run dev           # Start dev server on http://localhost:3000

# Production
npm run build         # Build for production
npm start            # Start production server

# Code quality
npm run lint         # Run ESLint
```

## Environment Variables

Create `.env.local` with:

```
DATABASE_URL="postgresql://user:password@ep-xxx.gwc.azure.neon.tech/neondb?sslmode=require"
```

See `.env.example` for template.

## TypeScript Roadmap (Day 6-10)

This project is built in JavaScript (Day 1-5) and will be gradually converted to TypeScript during the second week:

- Week 1: Pure JavaScript with JSDoc comments
- Week 2: Progressive TypeScript migration
  - Convert `.js` → `.ts`
  - Convert `.jsx` → `.tsx`
  - Add type annotations
  - Add interfaces & type aliases
  - Add generics where appropriate
  - Add enums for constants

Type stubs are already in place at `src/types/index.ts` for reference during migration.

## Deployment

### Deploy to Vercel (Recommended for Next.js)

1. Push to GitHub (all commits via PR)
2. Go to https://vercel.com
3. Click "Add New..." → "Project"
4. Select your GitHub repository
5. Add environment variable:
   - Name: `DATABASE_URL`
   - Value: Your Neon connection string
6. Click "Deploy"

### Verify Deployment
- Visit your Vercel deployment URL
- Test search functionality
- Test adding/removing recipes
- Check error boundaries

## Project Requirements Mapping

| FR ID | Requirement | Status | Location |
|-------|-------------|--------|----------|
| FR001 | Public GitHub Repository | ✅ | https://github.com/Maximilian-D-Muhr/WBS-Group-Project-Recipe-Book |
| FR002 | Commit Workflow | ✅ | Feature branches + PRs |
| FR003 | Framework Scaffolding | ✅ | Next.js 15 with JavaScript |
| FR004 | Routing Configuration | ✅ | App Router pages |
| FR005 | TailwindCSS Styling | ✅ | src/app/globals.css |
| FR006 | Neon Integration | ✅ | src/lib/db.js |
| FR007 | Data Generation | ✅ | scripts/seed.sql |
| FR008 | Search Functionality | ✅ | src/app/recipes/page.jsx |
| FR009 | Recipe Detail Page | ✅ | src/app/recipes/[id]/page.jsx |
| FR010 | Cookbook CRUD | ✅ | src/app/cookbook/* |
| FR011 | Loading & Error Handling | ✅ | loading.jsx, error.jsx files |
| FR012 | Code Organization | ✅ | Folder structure |
| FR013 | Documentation & README | ✅ | This file |
| FR014b | NextJS Deployment | ⏳ | Vercel (in progress) |

## Code Quality Standards

- ✅ Clean, readable JavaScript code
- ✅ Components max 100 lines
- ✅ Separation of concerns (Server/Client components)
- ✅ Error handling on all database operations
- ✅ Loading states for better UX
- ✅ JSDoc comments for functions (TypeScript-ready)
- ✅ Consistent naming conventions
- ✅ No console.log statements in production code

## Team

WBS Group Project - Ben & Max
**Lesson 59, Topic 1: Full-Stack React Development**

## License

This is an educational project for WBS Coding School.

---

**Ready to deploy?** See deployment section above or check NEON_SETUP.md for database configuration details.
