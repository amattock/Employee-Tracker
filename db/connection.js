const mysql = require("mysql2");

// Connect to users database
const connection = mysql.createConnection(
    {
      host: "localhost",
      // Your MySQL username,
      user: "root",
      // Your MySQL password
      password: "BensonHill1008!",
      database: "company",
    });

module.exports = connection;;