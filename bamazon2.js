var mysql = require("mysql");
var inquirer = require("inquirer");

var connection = mysql.createConnection({
    host: "localhost",

    // Your port; if not 3306
    port: 3306,

    // Your username
    user: "root",

    // Your password
    password: "password",
    database: "bamazon"
});

connection.connect(function(err) {
    if (err) {
        throw err;
    } else {
        console.log("connected as id " + connection.threadId + "\n");
        loadProducts();
    }
    
});

// Running 'loadProducts' will first display all of the items available for sale. Include the ids, names, and prices of products for sale.

function loadProducts (){
    connection.query('SELECT * FROM products', function (error, response) {
        for (var i = 0; i < response.length; i++){
            console.log(response[i].item_id + " | " + response[i].product_name + " | " + response[i].price + " | " + response[i].stock_quantity);
            // console.log(response);
        }
        promtCustomerForItem()
    }
    )};

    console.log("-----------------------------------");


    function promtCustomerForItem() {
        inquirer.prompt([{
            type: "input",
            name: "choice",
            message: "What is the id of the product you would like to buy? [if you'd like to exit, quit with 'q']",
            validate: function(value){
                return !isNaN(value) || value.toLowerCase()==="q";
            }
        }        

        ]).then(function (value) {
        checkIfShouldExit(value.choice);
        var choiceId = parseInt(value.choice);
        var product = checkInventory(choiceId, inventory);
        
        if(product){
            promptCustomerForQuantity(product)
        } else {
            console.log("That item is not in the inventory");
            loadProducts();
        }

    })
};




    function promptCustomerForQuantity(product){
        inquirer.prompt([{
            type: "input",
            name: "quantity",
            message: "How many would you like? [quit with 'q']",
            validate: function(value){
                return value > 0 || value.toLowerCase()==="q";
            }
          }        

        ]).then(function (value) {
            checkIfShouldExit(value.quantity);
            var quantity = parseInt(value.quantity);

            if(quantity > product.stock_quantity){
                console.log("Insufficient Stock Quantity");
                loadProducts();
            } else {
                makePurchase(product, quantity);
            }
        });
    };


    // Purchase the desired quantity of the desired item
function makePurchase(product, quantity) {
    connection.query(
      "UPDATE products SET stock_quantity = stock_quantity - ? WHERE item_id = ?",
      [quantity, product.item_id],
      function(err, res) {
        // Let the user know the purchase was successful, re-run loadProducts
        console.log("Successfully purchased " + quantity + " " + product.product_name + "'s!");
        loadProducts();
      }
    );
  }  


function checkInventory(choiceId, inventory){
    for(var i = 0; i < inventory.length; i++){
        if (inventory[i].item_id === choiceId){
            return inventory[i]
        }
    }
}

function checkIfShouldExit(choice){
    if(choice.toLowerCase() === "q"){
        console.log("good-bye");
        process.exit(0);
    }
};

