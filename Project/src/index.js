const path = require('path');
const express = require('express');
const app = express();
const port = 3000;

const route = require('./routers');
const db = require('./config/db');

// Connect to DB
db.connect();

// Config html basic
app.set('view engine', 'html');
app.engine('html', require('ejs').renderFile);

// Static file
app.use(express.static(path.join(__dirname, 'public')));

app.use(
    express.urlencoded({
        extended: true,
    }),
);
app.use(express.json());

app.set('views', path.join(__dirname, 'resources', 'views'));

// Route init
route(app);

app.listen(port, () => {
    console.log(`App listening at http://localhost:${port}`);
});
