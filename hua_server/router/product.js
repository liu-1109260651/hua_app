const express = require("express");
const pool = require("../pool");
const r = express.Router();

//购物车数据
r.get("/product_index", (req, res) => {
  let lid = req.query.lid;
  let sql =
    "select lid,price,title,img,classes,count from product_index where lid=?";
  pool.query(sql, [lid], (err, result) => {
    if (err) throw err;
    if (result.length != 0) {
      res.send({ msg: "查询成功", code: 1, result: result });
    } else {
      res.send({ msg: "商品不存在", code: 0 });
    }
  });
});

r.get("/product_index2", (req, res) => {
  let lid = req.query.lid;
  let sql =
    "select lid,price,title,img,classes,count from product_index2 where lid=?";
  pool.query(sql, [lid], (err, result) => {
    if (err) throw err;
    if (result.length != 0) {
      res.send({ msg: "查询成功", code: 1, result: result });
    } else {
      res.send({ msg: "商品不存在", code: 0 });
    }
  });
});

r.get("/product_index3", (req, res) => {
  let lid = req.query.lid;
  let sql =
    "select lid,price,title,img,classes,count from product_index3 where lid=?";
  pool.query(sql, [lid], (err, result) => {
    if (err) throw err;
    if (result.length != 0) {
      res.send({ msg: "查询成功", code: 1, result: result });
    } else {
      res.send({ msg: "商品不存在", code: 0 });
    }
  });
});

r.get("/product_index4", (req, res) => {
  let lid = req.query.lid;
  let sql =
    "select lid,price,title,img,classes,count from product_index4 where lid=?";
  pool.query(sql, [lid], (err, result) => {
    if (err) throw err;
    if (result.length != 0) {
      res.send({ msg: "查询成功", code: 1, result: result });
    } else {
      res.send({ msg: "商品不存在", code: 0 });
    }
  });
});

r.get("/product_index5", (req, res) => {
  let lid = req.query.lid;
  let sql =
    "select lid,price,title,img,classes,count from product_index5 where lid=?";
  pool.query(sql, [lid], (err, result) => {
    if (err) throw err;
    if (result.length != 0) {
      res.send({ msg: "查询成功", code: 1, result: result });
    } else {
      res.send({ msg: "商品不存在", code: 0 });
    }
  });
});

r.get("/details_banner", (req, res) => {
  let lid = req.query.lid;
  let sql = "select * from details_banner where lid=?";
  pool.query(sql, [lid], (err, result) => {
    if (err) throw err;
    if (result.length == 0) {
      res.send({ msg: "商品不存在", code: 0 });
    } else {
      res.send({ msg: "查询成功", code: 1, result: result });
    }
  });
});

r.get("/details", (req, res) => {
  let lid = req.query.lid;
  let sql =
    "select * from product_index inner join hua_details on product_index.lid=hua_details.lid where product_index.lid=?";
  pool.query(sql, [lid], (err, result) => {
    if (err) throw err;
    if (result.length != 0) {
      res.send({ msg: "查询成功", code: 1, result: result });
    } else {
      res.send({ msg: "商品不存在", code: 0 });
    }
  });
});

r.get("/search_price", (req, res) => {
  let pid = req.query.pid;
  // console.log(pid);
  let sql =
    "select lid,img,subtitle,detail,price from product_index where pro_id=? order by price asc";
  pool.query(sql, [pid], (err, result) => {
    if (err) throw err;
    res.send({ msg: "查询成功", code: 1, result: result });
  });
});

r.get("/search_price2", (req, res) => {
  let pid = req.query.pid;
  // console.log(pid);
  let sql =
    "select lid,img,subtitle,detail,price from product_index where pro_id=? order by price desc";
  pool.query(sql, [pid], (err, result) => {
    if (err) throw err;
    res.send({ msg: "查询成功", code: 1, result: result });
  });
});

r.get("/search_shopping", (req, res) => {
  let pid = req.query.pid;
  let sql =
    "select lid,img,subtitle,detail,price,shopping from product_index where pro_id=? order by shopping desc";
  pool.query(sql, [pid], (err, result) => {
    if (err) throw err;
    res.send({ msg: "查询成功", code: 1, result: result });
  });
});
module.exports = r;

// product_index.lid,product_index.title,product_index.detail,product_index.subtitle,product_index.price,product_index.delprice,product_index.shopping,hua_details.lid,hua_details.d_title,hua_details.d_cl,hua_details.d_bz
