var mysql = require("mysql");
// var inquirer = require("inquirer");

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
        runApp();
    }
});

// Running this application will first display all of the items available for sale. Include the ids, names, and prices of products for sale.

function runApp (){
    connection.query('SELECT * FROM products', function (error, response) {
        for (var i = 0; i < response.length; i++){
            console.log(response[i].item_id + " | " + response[i].product_name + " | " + response[i].department_name + " | " + response[i].price + " | " + response[i].stock_quantity);

        }
    }
    )};

    console.log("-----------------------------------");