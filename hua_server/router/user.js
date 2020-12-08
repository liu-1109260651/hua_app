const express = require("express");
const md5 = require("md5");
const { serialize } = require("v8");
const pool = require("../pool");
const r = express.Router();

r.post("/login", (req, res) => {
  let phone = req.body.phone;
  let upwd = md5(req.body.upwd);
  console.log(phone, upwd);
  let sql = "select phone,upwd from hua_user where phone = ? and upwd = ?";
  pool.query(sql, [phone, upwd], (err, result) => {
    if (err) throw err;
    if (result.length != 0) {
      res.send({ msg: "查询成功", code: 1, result: result });
    } else {
      res.send({ msg: "用户名密码错误", code: 0 });
    }
  });
});

r.post("/reg", (req, res) => {
  let phone = req.body.phone;
  let upwd = req.body.upwd;

  let sql = "select phone from hua_user where phone=?";
  pool.query(sql, [phone], (err, result) => {
    if (err) throw err;
    if (result.length != 0) {
      res.send("用户名已存在");
    } else {
      let sql1 = "insert hua_user(phone,upwd) values(?,md5(?))";
      pool.query(sql1, [phone, upwd], (err, result2) => {
        if (err) throw err;
        res.send({ msg: "注册成功", code: 1, result2: result2 });
      });
    }
  });
});

module.exports = r;
