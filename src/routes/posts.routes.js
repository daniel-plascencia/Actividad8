import { Router } from 'express';

import { createPost, getPosts, getPostById, getPostsByAutorId, editPost, deletePost } from '../controllers/posts.controller.js';

import { postExists } from '../middlewares/posts.middlewares.js';
import { checkAutorId } from '../middlewares/autores.middlewares.js';

const router = Router();

router.get('/', getPosts);
router.get('/:idPost', postExists, getPostById);
router.get('/autor/:idAutor', checkAutorId, getPostsByAutorId);

router.post('/', createPost);

router.put('/:idPost', postExists, editPost);
router.delete('/:idPost', postExists, deletePost);


export default router;