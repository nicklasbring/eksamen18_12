var fs = require('fs');

//Funktion der læser filen resurser.json
exports.readFile = () => { 
    let file = fs.readFileSync('./resurser.json');
    let jsonFile = JSON.parse(file);
    return jsonFile;
}

//Funktion der skulle læse et object udefra id i filen -- ER IKKE FUNKTIONEL
exports.readFileById = (id) => {
    let file = fs.readFileSync('./resurser.json');
    let jsonFile = JSON.parse(file);
    return jsonFile;
}

//Funktion der indsætter et nyt jsonobjekt.
exports.insertJson = (json) => {
    fs.writeFileSync('./resurser.json', JSON.stringify(json, null, 2), { flag: 'a' }, 'utf-8');
} 