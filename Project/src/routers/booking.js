const express = require('express');
const router = express.Router();

const bookingController = require('../app/controllers/BookingController');

router.get('/api/makeup_services', bookingController.getAll);
router.get('/api/artists_services', bookingController.getArtistService);
router.get('/', bookingController.index);

module.exports = router;
