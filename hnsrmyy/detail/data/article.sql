SET NAMES UTF8;
DROP DATABASE IF EXISTS article;
CREATE DATABASE article CHARSET=UTF8;
USE article;
CREATE TABLE a_type(
    id INT PRIMARY KEY AUTO_INCREMENT,
    type VARCHAR(10)

);
INSERT INTO a_type VALUES(null,'����');
INSERT INTO a_type VALUES(null,'����');
INSERT INTO a_type VALUES(null,'����');
CREATE TABLE a_content(
    cid INT,
    title VARCHAR(1024),
    content VARCHAR(1024),
    time DATETIME,
    paper VARCHAR(5),
    readNum VARCHAR(1024)
);
INSERT INTO a_content VALUES(1,'����С��ʶ','ר�Ҵ���ѧϰ����С֪ʶ','2010-1-2','1234','45');
INSERT INTO a_content VALUES(1,'������ʶ','ѧϰ����С֪ʶ','2010-1-2','456','48');
INSERT INTO a_content VALUES(2,'Ӧ���ٴ�','Ӧ���ٴ�����֪ʶ','2010-1-2','23','44');
INSERT INTO a_content VALUES(2,'Ӧ���ٴ�22','ר�Ҵ���ѧϰӦ���ٴ�','2010-1-2','23','44');
INSERT INTO a_content VALUES(3,'������ʶ','ר�Ҵ���ѧϰ����֪ʶ','2010-1-2','23','44');
