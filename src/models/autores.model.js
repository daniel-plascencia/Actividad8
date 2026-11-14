import db from '../config/db.js';


const selectAllAutores = async () => {
    const [result] = await db.execute('SELECT * FROM autores');
    return result;
}

const selectAutorById = async (idAutor) => {
    const [result] = await db.execute('SELECT * FROM autores WHERE id = ?', [idAutor]);
    if(result.length === 0) {
        return null;
    }
    return result[0];
}

const insertAutor = async ({ nombre, email, imagen }) =>  {
    const [result] = await db.execute('INSERT INTO autores (nombre, email, imagen) VALUES (?, ?, ?)', [nombre, email, imagen]);
    return result;
}

const updateAutorById = async (idAutor, { nombre, email, imagen }) => {
    const [result] = await db.execute('UPDATE autores SET nombre = ?, email = ?, imagen = ? WHERE id = ?', [nombre, email, imagen, idAutor]);
    return result;
}

const deleteAutorById = async (idAutor) => {
    const [result] = await db.execute('DELETE FROM autores WHERE id = ?', [idAutor]);
    return result;
}

export {
    insertAutor,
    selectAllAutores,
    selectAutorById,
    updateAutorById,
    deleteAutorById
}