const express = require('express');
const router = express.Router();

const siteController = require('../app/controllers/SiteController');

router.get('/api/name_makeup_service', siteController.getName);
router.get('/api/name_service/:id', siteController.getNameById);
router.get('/api/name_artist_img', siteController.getNameArtistImg);
router.get('/api/id_artist', siteController.getIdArtist);
router.get('/', siteController.index);

module.exports = router;
