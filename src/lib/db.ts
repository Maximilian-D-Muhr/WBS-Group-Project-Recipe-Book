import pg from 'pg';

const { Pool } = pg;

// Singleton Pattern - one connection pool for the whole app
let pool: pg.Pool | null = null;

export function getPool(): pg.Pool {
  if (!pool) {
    if (!process.env.DATABASE_URL) {
      throw new Error('DATABASE_URL environment variable is not set');
    }

    pool = new Pool({
      connectionString: process.env.DATABASE_URL,
      ssl: {
        rejectUnauthorized: false,
      },
    });
  }
  return pool;
}

// Helper function to execute queries
export async function query<T = any>(
  text: string,
  params?: (string | number | boolean | null)[]
): Promise<{ data: T[] | null; error: string | null }> {
  const pool = getPool();
  try {
    const result = await pool.query<T>(text, params);
    return { data: result.rows, error: null };
  } catch (error) {
    const errorMessage = error instanceof Error ? error.message : 'Unknown error';
    console.error('Database Error:', errorMessage);
    return { data: null, error: errorMessage };
  }
}
