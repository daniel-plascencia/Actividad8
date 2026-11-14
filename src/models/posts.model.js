import db from '../config/db.js';

const insert = async ({ titulo, descripcion, categoria, autores_id }) =>  {
    const [result] = await db.execute('INSERT INTO posts (titulo, descripcion, categoria, autores_id, fecha_creacion) VALUES (?, ?, ?, ?, ?)', [titulo, descripcion, categoria, autores_id, new Date()]);
    return result;
}

export {
    insert
}
