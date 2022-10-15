const express = require('express');
const app = express();
const port = 3001;


let path = require("path");


app.set("view engine", "ejs");
app.use(express.urlencoded({ extended: true }));

const knex = require("knex")({
    client: "mysql",
    connection: {
        host: "santa-database-instance-1.cmvut5jksx6g.us-east-2.rds.amazonaws.com",
        user: "admin",
        password: "adminadmin",
        database: "SantaDonuts",
        port: 3306
    }
});

app.get("/", (req, res) => {
    knex.select().from("Donuts").then(Donuts => {
        res.render("displaydonuts", { mydonuts: Donuts });
    });
});

app.listen(port, () => console.log("Express App has started and server is listening!"));

app.get('/', )