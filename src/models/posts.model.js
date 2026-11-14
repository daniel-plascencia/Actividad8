import db from '../config/db.js';

const selectAllPosts = async () => {
    const [result] = await db.execute('SELECT * FROM posts');
    return result;
}

const selectAllPostsByAutorId = async (idAutor) => {
    const [result] = await db.execute('SELECT * FROM posts JOIN autores ON posts.autores_id = autores.id WHERE autores.id = ?', [idAutor]);
    return result;
}

const selectPostById = async (idPost) => {
    const [result] = await db.execute('SELECT * FROM posts WHERE id = ?', [idPost]);
    if(result.length === 0) {
        return null;
    }
    return result[0];
}

const insertPost = async ({ titulo, descripcion, categoria, autores_id }) =>  {
    const [result] = await db.execute('INSERT INTO posts (titulo, descripcion, categoria, autores_id, fecha_creacion) VALUES (?, ?, ?, ?, ?)', [titulo, descripcion, categoria, autores_id, new Date()]);
    return result;
}

const updatePostById = async (idPost, { titulo, descripcion, categoria, autores_id }) => {
    const [result] = await db.execute('UPDATE posts SET titulo = ?, descripcion = ?, categoria = ?, autores_id = ? WHERE id = ?', [titulo, descripcion, categoria, autores_id, idPost]);
    return result;
}   

const deletePostById = async (idPost) => {
    const [result] = await db.execute('DELETE FROM posts WHERE id = ?', [idPost]);
    return result;
}

export {
    selectAllPosts,
    selectAllPostsByAutorId,
    selectPostById,
    insertPost,
    updatePostById,
    deletePostById
}

