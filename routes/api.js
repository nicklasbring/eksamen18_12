var express = require('express');
var router = express.Router();
var jsonReader = require('../public/javascripts/jsonReader');
var db = require('../database_logic/dbLogic');

//get request for indtastning af data
router.get('/resurse', function(req, res, next) {
  res.render('indtastning', { title: 'Tilføj resurser' });
});

//get request for at få al data i json
router.get('/resurser', async(req, res, next) => {
    /////////Udkommenter for at læse fra lokal fil/////////
    // let json = jsonReader.readFile(); 
    // res.send(json);

    res.send(await db.getResurser());
});


//get request for at få resurse med bestemt id
router.get('/resurser/:id', async(req, res, next) => {
    /*Denne skulle fremvise et objekt med bestemt id, men funktionen virker ikke*/

    // let json = jsonReader.readFileById(req.params.id);
    // res.send(json);    

    res.send( await db.getResurserById(req.params.id));
});

//post request for at indtaste ny resurse
router.post('/resurse', async(req, res, next) =>{
    //res.send(await db.createResurse(req.body));

    jsonReader.insertJson(req.body);
    res.send('resurser er sendt til resurser.json');

});





//put request for at opdatere eksiterende resurser
router.put('/:id', function(req, res, next) {
   
});

//delete request for at slette resurser
router.delete('/:id', function(req, res, next) {
    
});







module.exports = router;