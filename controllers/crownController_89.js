const Clothing = require('../models/clothingModel_89');

//Create
exports.createProduct = async (req, res) => {
  console.log('CreateProduct', req.body);

  try {
    await Clothing.create(req, res).then(([rows]) => {
      res.redirect('/crown2_89');
    });
    //res.json(req.body);
  } catch (err) {
    console.log(err);
  }
};

//Update
exports.updateProduct = async (req, res) => {
  console.log('UpdateProduct', req.body);

  try {
    await Clothing.updateById(req, res).then(([rows]) => {
      res.redirect('/crown2_89');
    });
    //res.json(req.body);
  } catch (err) {
    console.log(err);
  }
};

//Read
exports.getHomepage = async (req, res) => {
  let data = {};
  try {
    await Clothing.fetchHomepage().then(([rows]) => {
      data.clothing = rows;
      //res.json(rows);
    });

    res.render('crown2_89', { title: 'Homepage', data: data.clothing });
  } catch (err) {
    console.log(err);
  }
};

exports.getProductsByCategory = async (req, res) => {
  let data = {};
  data.cid = 0;
  console.log('req.params.product', req.params.product);
  try {
    if (req.params.product == 'hats') data.cid = 1;
    else if (req.params.product == 'jackets') data.cid = 2;
    else if (req.params.product == 'sneakers') data.cid = 3;
    else if (req.params.product == 'womens') data.cid = 4;
    else if (req.params.product == 'mens') data.cid = 5;
    await Clothing.fetchProductsByCategory(data.cid).then(([rows]) => {
      data.product = rows;
      //res.json(rows);
    });

    res.render('products2_89', {
      title: req.params.product,
      data: data.product,
    });
  } catch (err) {
    console.log(err);
  }
};

exports.getShopOverview = async (req, res) => {
  let data = {};

  try {
    await Clothing.fetchProductsByCategory(1).then(([rows]) => {
      data.hats = rows;
    });

    await Clothing.fetchProductsByCategory(2).then(([rows]) => {
      data.jackets = rows;
    });

    await Clothing.fetchProductsByCategory(3).then(([rows]) => {
      data.sneakers = rows;
    });

    await Clothing.fetchProductsByCategory(4).then(([rows]) => {
      data.womens = rows;
    });

    await Clothing.fetchProductsByCategory(5).then(([rows]) => {
      data.mens = rows;
    });
    //res.json(data);
    res.render('shop2_89', { data, count: 6 });
  } catch (err) {
    console.log(err);
  }
};

//delete
exports.deleteProduct = async (req, res) => {
  console.log('deleteProduct', req.query.id);
  try {
    await Clothing.deleteById(req.query.id).then(([rows]) => {
      res.redirect('/crown2_89');
    });
    //res.json(req.body);
  } catch (err) {
    console.log(err);
  }
};
exports.deleteProduct2 = async (req, res) => {
  console.log('deleteProduct2', req.params.id);
  try {
    await Clothing.deleteById(req.params.id).then(([rows]) => {
      res.redirect('/crown2_89');
    });
    //res.json(req.body);
  } catch (err) {
    console.log(err);
  }
};
