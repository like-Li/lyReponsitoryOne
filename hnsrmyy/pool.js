
const mysql = require('mysql');
const qs = require('querystring');

// 连接数据库
var pool = mysql.createPool({
    user:'root',
    database:'article',
    connectionLimit:5
});

module.exports = {
   getAll:(req,res)=>{
        var type = req.query.id;
      //  console.log(req)
        pool.getConnection((err,conn)=>{
            if(err) throw err;
            conn.query('SELECT * FROM a_content  WHERE cid=(SELECT id FROM a_type WHERE id=?)',[type],(err,result)=>{
                if(err){
                    res.json({"code":-1,"msg":"查询失败!！"})
                }else{
                    res.json(result);
                    console.log(result)
                }
            });
        })
    } ,
    getGuide:(req,res)=>{
        req.on('data',(buf)=>{
            var t = buf.toString();
            var obj = qs.parse(t);
          //  console.log(obj);
            pool.getConnection((err,conn)=>{
                if(err) throw err;
                conn.query('SELECT * FROM a_content  WHERE cid=(SELECT id FROM a_type WHERE id=?)',[obj.type],(err,result)=>{
                    if(err){
                        res.json({"code":-1,"msg":"查询失败!！"})
                    }else{
                        res.json(result);
                        console.log(result)
                    }
                });
            })
        });
    }
};