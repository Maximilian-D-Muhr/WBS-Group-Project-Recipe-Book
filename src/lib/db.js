import pg from 'pg';

const { Pool } = pg;

// Singleton Pattern - one connection pool for the whole app
let pool = null;

export function getPool() {
  if (!pool) {
    if (!process.env.DATABASE_URL) {
      throw new Error('DATABASE_URL environment variable is not set');
    }

    // Configure SSL based on environment
    // Using explicit sslmode in URL to avoid deprecation warnings
    const isDevelopment = process.env.NODE_ENV === 'development' || !process.env.NODE_ENV;
    const sslMode = isDevelopment ? 'require' : 'verify-full';

    // Build connection string with proper SSL mode
    let connectionString = process.env.DATABASE_URL;

    // Remove old-style ssl parameter from URL if present and add sslmode parameter
    connectionString = connectionString.replace(/[\?&]sslmode=[a-z-]+/i, '');

    if (!connectionString.includes('sslmode=')) {
      const separator = connectionString.includes('?') ? '&' : '?';
      connectionString += `${separator}sslmode=${sslMode}`;
    }

    pool = new Pool({
      connectionString,
      max: 20,
      idleTimeoutMillis: 30000,
      connectionTimeoutMillis: 2000,
    });
  }
  return pool;
}

// Helper function to execute queries
export async function query(text, params) {
  const pool = getPool();
  try {
    const result = await pool.query(text, params);
    return { data: result.rows, error: null };
  } catch (error) {
    const errorMessage = error instanceof Error ? error.message : 'Unknown error';
    console.error('Database Error:', errorMessage);
    return { data: null, error: errorMessage };
  }
}

// Graceful shutdown for clean pool closure
export async function closePool() {
  if (pool) {
    await pool.end();
    pool = null;
  }
}
