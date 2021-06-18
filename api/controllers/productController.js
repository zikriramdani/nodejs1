const models = require("../../models");

module.exports = {
    // Read Product
    readProduct(req, res, next) {
        models.tb_product
        .findAll({
            order: [
              ['createdAt', 'DESC']
            ],
            // attributes: ["image", "name", "description", "price"],
        })
        .then(tb_products => {
            if (tb_products) {
                res.status(200).json({
                    'resCode': 200,
                    'resData': tb_products,
                    'resMessage': 'Successfull'
                })
            }
        })
        .catch(err => {
            res.status(201).json({
                'resCode': 201,
                'resMessage': err
            })
        })
    },

    // Create Product
    createProduct(req, res, next) {
        const { image, name, description, price } = req.body;

        models.tb_product
        .create({
            image: image,
            name: name,
            description: description,
            price: price,
        })
        .then(tb_products => {
            if (tb_products) {
                res.status(200).json({
                    'resCode': 200,
                    'resData': tb_products,
                    'resMessage': 'Successfully'
                })
            }
        })
        .catch(err => {
            res.status(201).json({
                'resCode': 201,
                'resMessage': err
            })
        })
    },

    // Update Product
    updateProduct(req, res, next) {
        const productId = req.params.id;
        const { image, name, description, price } = req.body;

        models.tb_product
        .update({
            image: image,
            name: name,
            description: description,
            price: price,
        }, {
            where: {
                id: productId
            }
        })
        .then(tb_products => {
            if (tb_products) {
                res.status(200).json({
                    'resCode': 200,
                    'resData': tb_products,
                    'resMessage': 'Successfull'
                });
            };
        })
        .catch(err => {
            res.status(201).json({
                'resCode': 201,
                'resMessage': err
            });
        });
    },

    // Delete Product
    deleteProduct(req, res, next) {
        const productId = req.params.id;

        models.tb_product
        .destroy({
            where: {
                id: productId
            }
        })
        .then(tb_products => {
            if (tb_products) {
                res.status(200).json({
                    'resCode': 200,
                    'resData': tb_products,
                    'resMessage': 'Successfull'
                });
            };
        })
        .catch(err => {
            res.status(201).json({
                'resCode': 201,
                'resMessage': err
            });
        });
    },

    // Filter limit data
    filterLimitProduct(req, res, next) {
        const { limit } = req.body;
        var searchClass = {};

        models.tb_product
        .findAll({
            limit: limit,
            order: [
                ['createdAt', 'DESC']
            ]
        })
        .then(tb_products => {
            if (tb_products) {
                res.status(200).json({
                    'resCode': 200,
                    'resData': tb_products,
                    'resMessage': 'Successfully'
                });
            };
        })
        .catch(err => {
            res.status(201).json({
                'resCode': 201,
                'resMessage': err
            })
        })
    },

}