const Artists = require('../models/Artists');

class ArtistController {
    // [GET] /artist
    index(req, res) {
        res.render('../../resources/views/artists.html');
    }

    // async index(req, res) {
    //     try {
    //         const nameArtistImg = await Artists.getNameArtistImg();
    //         res.json(nameArtistImg);
    //     } catch (error) {
    //         console.error(error);
    //         res.status(500).send('Internal Server Error');
    //     }
    // }

    // [GET] /artist/api/getAll
    async getAll(req, res) {
        try {
            const artists = await Artists.getAll();
            res.json(artists);
        } catch (error) {
            console.error(error);
            res.status(500).send('Internal Server Error');
        }
    }
}

module.exports = new ArtistController();
