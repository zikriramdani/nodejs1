const productController = require("../api/controllers/productController");

module.exports = async function (app) {

	// Product
	app.post("/api/v1/product/add", productController.createProduct);
	app.get("/api/v1/productList", productController.readProduct);
	app.put("/api/v1/product/:id", productController.updateProduct);
	app.delete("/api/v1/product/:id", productController.deleteProduct);
	app.post("/api/v1/productListLimit", productController.filterLimitProduct);

}