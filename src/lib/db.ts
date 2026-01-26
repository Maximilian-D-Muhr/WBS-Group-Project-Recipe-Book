import { Pool } from 'pg';
import type { QueryResult } from '@/types';

let pool: Pool | null = null;

export function getPool(): Pool {
  if (!pool) {
    if (!process.env.DATABASE_URL) {
      throw new Error('DATABASE_URL environment variable is not set');
    }

    pool = new Pool({
      connectionString: process.env.DATABASE_URL,
      ssl: process.env.NODE_ENV === 'production' ? true : { rejectUnauthorized: false },
      max: 20,
      idleTimeoutMillis: 30000,
      connectionTimeoutMillis: 2000,
    });
  }
  return pool;
}

export async function query<T>(text: string, params?: unknown[]): Promise<QueryResult<T[]>> {
  const dbPool = getPool();
  try {
    const result = await dbPool.query(text, params);
    return { data: result.rows as T[], error: null };
  } catch (error: unknown) {
    const errorMessage = error instanceof Error ? error.message : 'Unknown error';
    console.error('Database Error:', errorMessage);
    return { data: null, error: errorMessage };
  }
}

export async function closePool(): Promise<void> {
  if (pool) {
    await pool.end();
    pool = null;
  }
}
