const express = require('express');
const app = express()
const cors = require('cors');
const bodyParser = require('body-parser');
const index = require('./router/index.js')
const user = require('./router/user.js')
const product = require('./router/product.js')
app.listen(9050);
app.use(bodyParser.urlencoded({
  extended:false
}))
app.use(cors());
app.use(express.static('./public'))
app.use('/',index);
app.use('/user',user);
app.use('/product',product);