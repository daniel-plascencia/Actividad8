import { insertPost, selectAllPosts, selectAllPostsByAutorId, selectPostById, updatePostById, deletePostById  } from '../models/posts.model.js';

const getPosts = async (req, res) => {
    const posts = await selectAllPosts();
    res.json(posts);
}

const getPostsByAutorId = async (req, res) => {
    const { idAutor } = req.params;
    const posts = await selectAllPostsByAutorId(idAutor);
    res.json(posts);
}

const getPostById = async (req, res) => {
    res.json(req.post);
}

const editPost = async (req, res) => {
    const { idPost } = req.params;
    await updatePostById(idPost, req.body);

    const post = await selectPostById(idPost);
    res.json(post);
}

const deletePost = async (req, res) => {
    const { idPost } = req.params;

    await deletePostById(idPost);
    res.json(req.post);
}

const createPost = async (req, res) => {
    const result = await insertPost(req.body);
    const post = await selectPostById(result.insertId);
    res.json(post);
}

export { createPost, deletePost, editPost, getPostById, getPosts, getPostsByAutorId }