const express = require('express');
const router = express.Router();

const artistController = require('../app/controllers/ArtistController');

router.get('/api/getAll', artistController.getAll);
router.get('/', artistController.index);

module.exports = router;
