import { createPool } from 'mysql2/promise';

const pool = createPool({
    user: 'root',
    password: '12345678',
    host: 'localhost',
    port: 3306,
    database: 'blog_db',
});

export default pool;