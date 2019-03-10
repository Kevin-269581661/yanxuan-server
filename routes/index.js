const express = require("express");
const router = express.Router();
const pool = require("../pool")
//1.首页轮播图
router.get("/bannerlist",(req,res)=>{
  var sql = "SELECT * FROM xx_banner";
  pool.query(sql,(err,result)=>{
    if(err) throw err;
    res.send(result);
  })
});
//2.首页九宫格
router.get("/sortlist",(req,res)=>{
  var sql = "SELECT * FROM xx_gongge";
  pool.query(sql,(err,result)=>{
    if(err) throw err;
    res.send(result);
  })
});
  //3.首页新品推荐
router.get("/newproducts",(req,res)=>{
  var sql = "SELECT * FROM xx_new_list";
  pool.query(sql,(err,result)=>{
    if(err) throw err;
    res.send(result);
  })
});
 //4. 商品推荐
router.get("/hotproducts",(req,res)=>{
  var result={
	  id:1,
	  title:"全棉针织床上四件套 新款",
	  sub_title:"超软针织棉 亲肤可裸睡",
	  price:288,
	  img_url:"http://127.0.0.1:3030/img/app-hot/hot01.jpg",
	  hotItem:[
		{ id: 2, img_url:"http://127.0.0.1:3030/img/products/product01.png", mark: ["销量最佳"], title: "百年传世珐琅锅 全家系列", price: "398",color_count:2 },
        { id: 3, img_url:"http://127.0.0.1:3030/img/products/product02.png", mark: ["圣诞特惠", "优选"], title: "家用按摩器", price: "125",color_count:4 },
        { id: 4, img_url:"http://127.0.0.1:3030/img/products/product03.png", mark: [], title: "可爱软萌抱枕", price: "465" ,color_count:1},
        { id: 6, img_url: "http://127.0.0.1:3030/img/products/product04.png", mark: ["圣诞特惠", "优选"], title: "西班牙制造 高端按摩椅", price: "2546" ,color_count:3},
        { id: 7, img_url: "http://127.0.0.1:3030/img/products/product05.png", mark: ["销量最佳"], title: "精致简约 苹果无线鼠标", price: "155" ,color_count:1},
        { id: 8, img_url: "http://127.0.0.1:3030/img/products/product06.png", mark: [], title: "家用清洁器 电动清扫", price: "275" ,color_count:2}	  
	  ] 
	}
    res.send(result);
});




module.exports=router