const express=require("express");
const router=express.Router();
const pool=require("../pool");

//测试: http://localhost:3000/details?lid=5
router.get("/",(req,res)=>{
  var lid=req.query.lid;
  var output={
    product:{/*详细信息*/},
    specs:[/*{规格},{规格},{规格}*/],
    pics:[/*{图片},{图片},{图片}*/]
  };
  //查询商品对象
  var sql="select * from xz_laptop where lid=?";
  pool.query(sql,[lid],(err,result)=>{//异步！
    if(err) console.log(err);
    output.product=result[0];
    //查询规格列表
    var family_id=output.product.family_id;
    var sql="select lid,spec from xz_laptop where family_id=?";
    pool.query(sql,[family_id],(err,result)=>{
      if(err) console.log(err);
      output.specs=result;
      //查询图片列表
      var sql="select * from xz_laptop_pic where laptop_id=?";
      pool.query(sql,[lid],(err,result)=>{
        if(err) console.log(err);
        output.pics=result;
        res.send(output);
      })
    });
  });
})

module.exports=router;