SET NAMES UTF8;
DROP DATABASE IF EXISTS article;
CREATE DATABASE article CHARSET=UTF8;
USE article;
CREATE TABLE a_type(
    id INT PRIMARY KEY AUTO_INCREMENT,
    type VARCHAR(10)
);
INSERT INTO a_type VALUES(null,'就诊指南');
INSERT INTO a_type VALUES(null,'医院概况');
INSERT INTO a_type VALUES(null,'科学研究');
INSERT INTO a_type VALUES(null,'医学教育');
INSERT INTO a_type VALUES(null,'健康管理');
INSERT INTO a_type VALUES(null,'新闻动态');
INSERT INTO a_type VALUES(null,'护理园地');
CREATE TABLE a_content(
    id INT PRIMARY KEY AUTO_INCREMENT,
    cid INT,
    title VARCHAR(1024),
    content VARCHAR(1024),
    ctime DATETIME,
    readNum VARCHAR(1024)
);
INSERT INTO a_content VALUES(null,1,"“冬病夏治”并非人人适宜",'三伏天已到来，眼下各大医院的“冬病夏治”门诊量逐渐增多。专家表示，“冬病夏治”是中医学防治疾病的一个富有特色的重要方法，但并非人人适宜，盲目“跟风”反倒会弄巧成拙。 所谓“冬病夏治”，...','2016-8-10','3607');
INSERT INTO a_content VALUES(null,1,'想生健康宝宝？听听医学大咖怎么说','大河报记者 李晓敏核心提示|7月29日至8月2日，由河南省医学科学普及学会主办，河南省人民医院承办的河南省医学科普学会遗传优生专业委员会成立大会暨出生缺陷诊治技术新进展培训班在郑州举行。河南省人民...','2016-8-10','3607');
INSERT INTO a_content VALUES(null,1,'了解肝炎 立刻行动','7月28日是世界肝炎日，今年的主题是“了解肝炎,立刻行动”。世界卫生组织日前发布公报称，全球范围内中国肝炎负担最重；全球2.4亿慢性乙肝患者中，超过1/3生活在中国。那么，该怎样认识肝炎？记者近日...','2010-1-2','23');
INSERT INTO a_content VALUES(null,1,'《大河报》让吃肉成为愉快的事儿','记者林辉阅读提示|上海福喜过期劣质肉事件，让人们不禁担心和感慨：还能不能让人愉快地吃肉了？我省营养医师说，要想健康地吃肉，除了会选择肉原料，还要正确储存、解冻和加工。鲜肉冷藏冷冻都有时限“买回家的...','2010-1-2','23');
INSERT INTO a_content VALUES(null,3,'a','关于申报2017年度河南省医学科技成果奖的预通知','2016-09-30','0');
INSERT INTO a_content VALUES(null,3,'a','关于开展2016年度河南省国际联合实验室认定工作的通知','2016-09-30','0');
INSERT INTO a_content VALUES(null,3,'a','关于申报2016年度河南省创新型科技团队的通知','0','0');
INSERT INTO a_content VALUES(null,3,'a','2017年度河南省医学科技攻关计划项目申报通知','2015-05-25','0');
INSERT INTO a_content VALUES(null,3,'a','河南省卫生计生委2015年度“5451”项目开始申报','2015-05-25','0');
INSERT INTO a_content VALUES(null,3,'a','2015年度河南省医学科技攻关计划项目申报','2015-05-22','0');
INSERT INTO a_content VALUES(null,3,'a','中国工程院院士陈香美与省医“结亲”','2015-05-11','0');
INSERT INTO a_content VALUES(null,3,'a','美国佛罗里达大学麻醉科Martynyuk教授来我院学术交流','2015-05-08','0');
INSERT INTO a_content VALUES(null,3,'a','美国佛罗里达大学麻醉科Martynyuk教授来我院学术交流','2015-05-08','0');
INSERT INTO a_content VALUES(null,3,'a','美国哈佛大学麻省总医院李爱荣教授顺邀前来我院','2015-05-08','0');

INSERT INTO a_content VALUES(null,4,'a','河南省卫生计生委关于开展2017年 河南省医学教育优秀教学成果和优质课 教学评选工作的通知','2016-04-24','0');
INSERT INTO a_content VALUES(null,4,'a','河南省卫生计生委关于开展 2017年河南省医学教育研究项目 立项及结项工作的通知','2015-05-08','0');
INSERT INTO a_content VALUES(null,4,'a','我院领导深入学生公寓走访并进行安全卫生大检查','2016-03-30','0');
INSERT INTO a_content VALUES(null,4,'a','我院举行第十三届“金秋杯”学员篮球赛','2016-05-08','0');
INSERT INTO a_content VALUES(null,4,'a','河南省人民医院“金秋杯”篮球比赛今日开赛','2016-05-08','0');
INSERT INTO a_content VALUES(null,4,'a','我院获评“河南省住院医师规范化培训示范基地”','2016-05-08','0');
INSERT INTO a_content VALUES(null,4,'a','我院隆重举行2016级住院医师规范化培训开学典礼','2016-05-08','0');
INSERT INTO a_content VALUES(null,4,'a','岗前培训高标准，临床技能严要求','2016-05-08','0');
INSERT INTO a_content VALUES(null,4,'a','关于2016年省直医疗卫生单位住培理论结业考试报名的通知','2016-05-08','0');
INSERT INTO a_content VALUES(null,4,'a','优秀病例分享会，临床思维训练营','2016-05-08','0');
INSERT INTO a_content VALUES(null,4,'a','河南省人民医院老专家薪火相传系列讲座安排','2016-05-08','0');
INSERT INTO a_content VALUES(null,4,'a','薪火相传 老专家传道授业解惑','2016-05-08','0');
INSERT INTO a_content VALUES(null,4,'a','2016级住培学员报到须知','2016-05-08','0');
INSERT INTO a_content VALUES(null,4,'a','关于2016级住培学员推迟报到时间的紧急通知','2016-05-08','0');
INSERT INTO a_content VALUES(null,4,'a','河南省人民医院2016级外招住培学员报到通知','2016-05-08','0');
INSERT INTO a_content VALUES(null,4,'a','2017年河南省人民医院依托河南大学招收硕士研究生简章','2016-05-08','0');
INSERT INTO a_content VALUES(null,4,'a','郑州大学人民医院2017年硕士研究生招生专业目录','2016-05-08','0');
INSERT INTO a_content VALUES(null,4,'a','河南省人民医院2016年住培录取名单','2016-05-08','0');
INSERT INTO a_content VALUES(null,4,'a','2016年住培招生考试补充公告','2016-05-08','0');
INSERT INTO a_content VALUES(null,4,'a','河南省人民医院2016年住培招生考试公告','2016-05-08','0');
INSERT INTO a_content VALUES(null,4,'a','河南省人民医院2016年住院医师规范化培训招生简章','2016-05-08','0');
INSERT INTO a_content VALUES(null,4,'a','2016住培招生公告','2016-05-08','0');

INSERT INTO a_content VALUES(null,6,'简 讯','●4月5日-6日，由我院国家高级卒中中心主办的中原卒中学院首期出血性脑血管病培训班在中心导管室举行。来自全国26个省市的31名相关专业医务人员参加培训。培训班旨在规范及推广出血性脑血管病介入手术操...','2016/4/19','23');
INSERT INTO a_content VALUES(null,6,'我院“空中120”再添新成员','4月6日下午，我院航空救援中心一架新飞机在东院病房楼前停机坪进行飞行训练。这架直升机名为贝尔-429，具有内部空间较大等独特优势，且油箱增大，续航能力更强。它的监控系统（HUMS）设备，可监控旋翼...','2016-1-2','23');
INSERT INTO a_content VALUES(null,6,'互联智慧分级诊疗暨红会送医计划商丘站启动','4月6日，河南省“红会送医计划”商丘启动仪式在民权县人民医院新院区举行。河南省红十字会党组成员、副巡视员任义德，商丘市副市长倪玉民，我院副院长孙培春及互联智慧专家团10余名专家参加启动仪式。副院长...','2010-1-2','23');
INSERT INTO a_content VALUES(null,6,'国际医疗中心召开施工现场搬迁协调会','4月6日上午，河南省国际医疗中心在东院病房楼前召开施工现场搬迁协调会。副院长申志强，省立眼科医院党总支书记、中心筹建组组长赵东卿，筹建组及相关部门负责人参加会议。基建科科长贾承辉介绍了施工进展情况...','2010-1-2','23');
INSERT INTO a_content VALUES(null,6,'压实压紧“两个责任” 推动全面从严治党','为深入贯彻全国、全省卫生计生系统党风廉政建设和反腐倡廉工作会议精神，4月6日下午，我院召开2017年党风廉政建设工作会议，总结去年工作，安排部署2017年党风廉政建设和反腐倡廉工作。院领导顾建钦、...','2010-1-2','23');
INSERT INTO a_content VALUES(null,6,'全国优生科学大会支招精准医学时代生殖健康','4月7日上午，由中国优生科学协会主办、我院承办的第十次全国优生科学大会在郑州召开。中国工程院院士、我国著名医学遗传学专家曾溢滔，中国优生科学协会会长、复旦大学上海医学院细胞与遗传医学系主任左伋，河...','2010-1-2','23');
INSERT INTO a_content VALUES(null,6,'简 讯','●4月1日，我院心血管病专家高传玉、程兆云、李牧蔚前往北京参加中国心内心外科沙龙，与来自全国的十余位冠心病专家们一道研究“中国冠脉杂交血运重建专家共识（2017）”。与会专家就心血管内、外科联合治...','2010-1-2','23');
INSERT INTO a_content VALUES(null,6,'胃肠外科完成全省首例经肛门全直肠系膜切除术','3月24日，我院胃肠外科二病区主任张学东完成河南省首例经肛门全直肠系膜切除术（transanalTME，Ta-TME）。患者为老年男性，肿瘤位于直肠下端，距肛缘仅4cm。张学东主任经肛门从下向上完...','2010-1-2','23');
INSERT INTO a_content VALUES(null,6,'国际医疗中心召开基建工作推进会','3月38日上午，河南省国际医疗中心举行中心基建工作推进会。省立眼科医院党总支书记、中心筹建组组长赵东卿主持会议，中心筹建组及相关部门负责同志参加会议。会上，中心项目的设计方、施工方、监理方分别汇报...','2010-1-2','23');
INSERT INTO a_content VALUES(null,6,'“百年省医 人文讲堂”第二讲开讲','3月28日，“百年省医 人文讲堂”迎来2017年第二讲。中国生命关怀协会医院人文建设专业委员会副主任委员、国外访问学者、人文医学知名学者、高级礼仪培训师、医学礼仪专家赵邦教授应邀授课，他以《人文医...','2010-1-2','23');
INSERT INTO a_content VALUES(null,6,'走访学生公寓 确保生活安全','3月22日上午，院领导顾建钦、申志强来到我院学员西公寓进行实地查看，并现场指示教学部门联合保卫处、后勤处对西公寓进行全面安全大检查，努力为学员提供一个安全舒适的生活、学习场所。按照医院统一安排，当...','2010-1-2','23');



