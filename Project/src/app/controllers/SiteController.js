const MakeupServices = require('../models/MakeupServices');
const Artists = require('../models/Artists');
const Service = require('../models/Service');
const SampleWorks = require('../models/SampleWorks');

class SiteController {
    // [GET] /
    index(req, res) {
        res.render('../../resources/views/index.html');
    }

    // async index(req, res) {
    //     try {
    //         const ids = await MakeupServices.getId();
    //         res.json(ids);
    //     } catch (error) {
    //         console.error(error);
    //         res.status(500).send('Internal Server Error');
    //     }
    // }

    // [GET] /api/name_makeup_service
    async getName(req, res) {
        try {
            const names = await MakeupServices.getName();
            res.json(names);
        } catch (error) {
            console.error(error);
            res.status(500).send('Internal Server Error');
        }
    }

    // [GET] /api/name_service
    async getNameById(req, res) {
        try {
            const names = await Service.getNameById(req.params.id);
            res.json(names);
        } catch (error) {
            console.error(error);
            res.status(500).send('Internal Server Error');
        }
    }

    // [GET] /api/name_artist_img
    async getNameArtistImg(req, res) {
        try {
            const nameArtistImg = await Artists.getNameArtistImg();
            res.json(nameArtistImg);
        } catch (error) {
            console.error(error);
            res.status(500).send('Internal Server Error');
        }
    }

    // [GET] /api/id_artist
    async getIdArtist(req, res) {
        try {
            const ids_artist = await SampleWorks.getIdArtist();
            res.json(ids_artist);
        } catch (error) {
            console.error(error);
            res.status(500).send('Internal Server Error');
        }
    }
}

module.exports = new SiteController();
