const connection = require('../../config/db');

function getNameById(id_makeup_service) {
    return new Promise((resolve, reject) => {
        connection.query(
            'SELECT name_service FROM services WHERE id_makeup_service = ' +
                id_makeup_service,
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
    getNameById,
};
