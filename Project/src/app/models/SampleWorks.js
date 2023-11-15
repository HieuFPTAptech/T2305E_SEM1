const connection = require('../../config/db');

function getIdArtist() {
    return new Promise((resolve, reject) => {
        connection.query(
            'SELECT id_artist, img_sample_work FROM sample_works',
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
    getIdArtist,
};
