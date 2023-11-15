const connection = require('../../config/db');

function getAll() {
    return new Promise((resolve, reject) => {
        connection.query('SELECT * FROM makeup_services', (err, results) => {
            if (err) {
                reject(err);
            }
            resolve(results);
        });
    });
}

function getName() {
    return new Promise((resolve, reject) => {
        connection.query(
            'SELECT id_makeup_services, name_makeup_service FROM makeup_services',
            (err, results) => {
                if (err) {
                    reject(err);
                }
                resolve(results);
            },
        );
    });
}

function getNameArtistImg() {
    return new Promise((resolve, reject) => {
        connection.query(
            'SELECT name_artist, img_artist FROM artists',
            (err, results) => {
                if (err) {
                    reject(err);
                }
                resolve(results);
            },
        );
    });
}

module.exports = {
    getAll,
    getName,
    getNameArtistImg,
};
