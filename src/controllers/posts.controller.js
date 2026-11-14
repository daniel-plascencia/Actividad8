import { insert } from '../models/posts.model.js';

const createPost = async (req, res) => {
    const result = await insert(req.body);
    res.json(result);
}

export { createPost }