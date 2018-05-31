var mysql = require("mysql");

var connection = mysql.createConnection({
    host: "127.0.0.1",

    port: 3306,

    user: "root",

    password: "root",
    database: "bamazon_db"


});

connection.connect(function(err) {
    if (err) throw err;
    console.log("connected as id " + connection.threadId + "\n");
    displayProducts();
});

function displayProducts() {
    console.log("Displaying all products...\n");
    connection.query("select * from products", function(err, res) {
        if (err) throw err;
        console.log(res);
        connection.end();
    });
}

