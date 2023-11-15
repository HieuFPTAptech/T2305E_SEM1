const siteRouter = require('./site');
const aboutRouter = require('./about');
const bookingRouter = require('./booking');
const artistRouter = require('./artist');

function route(app) {
    app.use('/about', aboutRouter);
    app.use('/booking', bookingRouter);
    app.use('/artists', artistRouter);
    app.use('/', siteRouter);

    app.use(function (req, res, next) {
        res.send('404');
    });
}

module.exports = route;
