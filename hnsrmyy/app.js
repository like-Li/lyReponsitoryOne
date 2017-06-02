
const http = require('http');
const express = require('express');
const pool = require('./pool');



var app = express();
http.createServer(app).listen(8081);

// 中间件返回静态资源
app.use(express.static('detail'));

// 路由返回动态资源
app.get('/list',pool.getAll);
// 就诊指南
app.post('/type',pool.getGuide);


