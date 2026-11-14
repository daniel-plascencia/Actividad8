import { Router } from 'express';

import { createAutor, getAutores, getAutorById, editAutor, deleteAutor } from '../controllers/autores.controller.js';
import { checkAutorId } from '../middlewares/autores.middlewares.js';

const router = Router();

router.get('/', getAutores);
router.get('/:idAutor', checkAutorId, getAutorById);

router.post('/', createAutor);

router.put('/:idAutor', checkAutorId, editAutor);

router.delete('/:idAutor', checkAutorId, deleteAutor);

export default router;