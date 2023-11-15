const MakeupServices = require('../models/MakeupServices');
const Artists = require('../models/Artists');

class BookingController {
    // [GET] /booking
    index(req, res) {
        res.render('../../resources/views/booking.html');
    }

    // [GET] /booking/api/makeup_services
    async getAll(req, res) {
        try {
            const makeupServices = await MakeupServices.getAll();
            res.json(makeupServices);
        } catch (error) {
            console.error(error);
            res.status(500).send('Internal Server Error');
        }
    }

    // [GET] /booking/api/artists_services
    async getArtistService(req, res) {
        try {
            const artistService = await Artists.artistService();
            res.json(artistService);
        } catch (error) {
            console.error(error);
            res.status(500).send('Internal Server Error');
        }
    }
}

module.exports = new BookingController();
