var prompt = require('prompt');
var mysql = require("mysql");

var new_quantity, product_id_update;

var connection = mysql.createConnection({
  host: "localhost",
  port: 3306,
  user: "root",
  password: "rafa",
  database: "bamazon"
});

connection.connect(function(err) {
  if (err) throw err;
  connection.query("SELECT * FROM products", function(err, res) {
    if (err) throw err;
    console.log("*** PRODUCTS ***"+ "\n");
    for(i in res){
      console.log("Product ID: " + res[i].item_id);
      console.log("Product Name: " + res[i].product_name);
      console.log("Product Price: " + res[i].price + "\n");
    };

    console.log("***************"+ "\n");
    prompt.start();
    console.log("Please insert the following information for your purchase:");
    prompt.get(['Product_ID', 'Quantity'], function (err, result) {

      for(i in res){
        if(parseInt(result.Product_ID) == parseInt(res[i].item_id)){
          if (parseInt(res[i].stock_quantity) >= parseInt(result.Quantity)) {
            this.new_quantity = parseInt(res[i].stock_quantity - result.Quantity);
            this.product_id_update = parseInt(res[i].item_id);
            updateProduct();
            } else {
            console.log("Insufficient quantity!");
          };
        };
      };

  });
    connection.end();
  });
});


function updateProduct() {
  console.log("Updating quantities...\n");
  var query = connection.query(
    "UPDATE products SET ? WHERE ?",
    [
      {
        stock_quantity: parseInt(this.new_quantity)
      },
      {
        item_id: this.product_id_update
      }
    ],
    function(err, res) {
      console.log(query.sql);
      console.log("Quantity updated!");
    }
  );
};