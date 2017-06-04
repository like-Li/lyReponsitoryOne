SET NAMES UTF8;
DROP DATABASE IF EXISTS article;
CREATE DATABASE article CHARSET=UTF8;
USE article;
CREATE TABLE a_type(
    id INT PRIMARY KEY AUTO_INCREMENT,
    type VARCHAR(10)

);
INSERT INTO a_type VALUES(null,'健康');
INSERT INTO a_type VALUES(null,'科普');
INSERT INTO a_type VALUES(null,'教育');
CREATE TABLE a_content(
    cid INT,
    title VARCHAR(1024),
    content VARCHAR(1024),
    time DATETIME,
    paper VARCHAR(5),
    readNum VARCHAR(1024)
);
INSERT INTO a_content VALUES(1,'健康小常识','专家带你学习健康小知识','2010-1-2','1234','45');
INSERT INTO a_content VALUES(1,'健康常识','学习健康小知识','2010-1-2','456','48');
INSERT INTO a_content VALUES(2,'应用临床','应用临床科普知识','2010-1-2','23','44');
INSERT INTO a_content VALUES(2,'应用临床22','专家带你学习应用临床','2010-1-2','23','44');
INSERT INTO a_content VALUES(3,'教育常识','专家带你学习教育知识','2010-1-2','23','44');
