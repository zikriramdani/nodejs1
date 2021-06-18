require("env2")(".env");
const axios = require('axios');
var o2x = require('object-to-xml');
const excel = require('node-excel-export');

module.exports = async function (app) {

    app.get('/maintenance', async function(req, res) {
        res.render('pages/maintenance.ejs', {
            title: 'Maintenance',
        });
    });

    // Home
    app.get('/', async function(req, res) {
        axios
        .get(process.env.URL + 'productList')
        .then(dataProduct => {
            res.render('pages/index.ejs', {
                title: 'Home',
                product: dataProduct.data.resData
            });
        })
        .catch(err => {
            res.status(201).json({
                'resCode': 201,
                'resMessage': err
            });
        });
    });

    // Answer
    app.get('/answer', async function(req, res){
        res.render('pages/answer.ejs', {
            title: 'Answer 8,9,10',
        });
    });

    // Add Product
    app.post('/productAdd', async function(req, res){
        axios
        .post(process.env.URL + 'product/add', {
            // image: req.body.image,
            name: req.body.name,
            description: req.body.description,
            price: req.body.price
        })
        .then(response => {
            console.log('ber', response)
            res.redirect('/');
        })
        .catch(err => {
            res.status(201).json({
                'resCode': 201,
                'resMessage': err
            });
        });
    });

    // Update Product
    app.post('/productUpdate', async function(req, res){
        const productId = req.body.id;

        axios
        .put(process.env.URL + 'product/' + productId, {
            // image: image,
            name: req.body.name,
            description: req.body.description,
            price: req.body.price
        })
        .then(response => {
            res.redirect('/');
        })
        .catch(err => {
            res.status(201).json({
                'resCode': 201,
                'resMessage': err
            });
        });
    });

    // Delete Product
    app.post('/productDelete', async function(req, res){
        const productId = req.body.id;
        
        axios
        .delete(process.env.URL + 'product/' + productId)
        .then(response => {
            res.redirect('/');
        })
        .catch(err => {
            res.status(201).json({
                'resCode': 201,
                'resMessage': err
            });
        });
    });

    // Export to XML
    app.get('/exportXML', async function(req, res){
        axios
        .get(process.env.URL + 'productList')
        .then(dataProduct => {
            res.set('Content-Type', 'text/xml');
            res.send(o2x({
            '?xml version="1.0" encoding="utf-8"?' : null,
                clients: { client: dataProduct.data.resData.getData}
            }));
        })
        .catch(err => {
            res.status(201).json({
                'resCode': 201,
                'resMessage': err
            });
        })
    });

    // Export to Excel
    app.get('/exportExcel', async function(req, res){
        axios
        .get(process.env.URL + 'productList')
        .then(dataProduct => {
            // Create the excel report.
            // This function will return Buffer
            const report = excel.buildExport(
                [ // <- Notice that this is an array. Pass multiple sheets to create multi sheet report
                    {
                        name: 'Report', // <- Specify sheet name (optional)
                        specification: dataProduct.data.resData, // <- Report specification
                        data: dataProduct.data.resData.getData // <-- Report data
                    }
                ]
            );
            
            // You can then return this straight
            res.attachment('exportToExcel.xlsx'); // This is sails.js specific (in general you need to set headers)
            return res.send(report);
        })
        .catch(err => {
            res.status(201).json({
                'resCode': 201,
                'resMessage': err
            });
        })
    });

    // catch 404 and forward to error handler
    app.get('*', async function(req, res){
        res.render('pages/404.ejs', {
            title: '404',
        });
    });
}