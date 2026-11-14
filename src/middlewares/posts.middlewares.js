import { selectPostById } from "../models/posts.model.js";

const postExists = async (req, res, next) => {
    const { idPost } = req.params;
    const post = await selectPostById(idPost);
    if (!post) {
        return res.status(404).json({ message: 'Post no encontrado' });
    }
    req.post = post;
    next();
}

export { postExists };