const express=require("express");
const router=express.Router();
const pool=require("../pool");

//注册验证用户名是否已存在
router.get("/checkuname",(req,res)=>{
  var uname=req.query.uname;
  var sql="SELECT * FROM xx_user WHERE uname=?";
  pool.query(sql,[uname],(err,result)=>{
    if(err) throw err;
    if(result.length == 1){
      res.send({code:0,msg:"用户名已存在"})
    }else{
      res.send({code:1,msg:"用户名可以使用"})
    }
  })
})
//注册路由
router.post("/regist",(req,res)=>{
  var uname = req.body.uname;
  var upwd = req.body.upwd;
  var sql = "INSERT INTO xx_user (uname,upwd) VALUES (?,md5(?))";
  pool.query(sql,[uname,upwd],(err,result)=>{
    if(err) throw err;
    if(result.affectedRows>=1){
      res.send({code:1,msg:"注册成功"})
    }else{
      res.send({code:0,msg:"系统忙，请稍后再试"})
    }
  })
})
//登录路由
router.post('/login',(req,res)=>{
  var uname=req.body.uname;
  var upwd=req.body.upwd;
  var sql="SELECT * FROM xx_user WHERE uname=? AND upwd=md5(?)";
  pool.query(sql,[uname,upwd],(err,result)=>{
    if(err) throw err;
    if(result.length == 1){
      req.session.uid = result[0]["id"]
      console.log(req.session.uid)
      res.send({code:1,userInfo:result[0]})
    }else{
      res.send({code:0,msg:"密码或用户名错误"})
    }
  })
})






// router.post("/login",(req,res)=>{
//   var uname=req.body.uname;
//   var upwd=req.body.upwd;
//   var sql="select * from xz_user where uname=? and upwd=?";
//   pool.query(sql,[uname,upwd],(err,result)=>{
//     if(err) console.log(err);
//     if(result.length==1){
//       req.session.uid=result[0]["uid"]
//       console.log(req.session.uid);
//       res.send({
//         ok:1,uname:result[0]["uname"]
//       });
//     }else{
//       res.send({ok:0,msg:"用户名或密码错误！"})
//     }
//   })
// })
router.get("/islogin",(req,res)=>{
  if(req.session.uid===undefined)
    res.send({ok:0});
  else
    res.send({ok:1});
})
router.get("/signout",(req,res)=>{
  req.session.uid=undefined;
  res.end();
})
module.exports=router;