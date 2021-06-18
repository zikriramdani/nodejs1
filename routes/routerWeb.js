require("env2")(".env");

module.exports = async function (app) {

    app.get('/maintenance', async function(req, res) {
        res.render('pages/maintenance.ejs', {
            title: 'Maintenance',
        });
    });

    // homepage
    app.get('/', async function(req, res) {
        res.render('pages/index.ejs', {
            title: 'Home',
        });
    });

    // catch 404 and forward to error handler
    app.get('*', async function(req, res){
        // res.send('what???', 404);
        res.render('pages/404.ejs', {
            title: '404',
        });
    });
}