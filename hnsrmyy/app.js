
const http = require('http');
const express = require('express');
const pool = require('./pool');



var app = express();
http.createServer(app).listen(8081);

// �м�����ؾ�̬��Դ
app.use(express.static('detail'));

// ·�ɷ��ض�̬��Դ
app.get('/list',pool.getAll);
// ����ָ��
app.post('/type',pool.getGuide);


