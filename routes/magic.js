var express = require('express');
var router = express.Router();
var db = require('../db');
var bodyParser = require('body-parser');

router.use(bodyParser.json());

/* get method for fetch all products. */
router.get('/', function(req, res, next) {
  var sql = "SELECT * FROM magic";
  db.query(sql, function(err, rows, fields) {
    if (err) {
      res.status(500).send({ error: 'Erreur !!' })
    }
    res.json(rows)
  })
});

/*get method for fetch single product*/
router.get('/:id', function(req, res, next) {
  var id = req.params.id;
  var sql = `SELECT * FROM magic WHERE id=${id}`;
  db.query(sql, function(err, row, fields) {
    if(err) {
      res.status(500).send({ error: 'Erreur !!' })
    }
    res.json(row[0])
  })
});

/*post method for create product*/
router.post('/create', function(req, res, next) {
  var nom = req.body.nom;
  var type = req.body.type;
  var ccm = req.body.ccm;

  var sql = `INSERT INTO magic (nom, type, ccm, created_at) VALUES ("${nom}", "${type}", "${ccm}", NOW())`;
  db.query(sql, function(err, result) {
    if(err) {
      res.status(500).send({ error: 'Erreur !!' })
    }
    res.json({'status': 'success', id: result.insertId})
  })
});

/*put method for update product*/
router.put('/update/:id', function(req, res, next) {
  var id = req.params.id;
  var nom = req.body.nom;
  var type = req.body.type;
  var ccm = req.body.ccm;

  var sql = `UPDATE magic SET nom="${nom}", type="${type}", ccm="${ccm}" WHERE id=${id}`;
  db.query(sql, function(err, result) {
    if(err) {
      res.status(500).send({ error: 'Erreur !!' })
    }
    res.json({'status': 'success'})
  })
});

/*delete method for delete product*/
router.delete('/delete/:id', function(req, res, next) {
  var id = req.params.id;
  var sql = `DELETE FROM magic WHERE id=${id}`;
  db.query(sql, function(err, result) {
    if(err) {
      res.status(500).send({ error: 'Erreur !!' })
    }
    res.json({'status': 'success'})
  })
})

module.exports = router;
