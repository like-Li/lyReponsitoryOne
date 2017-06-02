SET NAMES UTF8;
DROP DATABASE IF EXISTS article;
CREATE DATABASE article CHARSET=UTF8;
USE article;
CREATE TABLE a_type(
    id INT PRIMARY KEY AUTO_INCREMENT,
    type VARCHAR(10)
);
INSERT INTO a_type VALUES(null,'����ָ��');
INSERT INTO a_type VALUES(null,'ҽԺ�ſ�');
INSERT INTO a_type VALUES(null,'��ѧ�о�');
INSERT INTO a_type VALUES(null,'ҽѧ����');
INSERT INTO a_type VALUES(null,'��������');
INSERT INTO a_type VALUES(null,'���Ŷ�̬');
INSERT INTO a_type VALUES(null,'����԰��');
CREATE TABLE a_content(
    id INT PRIMARY KEY AUTO_INCREMENT,
    cid INT,
    title VARCHAR(1024),
    content VARCHAR(1024),
    ctime DATETIME,
    readNum VARCHAR(1024)
);
INSERT INTO a_content VALUES(null,1,"���������Ρ�������������",'�������ѵ��������¸���ҽԺ�ġ��������Ρ������������ࡣר�ұ�ʾ�����������Ρ�����ҽѧ���μ�����һ��������ɫ����Ҫ�������������������ˣ�äĿ�����硱������Ū�ɳ�׾�� ��ν���������Ρ���...','2016-8-10','3607');
INSERT INTO a_content VALUES(null,1,'������������������ҽѧ����ô˵','��ӱ����� ������������ʾ|7��29����8��2�գ��ɺ���ʡҽѧ��ѧ�ռ�ѧ�����죬����ʡ����ҽԺ�а�ĺ���ʡҽѧ����ѧ���Ŵ�����רҵίԱ���������߳���ȱ�����μ����½�չ��ѵ����֣�ݾ��С�����ʡ����...','2016-8-10','3607');
INSERT INTO a_content VALUES(null,1,'�˽���� �����ж�','7��28������������գ�����������ǡ��˽����,�����ж���������������֯��ǰ���������ƣ�ȫ��Χ���й����׸������أ�ȫ��2.4�������Ҹλ����У�����1/3�������й�����ô����������ʶ���ף����߽���...','2010-1-2','23');
INSERT INTO a_content VALUES(null,1,'����ӱ����ó����Ϊ�����¶�','�����ֻ��Ķ���ʾ|�Ϻ���ϲ�����������¼��������ǲ������ĺ͸п������ܲ����������س����ˣ���ʡӪ��ҽʦ˵��Ҫ�뽡���س��⣬���˻�ѡ����ԭ�ϣ���Ҫ��ȷ���桢�ⶳ�ͼӹ�����������䶳����ʱ�ޡ���ؼҵ�...','2010-1-2','23');
INSERT INTO a_content VALUES(null,3,'a','�����걨2017��Ⱥ���ʡҽѧ�Ƽ��ɹ�����Ԥ֪ͨ','2016-09-30','0');
INSERT INTO a_content VALUES(null,3,'a','���ڿ�չ2016��Ⱥ���ʡ��������ʵ�����϶�������֪ͨ','2016-09-30','0');
INSERT INTO a_content VALUES(null,3,'a','�����걨2016��Ⱥ���ʡ�����ͿƼ��Ŷӵ�֪ͨ','0','0');
INSERT INTO a_content VALUES(null,3,'a','2017��Ⱥ���ʡҽѧ�Ƽ����ؼƻ���Ŀ�걨֪ͨ','2015-05-25','0');
INSERT INTO a_content VALUES(null,3,'a','����ʡ��������ί2015��ȡ�5451����Ŀ��ʼ�걨','2015-05-25','0');
INSERT INTO a_content VALUES(null,3,'a','2015��Ⱥ���ʡҽѧ�Ƽ����ؼƻ���Ŀ�걨','2015-05-22','0');
INSERT INTO a_content VALUES(null,3,'a','�й�����ԺԺʿ��������ʡҽ�����ס�','2015-05-11','0');
INSERT INTO a_content VALUES(null,3,'a','������������ѧ������Martynyuk��������Ժѧ������','2015-05-08','0');
INSERT INTO a_content VALUES(null,3,'a','������������ѧ������Martynyuk��������Ժѧ������','2015-05-08','0');
INSERT INTO a_content VALUES(null,3,'a','���������ѧ��ʡ��ҽԺ��ٽ���˳��ǰ����Ժ','2015-05-08','0');

INSERT INTO a_content VALUES(null,4,'a','����ʡ��������ί���ڿ�չ2017�� ����ʡҽѧ���������ѧ�ɹ������ʿ� ��ѧ��ѡ������֪ͨ','2016-04-24','0');
INSERT INTO a_content VALUES(null,4,'a','����ʡ��������ί���ڿ�չ 2017�����ʡҽѧ�����о���Ŀ ����������֪ͨ','2015-05-08','0');
INSERT INTO a_content VALUES(null,4,'a','��Ժ�쵼����ѧ����Ԣ�߷ò����а�ȫ��������','2016-03-30','0');
INSERT INTO a_content VALUES(null,4,'a','��Ժ���е�ʮ���조���ﱭ��ѧԱ������','2016-05-08','0');
INSERT INTO a_content VALUES(null,4,'a','����ʡ����ҽԺ�����ﱭ������������տ���','2016-05-08','0');
INSERT INTO a_content VALUES(null,4,'a','��Ժ����������ʡסԺҽʦ�淶����ѵʾ�����ء�','2016-05-08','0');
INSERT INTO a_content VALUES(null,4,'a','��Ժ¡�ؾ���2016��סԺҽʦ�淶����ѵ��ѧ����','2016-05-08','0');
INSERT INTO a_content VALUES(null,4,'a','��ǰ��ѵ�߱�׼���ٴ�������Ҫ��','2016-05-08','0');
INSERT INTO a_content VALUES(null,4,'a','����2016��ʡֱҽ��������λס�����۽�ҵ���Ա�����֪ͨ','2016-05-08','0');
INSERT INTO a_content VALUES(null,4,'a','���㲡�������ᣬ�ٴ�˼άѵ��Ӫ','2016-05-08','0');
INSERT INTO a_content VALUES(null,4,'a','����ʡ����ҽԺ��ר��н���ഫϵ�н�������','2016-05-08','0');
INSERT INTO a_content VALUES(null,4,'a','н���ഫ ��ר�Ҵ�����ҵ���','2016-05-08','0');
INSERT INTO a_content VALUES(null,4,'a','2016��ס��ѧԱ������֪','2016-05-08','0');
INSERT INTO a_content VALUES(null,4,'a','����2016��ס��ѧԱ�Ƴٱ���ʱ��Ľ���֪ͨ','2016-05-08','0');
INSERT INTO a_content VALUES(null,4,'a','����ʡ����ҽԺ2016������ס��ѧԱ����֪ͨ','2016-05-08','0');
INSERT INTO a_content VALUES(null,4,'a','2017�����ʡ����ҽԺ���к��ϴ�ѧ����˶ʿ�о�������','2016-05-08','0');
INSERT INTO a_content VALUES(null,4,'a','֣�ݴ�ѧ����ҽԺ2017��˶ʿ�о�������רҵĿ¼','2016-05-08','0');
INSERT INTO a_content VALUES(null,4,'a','����ʡ����ҽԺ2016��ס��¼ȡ����','2016-05-08','0');
INSERT INTO a_content VALUES(null,4,'a','2016��ס���������Բ��乫��','2016-05-08','0');
INSERT INTO a_content VALUES(null,4,'a','����ʡ����ҽԺ2016��ס���������Թ���','2016-05-08','0');
INSERT INTO a_content VALUES(null,4,'a','����ʡ����ҽԺ2016��סԺҽʦ�淶����ѵ��������','2016-05-08','0');
INSERT INTO a_content VALUES(null,4,'a','2016ס����������','2016-05-08','0');

INSERT INTO a_content VALUES(null,6,'�� Ѷ','��4��5��-6�գ�����Ժ���Ҹ߼����������������ԭ����ѧԺ���ڳ�Ѫ����Ѫ�ܲ���ѵ�������ĵ����Ҿ��С�����ȫ��26��ʡ�е�31�����רҵҽ����Ա�μ���ѵ����ѵ��ּ�ڹ淶���ƹ��Ѫ����Ѫ�ܲ�����������...','2016/4/19','23');
INSERT INTO a_content VALUES(null,6,'��Ժ������120�������³�Ա','4��6�����磬��Ժ���վ�Ԯ����һ���·ɻ��ڶ�Ժ����¥ǰͣ��ƺ���з���ѵ�������ֱ������Ϊ����-429�������ڲ��ռ�ϴ�ȶ������ƣ���������������������ǿ�����ļ��ϵͳ��HUMS���豸���ɼ������...','2016-1-2','23');
INSERT INTO a_content VALUES(null,6,'�����ǻ۷ּ������ߺ����ҽ�ƻ�����վ����','4��6�գ�����ʡ�������ҽ�ƻ�������������ʽ����Ȩ������ҽԺ��Ժ�����С�����ʡ��ʮ�ֻᵳ���Ա����Ѳ��Ա����£������и��г���������Ժ��Ժ�����ഺ�������ǻ�ר����10����ר�Ҳμ�������ʽ����Ժ��...','2010-1-2','23');
INSERT INTO a_content VALUES(null,6,'����ҽ�������ٿ�ʩ���ֳ���ǨЭ����','4��6�����磬����ʡ����ҽ�������ڶ�Ժ����¥ǰ�ٿ�ʩ���ֳ���ǨЭ���ᡣ��Ժ����־ǿ��ʡ���ۿ�ҽԺ����֧��ǡ����ĳｨ���鳤�Զ��䣬�ｨ�鼰��ز��Ÿ����˲μӻ��顣�����ƿƳ��ֳлԽ�����ʩ����չ���...','2010-1-2','23');
INSERT INTO a_content VALUES(null,6,'ѹʵѹ�����������Ρ� �ƶ�ȫ������ε�','Ϊ����᳹ȫ����ȫʡ��������ϵͳ������������ͷ��������������龫��4��6�����磬��Ժ�ٿ�2017�굳���������蹤�����飬�ܽ�ȥ�깤�������Ų���2017�굳����������ͷ�������������Ժ�쵼�˽��ա�...','2010-1-2','23');
INSERT INTO a_content VALUES(null,6,'ȫ��������ѧ���֧�о�׼ҽѧʱ����ֳ����','4��7�����磬���й�������ѧЭ�����졢��Ժ�а�ĵ�ʮ��ȫ��������ѧ�����֣���ٿ����й�����ԺԺʿ���ҹ�����ҽѧ�Ŵ�ѧר�������ϣ��й�������ѧЭ��᳤��������ѧ�Ϻ�ҽѧԺϸ�����Ŵ�ҽѧϵ�����󁳣���...','2010-1-2','23');
INSERT INTO a_content VALUES(null,6,'�� Ѷ','��4��1�գ���Ժ��Ѫ�ܲ�ר�Ҹߴ��񡢳����ơ�����εǰ�������μ��й����������ɳ����������ȫ����ʮ��λ���Ĳ�ר����һ���о����й������ӽ�Ѫ���ؽ�ר�ҹ�ʶ��2017���������ר�Ҿ���Ѫ���ڡ����������...','2010-1-2','23');
INSERT INTO a_content VALUES(null,6,'θ��������ȫʡ����������ȫֱ��ϵĤ�г���','3��24�գ���Ժθ����ƶ�����������ѧ����ɺ���ʡ����������ȫֱ��ϵĤ�г�����transanalTME��Ta-TME��������Ϊ�������ԣ�����λ��ֱ���¶ˣ����Ե��4cm����ѧ�����ξ����Ŵ���������...','2010-1-2','23');
INSERT INTO a_content VALUES(null,6,'����ҽ�������ٿ����������ƽ���','3��38�����磬����ʡ����ҽ�����ľ������Ļ��������ƽ��ᡣʡ���ۿ�ҽԺ����֧��ǡ����ĳｨ���鳤�Զ������ֻ��飬���ĳｨ�鼰��ز��Ÿ���ͬ־�μӻ��顣���ϣ�������Ŀ����Ʒ���ʩ�������������ֱ�㱨...','2010-1-2','23');
INSERT INTO a_content VALUES(null,6,'������ʡҽ ���Ľ��á��ڶ�������','3��28�գ�������ʡҽ ���Ľ��á�ӭ��2017��ڶ������й������ػ�Э��ҽԺ���Ľ���רҵίԱ�ḱ����ίԱ���������ѧ�ߡ�����ҽѧ֪��ѧ�ߡ��߼�������ѵʦ��ҽѧ����ר���԰����Ӧ���ڿΣ����ԡ�����ҽ...','2010-1-2','23');
INSERT INTO a_content VALUES(null,6,'�߷�ѧ����Ԣ ȷ�����ȫ','3��22�����磬Ժ�쵼�˽��ա���־ǿ������ԺѧԱ����Ԣ����ʵ�ز鿴�����ֳ�ָʾ��ѧ�������ϱ����������ڴ�������Ԣ����ȫ�氲ȫ���飬Ŭ��ΪѧԱ�ṩһ����ȫ���ʵ����ѧϰ����������ҽԺͳһ���ţ���...','2010-1-2','23');


