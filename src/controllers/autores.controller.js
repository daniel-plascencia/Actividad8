import { insertAutor, selectAllAutores, selectAutorById, updateAutorById, deleteAutorById } from '../models/autores.model.js';

const getAutores = async (req, res) => {
    const autores = await selectAllAutores();
    res.json(autores);
}

const getAutorById = async (req, res) => {
    res.json(req.autor);
}

const createAutor = async (req, res) => {
    const result = await insertAutor(req.body);

    const autor = await selectAutorById(result.insertId);
    res.json(autor);
}

const editAutor = async (req, res) => {
    const { idAutor } = req.params;
    await updateAutorById(idAutor, req.body);

    const autor = await selectAutorById(idAutor);
    res.json(autor);
}

const deleteAutor = async (req, res) => {
    const { idAutor } = req.params;
    await deleteAutorById(idAutor);
    res.json(req.autor);
}
export {
    createAutor,
    getAutores,
    getAutorById,
    editAutor,
    deleteAutor
}