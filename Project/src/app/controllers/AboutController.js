class AboutController {
    // [GET] /about
    index(req, res) {
        res.render('../../resources/views/about.html');
    }
}

module.exports = new AboutController();
