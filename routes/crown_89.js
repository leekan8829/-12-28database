var express = require('express');
var router = express.Router();

router.get('/shop_89', (req, res) => {
  res.render('shop_89', { title: 'shop sumary' });
});

module.exports = router;
