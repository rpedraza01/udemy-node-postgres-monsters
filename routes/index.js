const { Router } = require('express');

const monsters = require('./monsters');
const habitats = require('./habitats');
const lives = require('./lives');
const aliens = require('./aliens');
const planets = require('./planets');
const aliens_lives = require('./aliens_lives');
const enemies = require('./enemies');


const router = Router();

router.use('/monsters', monsters);
router.use('/habitats', habitats);
router.use('/lives', lives);
router.use('/aliens', aliens);
router.use('/planets', planets);
router.use('/aliens_lives', aliens_lives);
router.use('/enemies', enemies);

module.exports = router;
