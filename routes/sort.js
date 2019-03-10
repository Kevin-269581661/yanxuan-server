const express=require("express");
const router=express.Router();
const pool=require("../pool");

//分类页左侧列表
router.get("/leftlist",(req,res)=>{
  var sql = "SELECT id,title,sid FROM xx_sorts";
  pool.query(sql,(err,result)=>{
    if(err) throw err;
    res.send(result)
  })
})
//右侧列表
router.get("/rightlist",(req,res)=>{
  var id = req.query.id;
  var obj1 = {
    id:1,
    goodImgUrl: "http://127.0.0.1:3030/img/sort/sort01.png",
    goodsSort:[
      {
        sortTitle: "床品",
        goods: [
          { id: 1, imgUrl: "http://127.0.0.1:3030/img/sort/goods06.png", title: "床品件套" },
          { id: 2, imgUrl: "http://127.0.0.1:3030/img/sort/goods06.png", title: "床品件套" },
          { id: 3, imgUrl: "http://127.0.0.1:3030/img/sort/goods06.png", title: "被子" },
          { id: 4, imgUrl: "http://127.0.0.1:3030/img/sort/goods06.png", title: "床品件套" },
          { id: 5, imgUrl: "http://127.0.0.1:3030/img/sort/goods06.png", title: "枕头" },
          { id: 6, imgUrl: "http://127.0.0.1:3030/img/sort/goods06.png", title: "床品件套" },
          { id: 7, imgUrl: "http://127.0.0.1:3030/img/sort/goods06.png", title: "床品件套" }
        ]},
      {
        sortTitle: "家具家装",
        goods: [
          { id: 1, imgUrl: "http://127.0.0.1:3030/img/sort/goods07.png", title: "布艺软装" },
          { id: 2, imgUrl: "http://127.0.0.1:3030/img/sort/goods07.png", title: "布艺软装" },
          { id: 3, imgUrl: "http://127.0.0.1:3030/img/sort/goods07.png", title: "家具" },
          { id: 4, imgUrl: "http://127.0.0.1:3030/img/sort/goods07.png", title: "布艺软装" },
          { id: 5, imgUrl: "http://127.0.0.1:3030/img/sort/goods07.png", title: "布艺软装" },
          { id: 6, imgUrl: "http://127.0.0.1:3030/img/sort/goods07.png", title: "布艺软装" },
          { id: 7, imgUrl: "http://127.0.0.1:3030/img/sort/goods07.png", title: "布艺软装" }
        ]
      }
    ]
  };
  var obj2 = {
    id:2,
    goodImgUrl: "http://127.0.0.1:3030/img/sort/sort02.png",
    goodsSort:[
      {
        sortTitle: "男装",
        goods: [
          { id: 1, imgUrl: "http://127.0.0.1:3030/img/sort/goods01.png", title: "冬季外套" },
          { id: 2, imgUrl: "http://127.0.0.1:3030/img/sort/goods03.png", title: "冬季裤子" },
          { id: 3, imgUrl: "http://127.0.0.1:3030/img/sort/goods01.png", title: "冬季外套" },
          { id: 4, imgUrl: "http://127.0.0.1:3030/img/sort/goods02.png", title: "毛衣" },
          { id: 5, imgUrl: "http://127.0.0.1:3030/img/sort/goods01.png", title: "冬季外套" },
          { id: 6, imgUrl: "http://127.0.0.1:3030/img/sort/goods01.png", title: "冬季外套" },
          { id: 7, imgUrl: "http://127.0.0.1:3030/img/sort/goods01.png", title: "冬季外套" }
        ]},
      {
        sortTitle: "女装",
        goods: [
          { id: 1, imgUrl: "http://127.0.0.1:3030/img/sort/goods05.png", title: "裙子" },
          { id: 2, imgUrl: "http://127.0.0.1:3030/img/sort/goods05.png", title: "冬季外套" },
          { id: 3, imgUrl: "http://127.0.0.1:3030/img/sort/goods04.png", title: "牛仔裤" },
          { id: 4, imgUrl: "http://127.0.0.1:3030/img/sort/goods05.png", title: "冬季外套" },
          { id: 5, imgUrl: "http://127.0.0.1:3030/img/sort/goods05.png", title: "冬季外套" },
          { id: 6, imgUrl: "http://127.0.0.1:3030/img/sort/goods05.png", title: "冬季外套" },
          { id: 7, imgUrl: "http://127.0.0.1:3030/img/sort/goods05.png", title: "冬季外套" }
        ]
      }
    ]
  };
  if(id%2){
    res.send(obj1)
  }else{
    res.send(obj2)
  }
})






module.exports=router;