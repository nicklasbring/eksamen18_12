var mysql = require("mysql");

//Etablering af db connection
var con = mysql.createConnection({
    host: "localhost",
    user: "root",
    password: "password",
    database: "hjemlos"
});

//funktion der henter alt fra hjemlos table i databasen
exports.getResurser = async () => {
    let sql = "SELECT * FROM resurser";

    return new Promise((resolve, reject) => {
        con.query(sql, (err, result, fields) => {
            if (err) throw err;
            resolve(result);
        });
    });
}

//funktion der henter et objekt med et bestemt id angivet fra url'en
exports.getResurserById = async (id) => {
    let sql = `SELECT * FROM resurser WHERE id=${id}`;

    return new Promise((resolve, reject) => {
        con.query(sql, (err, result, fields) => {
            if (err) throw err;
            resolve(result);
        });
    });
}

//Funktion til at indstætte en ny resurse
exports.createResurse= async (resurse) => {
    let sql = `INSERT INTO resurser VALUES(
        null, ${resurse.by}, ${resurse.kategori}, 
        ${resurse.navn}, ${resurse.beskrivelse}, ${resurse.adresse},
        ${resurse.telefon}, ${resurse.aabningstider}, ${resurse.webside})`;

    return new Promise((resolve, reject) => {
        con.query(sql, (err, result, fields) => {
            if (err) throw err;
            resolve(result);
        });
    });
}
