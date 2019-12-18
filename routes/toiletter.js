var express = require('express');
var router = express.Router();
var toiletData = require('../public/javascripts/toiletFinder');

/* GET home page. */
router.get('/', async(req, res, next) => {
    res.send(await toiletData.getToiletInfo());
});

module.exports = router;





