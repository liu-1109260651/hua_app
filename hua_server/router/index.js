const express = require("express");
const r = express.Router();
const pool = require("../pool.js");

r.get("/banner", (req, res) => {
  let sql = "select * from banner";
  pool.query(sql, (err, result) => {
    if (err) throw err;
    res.send({ msg: "查询成功", code: 1, result: result });
  });
});

r.get("/classify_index", (req, res) => {
  let sql = "select * from classify_index";
  pool.query(sql, (err, result) => {
    if (err) throw err;
    res.send({ msg: "查询成功", code: 1, result: result });
  });
});

r.get("/classify_index2", (req, res) => {
  let sql = "select * from classify_index2";
  pool.query(sql, (err, result) => {
    if (err) throw err;
    res.send({ msg: "查询成功", code: 1, result: result });
  });
});

r.get("/classify_index3", (req, res) => {
  let sql = "select * from classify_index3";
  pool.query(sql, (err, result) => {
    if (err) throw err;
    res.send({ msg: "查询成功", code: 1, result: result });
  });
});

r.get("/product_index", (req, res) => {
  let pid = req.query.pid;
  let sql = "select * from product_index where pro_id=?";
  pool.query(sql, [pid], (err, result) => {
    if (err) throw err;
    res.send({ msg: "查询成功", code: 1, result: result });
  });
});

r.get("/product_index2", (req, res) => {
  let sql = "select * from product_index2";
  pool.query(sql, (err, result) => {
    if (err) throw err;
    res.send({ msg: "查询成功", code: 1, result: result });
  });
});

r.get("/product_index3", (req, res) => {
  let pid = req.query.pid;
  let sql = "select * from product_index3 where pro_id=?";
  pool.query(sql, [pid], (err, result) => {
    if (err) throw err;
    res.send({ msg: "查询成功", code: 1, result: result });
  });
});

r.get("/product_index4", (req, res) => {
  let sql = "select * from product_index4";
  pool.query(sql, (err, result) => {
    if (err) throw err;
    res.send({ msg: "查询成功", code: 1, result: result });
  });
});

r.get("/product_index5", (req, res) => {
  let sql = "select * from product_index5";
  pool.query(sql, (err, result) => {
    if (err) throw err;
    res.send({ msg: "查询成功", code: 1, result: result });
  });
});
module.exports = r;
