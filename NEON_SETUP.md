# Neon Database Setup Guide

## Step 1: Create Neon Account & Project

1. Go to https://neon.tech
2. Sign up with your GitHub account (recommended)
3. Create a new project:
   - Project name: `recipe-creator`
   - Region: Choose closest to you (e.g., eu-central-1)
   - Click "Create project"

## Step 2: Get Connection String

1. In Neon dashboard, go to your project
2. Click "Connection string" (or look in Connection details)
3. Copy the connection string that looks like:
   ```
   postgresql://user:password@ep-xxx.region.neon.tech/neondb?sslmode=require
   ```

## Step 3: Add to Environment Variables

1. Open `.env.local` in your project root
2. Add the connection string:
   ```
   DATABASE_URL="postgresql://user:password@ep-xxx.region.neon.tech/neondb?sslmode=require"
   ```
3. Save the file (it's already in .gitignore)

## Step 4: Create Database Schema

1. Go back to Neon dashboard
2. Click "SQL Editor" in the left sidebar
3. Open `scripts/schema.sql` from this project
4. Copy the entire SQL code
5. Paste it into Neon SQL Editor
6. Click "Execute" button
7. You should see: "Tables created successfully"

## Step 5: Seed Sample Data

1. In Neon SQL Editor, click the "+" button to create a new query
2. Open `scripts/seed.sql` from this project
3. Copy the entire SQL code
4. Paste it into Neon SQL Editor
5. Click "Execute" button
6. You should see: "Sample recipes inserted successfully" with count

## Step 6: Verify Connection Locally

1. In VS Code terminal, run:
   ```bash
   npm run dev
   ```
2. Navigate to http://localhost:3000/recipes
3. You should see the recipes displayed (once FR008 is implemented)

## Step 7: Test Database Connection

You can test the connection by checking the server logs when you load a page that queries the database.

## Troubleshooting

### Connection String Error
- Make sure `DATABASE_URL` in `.env.local` matches your Neon connection string exactly
- Restart `npm run dev` after updating `.env.local`

### SSL/TLS Error
- Ensure `?sslmode=require` is at the end of your connection string
- This is required for Neon connections

### Query Errors
- Check that the schema.sql ran without errors in Neon SQL Editor
- Verify all tables exist in Neon dashboard (Tables tab)

## Next Steps

After Neon is set up:
1. Test the database connection in the app
2. Implement FR008: Search Functionality
3. Implement FR009: Recipe Detail Page (with DB queries)
4. Implement FR010: Cookbook CRUD operations
