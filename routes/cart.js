const express=require("express");
const router=express.Router();
const pool=require("../pool");

router.get("/add",(req,res)=>{
  var lid=req.query.lid;
  var count=req.query.count;
  var uid=req.session.uid;
  console.log(uid);
  if(uid!==undefined){
    var sql="select * from xz_shoppingcart_item where user_id=? and product_id=?";
    pool.query(
      sql,
      [uid,lid],
      (err,result)=>{
        if(err) console.log(err);
        if(result.length==0){
          var sql="insert into xz_shoppingcart_item values (null,?,?,?,0)";
          pool.query(
            sql,
            [uid,lid,count],
            (err,result)=>{
              if(err) console.log(err);
              res.send({ok:1});
            }
          )
        }else{
          var sql="update xz_shoppingcart_item set count=count+? where user_id=? and product_id=?";
          pool.query(
            sql,
            [count,uid,lid],
            (err,result)=>{
              if(err) console.log(err);
              res.send({ok:1});
            }
          )
        }
      }
    )
  }else{
    res.send({ok:0,msg:"请先登陆！"});
  }
})

module.exports=router;