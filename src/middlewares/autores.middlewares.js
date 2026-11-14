import { selectAutorById } from "../models/autores.model.js";

const checkAutorId = async (req, res, next) => {
    const { idAutor } = req.params;
    const autor = await selectAutorById(idAutor);
    if (!autor) {
        return res.status(404).json({ message: 'Autor no encontrado' });
    }
    req.autor = autor;
    next();
}

export {
    checkAutorId
}