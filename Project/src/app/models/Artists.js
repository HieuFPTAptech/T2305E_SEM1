const connection = require('../../config/db');

function getImgArtist() {
    return new Promise((resolve, reject) => {
        connection.query('SELECT img_artist FROM artists', (err, results) => {
            if (err) {
                reject(err);
            }
            resolve(results);
        });
    });
}

function getNameArtistImg() {
    return new Promise((resolve, reject) => {
        connection.query(
            'SELECT id_artist, name_artist, img_artist FROM artists',
            (err, results) => {
                if (err) {
                    reject(err);
                }
                resolve(results);
            },
        );
    });
}

function getAll() {
    return new Promise((resolve, reject) => {
        connection.query('SELECT * FROM artists', (err, results) => {
            if (err) {
                reject(err);
            }
            resolve(results);
        });
    });
}

function artistService() {
    return new Promise((resolve, reject) => {
        connection.query('SELECT * FROM artists_services', (err, results) => {
            if (err) {
                reject(err);
            }
            resolve(results);
        });
    });
}

module.exports = {
    getImgArtist,
    getNameArtistImg,
    getAll,
    artistService,
};
