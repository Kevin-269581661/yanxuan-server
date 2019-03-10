//使用express构建web服务器 
const express = require('express');
const bodyParser = require('body-parser');
const cors=require("cors");
const session=require("express-session");
const fs=require("fs");
const multer = require("multer");

/*引入路由模块*/
const index=require("./routes/index");
const details=require("./routes/details");
const users=require("./routes/users");
const products=require("./routes/products");
const cart=require("./routes/cart");
const sort=require("./routes/sort")

var app = express();
var server = app.listen(3030);
//使用body-parser中间件
app.use(bodyParser.urlencoded({extended:false}));
//托管静态资源到public目录下
app.use(express.static(__dirname+'/public'));
var upload = multer({dest:"public/upload/"})
app.use(cors({
  origin:["http://localhost:8080","http://127.0.0.1:8080"],
  credentials:true //要求客户端必须携带cookie
}))
app.use(session({
  secret:"128位随机字符",
  resave:false,  //请求保存
  saveUninitialized:true,   //初始化保存
  cookie:{
	  maxAge:1000*60*60*24
  }
}))
/*使用路由器来管理路由*/
app.use("/products",products);
app.use("/index",index);
app.use("/details",details);
app.use("/users",users);
app.use("/cart",cart);
app.use("/sort",sort)


