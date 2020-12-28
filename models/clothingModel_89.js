const db = require('../utils/database');

const Clothing = class Clothing {
  constructor(id, name, cat_id, price, remote_url, local_url) {
    this.id = id;
    this.name = name;
    this.price = price;
    this.cat_id = cat_id;
    this.remote_url = remote_url;
    this.local_url = local_url;
  }

  //create
  static create(req, res) {
    return db.execute(
      'INSERT INTO clothing (id,name,cat_id,price,remote_url,local_url) VALUES (?,?,?,?,?,?)',
      [
        req.body.id,
        req.body.name,
        req.body.cat_id,
        req.body.price,
        req.body.remote_url,
        req.body.local_url,
      ]
    );
  }
  //update
  static updateById(req, res) {
    const id = req.body.id;
    const name = req.body.name;
    const cat_id = req.body.cat_id;
    const price = req.body.price;
    const remote_url = req.body.remote_url;
    const local_url = req.body.local_url;
    return db.execute(
      'UPDATE clothing SET name = ?, cat_id = ?, price = ?, remote_url = ?, local_url = ? WHERE id = ?',
      [name, cat_id, price, remote_url, local_url, id]
    );
  }

  //read
  static fetchHomepage() {
    return db.execute('SELECT * FROM clothing where cat_id=0;');
  }
  static fetchProductsByCategory(cid) {
    return db.execute('SELECT * FROM clothing where cat_id= ?', [cid]);
  }

  //delete
  static deleteById(id) {
    return db.execute('DELETE FROM clothing WHERE id = ?', [id]);
  }
};

// test
const testfetchHomepage = async (req, res) => {
  try {
    await Clothing.fetchHomepage().then(([rows]) => {
      console.log('fetchHomepage', JSON.stringify(rows));
    });
  } catch (err) {
    console.log(err);
  }
};

const testfetchProductsByCategory = async (req, res) => {
  try {
    await Clothing.fetchProductsByCategory(5).then(([rows]) => {
      console.log('fetchProductsByCategory', JSON.stringify(rows));
    });
  } catch (err) {
    console.log(err);
  }
};
//testfetchHomepage();

//testfetchProductsByCategory();

module.exports = Clothing;
