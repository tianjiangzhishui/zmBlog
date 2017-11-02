-- 创建数据库zmBlog
SET NAMES UTF8;
DROP DATABASE IF EXISTS zmBlog;
CREATE DATABASE zmBlog CHARSET=UTF8;
USE zmBlog;
-- 创建网站模版表格
--   1.个人博客模板webPersonal
CREATE TABLE webPersonal(
  webP_id INT PRIMARY KEY AUTO_INCREMENT,
  webP_img VARCHAR(64),
  webP_title VARCHAR(50),
  webP_author_img VARCHAR (64),
  webP_author_name VARCHAR(16),
  webP_publictime DATETIME,
  webP_sort VARCHAR(32),
  webP_descript VARCHAR(500),
--     内容路径
  webP_url VARCHAR(100)
);



--  2.wordpress博客模板
CREATE TABLE wordPress(
  wordP_id INT PRIMARY KEY AUTO_INCREMENT,
  wordP_img VARCHAR(64),
  wordP_title VARCHAR(50),
  wordP_author_img VARCHAR (64),
  wordP_author_name VARCHAR(16),
  wordP_publictime DATETIME,
  wordP_sort VARCHAR(32),
  wordP_descript VARCHAR (500),
  wordP_url VARCHAR(100)
);


--   3.企业网站模板company
CREATE TABLE company(
  seoProb_id INT PRIMARY KEY AUTO_INCREMENT,
  seoProb_img VARCHAR(64),
  seoProb_title VARCHAR(50),
  seoProb_author_img VARCHAR (64),
  seoProb_author_name VARCHAR(16),
  seoProb_publictime DATETIME,
  seoProb_sort VARCHAR(32),
  seoProb_descript VARCHAR (500),
  seoProb_url VARCHAR (100)
);


-- 视频教程flash
--   1.基础知识
CREATE TABLE basis(
  bss_id INT PRIMARY KEY AUTO_INCREMENT,
  bss_title VARCHAR(16),
  bss_addr VARCHAR (100)
);

--   2.项目实战
CREATE TABLE project(
  pro_id INT PRIMARY KEY AUTO_INCREMENT,
  pro_title VARCHAR(16),
  pro_addr VARCHAR (100)
);

--   3.后台结合
CREATE TABLE backing(
  back_id INT PRIMARY KEY AUTO_INCREMENT,
  back_title VARCHAR(16),
  back_addr VARCHAR (100)
);

-- 学无止境
--   1.SEO优化
--    1.1 SEO常见问题
CREATE TABLE seoProblem(
  seoProb_id INT PRIMARY KEY AUTO_INCREMENT,
  seoProb_img VARCHAR(64),
  seoProb_title VARCHAR(50),
  seoProb_author_img VARCHAR (64),
  seoProb_author_name VARCHAR(16),
  seoProb_publictime DATETIME,
  seoProb_sort VARCHAR(32),
  seoProb_descript VARCHAR(500),
  seoProb_url VARCHAR (100)
);


--    1.2 SEO基础优化
CREATE TABLE seoBasis(
  seoBss_id INT PRIMARY KEY AUTO_INCREMENT,
  seoBss_img VARCHAR(64),
  seoBss_title VARCHAR(50),
  seoBss_author_img VARCHAR (64),
  seoBss_author_name VARCHAR(16),
  seoBss_publictime DATETIME,
  seoBss_sort VARCHAR(32),
  seoBss_descript VARCHAR(500),
  seoBss_url VARCHAR (100)
);


--    1.3 SEO进阶优化
CREATE TABLE seoOptimize(
  seoOpt_id INT PRIMARY KEY AUTO_INCREMENT,
  seoOpt_img VARCHAR(64),
  seoOpt_title VARCHAR(50),
  seoOpt_author_img VARCHAR (64),
  seoOpt_author_name VARCHAR(16),
  seoOpt_publictime DATETIME,
  seoOpt_sort VARCHAR(32),
  seoOpt_descript VARCHAR(500),
  seoOpt_url VARCHAR (100)
);


--    1.4 SEO实战案例
CREATE TABLE seoProject(
  seoProject_id INT PRIMARY KEY AUTO_INCREMENT,
  seoProject_img VARCHAR(64),
  seoProject_title VARCHAR(50),
  seoProject_author_img VARCHAR (64),
  seoProject_author_name VARCHAR(16),
  seoProject_publictime DATETIME,
  seoProject_sort VARCHAR(32),
  seoProject_descript VARCHAR(500),
  seoProject_url VARCHAR (100)
);



--   2.Web前端
--     2.1  网页制作基础
CREATE TABLE webFrontEndBasis(
  wfeBss_id INT PRIMARY KEY AUTO_INCREMENT,
  wfeBss_img VARCHAR(64),
  wfeBss_title VARCHAR(50),
  wfeBss_author_img VARCHAR (64),
  wfeBss_author_name VARCHAR(16),
  wfeBss_publictime DATETIME,
  wfeBss_sort VARCHAR(32),
  wfeBss_descript VARCHAR(500),
  wfeBss_url VARCHAR (100)
);

--     2.2  HTML5/CSS
CREATE TABLE webFrontEndHC(
  wfeHC_id INT PRIMARY KEY AUTO_INCREMENT,
  wfeHC_img VARCHAR(64),
  wfeHC_title VARCHAR(50),
  wfeHC_author_img VARCHAR (64),
  wfeHC_author_name VARCHAR(16),
  wfeHC_publictime DATETIME,
  wfeHC_sort VARCHAR(32),
  wfeHC_descript VARCHAR(500),
  wfeHC_url VARCHAR (100)
);

--     2.3  javascript/jQuery
CREATE TABLE webFrontEndJS(
  wfeJS_id INT PRIMARY KEY AUTO_INCREMENT,
  wfeJS_img VARCHAR(64),
  wfeJS_title VARCHAR(50),
  wfeJS_author_img VARCHAR (64),
  wfeJS_author_name VARCHAR(16),
  wfeJS_publictime DATETIME,
  wfeJS_sort VARCHAR(32),
  wfeJS_descript VARCHAR(500),
  wfsJS_url VARCHAR (100)
);

--     2.4  网站实战案例
CREATE TABLE webFrontEndProject(
  wfeProject_id INT PRIMARY KEY AUTO_INCREMENT,
  wfeProject_img VARCHAR(64),
  wfeProject_title VARCHAR(50),
  wfeProject_author_img VARCHAR (64),
  wfeProject_author_name VARCHAR(16),
  wfeProject_publictime DATETIME,
  wfeProject_sort VARCHAR(32),
  wfeProject_descript VARCHAR(500),
  wfeProject_url VARCHAR (100)
);

--   3.程序人生
CREATE TABLE coder(
  coder_id INT PRIMARY KEY AUTO_INCREMENT,
  coder_img VARCHAR(64),
  coder_title VARCHAR(50),
  coder_author_img VARCHAR (64),
  coder_author_name VARCHAR(16),
  coder_publictime DATETIME,
  coder_sort VARCHAR(32),
  coder_descript VARCHAR(500),
  coder_url VARCHAR (100)
);

--   4.网络营销
CREATE TABLE networkMarketing(
  netM_id INT PRIMARY KEY AUTO_INCREMENT,
  netM_img VARCHAR(64),
  netM_title VARCHAR(50),
  netM_author_img VARCHAR (64),
  netM_author_name VARCHAR(16),
  netM_publictime DATETIME,
  netM_sort VARCHAR(32),
  netM_descript VARCHAR(500),
  netM_url VARCHAR (100)
);

-- 个人日记
CREATE TABLE diary(
  diary_id INT PRIMARY KEY AUTO_INCREMENT,
  diary_img VARCHAR(64),
  diary_content VARCHAR(1000),
  diary_time DATETIME
);

-- 留言板
--     1.用户数据库，用于注册、登录
CREATE TABLE user(
  user_id INT PRIMARY KEY AUTO_INCREMENT,
  user_nickname VARCHAR(16),
  user_email VARCHAR (50),
  user_pwd VARCHAR (32),
  user_website VARCHAR (100),
  user_isRemember VARCHAR (10)
);
--    2.留言内容
CREATE TABLE message(
  msg_id INT PRIMARY KEY AUTO_INCREMENT,
  msg_user_email VARCHAR(100),
  msg_content VARCHAR (500),
  msg_zan INT ,
  msg_cai INT ,
  msg_replay INT ,
  msg_time DATETIME
)
-- 右侧区域
--   1.搜索

--   2.最新推荐
-- CREATE TABLE newRecommend(
--
-- );

--   表格中插入内容 -----------------------------------------------
-- 网站模板
--  1.个人模板webPersonal标题
INSERT INTO webPersonal VALUES
(NULL,'1-150Z40S9100-L.jpg','html5响应式博客模板','myself.jpg','张敏','2015-09-04 08:48:07','个人博客模板','这套响应式博客模板,采用“html5+css3“技术制作,同时可以兼容PC电脑、平板、手机端,本站采用了大量的CSS3效果。网站整体的风格偏向于:简洁、大气,很适合做商业类型的博客站点。
让我们一起来看看，这套博客模板首页以及部分页面截图','http://www.duanliang920.com/muban/blog/323.html');

--  2.wordpress模板标题
INSERT INTO wordPress VALUES
(NULL,'1-140R02001510-L.jpg','一款html5的wordpress模板','myself.jpg','张敏','2014-09-13 22:13:20','wordpress模板','这款Wordpress模板整体颜色布局以浅蓝色为主，给人一种神秘感和亲切感。虽然从布局上来看比较简单，但采用了一些CSS3特效，确使网站整体提升了一个档次。','http://www.duanliang920.com/muban/wp/261.html'),
(NULL,'1-140R01635110-L.jpg','一款蓝色主题的wordpress模板','myself.jpg','张敏','2014-09-13 22:13:20','wordpress模板','这款Wordpress模板整体风格比较简洁，同时博客也增加一个实用的小功能，比如订阅博客、微博、联系博主。','http://www.duanliang920.com/muban/wp/261.html'),
(NULL,'1-140R0194J30-L.jpg','一款小清新的wordpress模板','myself.jpg','张敏','2014-09-13 22:13:20','wordpress模板','这是一款小清新的Wordpress博客模板，此博客模板主要有以下功能：读者墙，博客统计，最新文章、随机文章、热评文章的切换，同时这款模板也比较利于SEO优化。','http://www.duanliang920.com/muban/wp/261.html');

--  3.company企业网站模板
INSERT INTO company VALUES
(NULL ,'1-1509191945470-L.jpg','简单大气机械类企业网站模板','myself.jpg','张敏','2015-09-04 08:48:07','企业网站模板',' 这套机械设备企业网站模板,整体采用蓝色风格,给人一种亲切的感觉。让我们一起来看看这套机械设备企业网站模板,有哪些模块:
 1、首页 2、关于我们 3、最新资讯  4、产品展示  5、售后服务
 6、荣誉资质 7、在线预订 8、联系我们,这几个模块组成。','http://www.duanliang920.com/muban/qiye/325.html'),
(NULL ,'1-150Z40924500-L.jpg','大气绿色装修类企业网站模板','myself.jpg','张敏','2015-09-04 08:48:07','企业网站模板','这套大气绿色环保墙衣涂料类企业网站模板,采用绿色作为背景,让人有一种舒适的感觉。让我们一起来看看这套大气绿色环保墙衣涂料类企业网站模板有哪些模块:
    1、首页 2、关于我们 3、环保墙衣  4、墙衣新闻  5、墙衣效果  6、墙衣加盟  7、墙衣门店 8、联系我们，这几个模块组成。','http://www.duanliang920.com/muban/qiye/325.html'),
(NULL ,'1-150Z40Z3330-L.jpg','电子工业类企业网站模板','myself.jpg','张敏','2015-09-04 08:48:07','企业网站模板',' 这套电子工业通用企业网站模板,banner采用全屏展示,让网站整体的风格提升了一个档次。让我们一起来看看这大气装修公司企业网站模板有哪些模块:
     1、首页 2、公司简介 3、产品展示  4、公司设备  5、公司动态  6、联系我们 ,这几个模块组成。','http://www.duanliang920.com/muban/qiye/325.html');


-- 视频教程flash
--   1.基础知识
INSERT INTO basis VALUES
(NULL ,'网页入门','视频地址'),
(NULL ,'常用的html标签','视频地址'),
(NULL ,'html表单','视频地址'),
(NULL ,'css入门','视频地址'),
(NULL ,'常用的css样式','视频地址');

--   2.项目实战
INSERT INTO project VALUES
(NULL ,'网站开发流程','视频地址'),
(NULL ,'网页效果图切图','视频地址'),
(NULL ,'网页头部制作','视频地址'),
(NULL ,'首页banner制作','视频地址'),
(NULL ,'首页栏目制作','视频地址');

--   3.后台结合
INSERT INTO backing VALUES
(NULL ,'搭建CNS后台','视频地址'),
(NULL ,'建立栏目和通用头部、尾部模板','视频地址'),
(NULL ,'栏目页完善的内页调用','视频地址'),
(NULL ,'首页调用','视频地址'),
(NULL ,'完善首页、栏目页面调用','视频地址');
-- 学无止境
--   1.SEO优化
--     1.1 seo常见问题
INSERT INTO seoProblem VALUES
(NULL,'1-150Z1204S30-L.jpg','什么是404错误页面','myself.jpg','张敏','2015-05-24 22:31:26','SEO常见问题','什么是404错误页面：告诉浏览者其所请求的页面不存在或链接错误，同时引导用户使用网站其他页面而不是关闭窗口离开。
产生404错误页面原因：1.网页URL生成规则改变。 2.网页文件更名或移动位置。','http://www.duanliang920.com/learn/SEO/jj/322.html'),
(NULL,'1-150F92245190-L.jpg','新站排名下降的原因','myself.jpg','张敏','2014-07-20 22:25:20','SEO常见问题','相信很多seoer者都有遇到了这样的事情，新站在一个时间内排名非常ok的，但是过了一段时间后排名突然下降了，甚至下降到20名以外。这是什么原因？更为奇怪的是有的站并没有作弊排名也是这样，下面由笔者简单的来分析下原因。','http://www.duanliang920.com/learn/SEO/jj/322.html'),
(NULL,'1-150F62025470-L.jpg','什么是黑帽SEO','myself.jpg','张敏','2014-07-08 16:29:20','SEO常见问题','我们常说：“不管白猫和黑猫，抓到老鼠就是好猫”。在SEO这个行业，同样也有形象比喻的两只猫--“白帽和黑帽”，难道真的像我们说的那样吗？不管你采用白帽手段还是黑帽手段，只要你能把排名做上去，那就是管用的方法。如果你这样认为你就错了。','http://www.duanliang920.com/learn/SEO/jj/322.html'),
(NULL,'1-140F31631310-L.jpg','网站首页被K的原因','myself.jpg','张敏','2014-06-24 16:24:13','SEO常见问题','昨天一朋友突然跟我说：他网站“关键词”在百度上搜索不到了，以前还能在百度上搜索到的，这时我的第一反应，感觉他首页被百度K了。然后通过站长工具和site指令的检测显示：内页有收录，首页无快照，同时证明了我之前的猜测。那么是什么原因导致首页被K呢？','http://www.duanliang920.com/learn/SEO/jj/322.html'),
(NULL,'1-140G01915240-L.jpg','网站只收录首页不收录内页几点原因（转）','myself.jpg','张敏','2014-03-31 10:39:20','SEO常见问题','今天笔者就跟大家一起说说，为什么网站只收录首页不收录内页的九大原因。一：因为是新站，我相信对于这一点大家没什么异议吧。新站都会经历一次审核期，一般持续一到三个月，当然表现好就会缩短，表现不好就会一直只收录首页，即使内页收录了也不会放出。','http://www.duanliang920.com/learn/SEO/jj/322.html'),
(NULL,'1-140H0095T40-L.jpg','为什么新站前期排名老是浮动（转）','myself.jpg','张敏','2014-03-28 17:39:20','SEO常见问题','首先，新站关键词浮动是一个常态。不管是我自己做的站，还是在论坛帮助新手解答分析的网站。我发现，50%以上的新站在前期会出现关键词浮动的情况。首先我要说明白一下新站的关键词排名会有什么浮动情况：一般来说，新站会在向百度提交网站后1~2周开始被收录首页，并且','http://www.duanliang920.com/learn/SEO/jj/322.html'),
(NULL,'1-150F62025470-L.jpg','什么是网站权重','myself.jpg','张敏','2014-03-09 10:41:00','SEO常见问题','网站权重：是指搜索引擎给网站（包括网页）赋予一定的权威值，对网站（包括网页）权威的评估评价（也就是网站与网站在搜索引擎眼中的分级制“待遇”的不同表现，还有一个想法就是综合搜索引擎算法中所有有利因素所带来的“数值效果”被搜索引擎所认可）。一个网站权重越高，在搜索引擎所占的份量越大','http://www.duanliang920.com/learn/SEO/jj/322.html');

--     1.2 seo基础优化
INSERT INTO seoBasis VALUES
(NULL,'1-150Z1204S30-L.jpg','如何选择域名更加利于网站优化','myself.jpg','张敏','2015-05-24 22:31:26','SEO常见问题','什么是404错误页面：告诉浏览者其所请求的页面不存在或链接错误，同时引导用户使用网站其他页面而不是关闭窗口离开。
产生404错误页面原因：1.网页URL生成规则改变。 2.网页文件更名或移动位置。','http://www.duanliang920.com/learn/SEO/yh/317.html'),
(NULL,'1-150F92245190-L.jpg','SEO基础知识-新手必看','myself.jpg','张敏','2014-07-20 22:25:20','SEO常见问题','相信很多seoer者都有遇到了这样的事情，新站在一个时间内排名非常ok的，但是过了一段时间后排名突然下降了，甚至下降到20名以外。这是什么原因？更为奇怪的是有的站并没有作弊排名也是这样，下面由笔者简单的来分析下原因。','http://www.duanliang920.com/learn/SEO/yh/317.html'),
(NULL,'1-150F62025470-L.jpg','排名和收录之间有何关系','myself.jpg','张敏','2014-07-08 16:29:20','SEO常见问题','我们常说：“不管白猫和黑猫，抓到老鼠就是好猫”。在SEO这个行业，同样也有形象比喻的两只猫--“白帽和黑帽”，难道真的像我们说的那样吗？不管你采用白帽手段还是黑帽手段，只要你能把排名做上去，那就是管用的方法。如果你这样认为你就错了。','http://www.duanliang920.com/learn/SEO/yh/317.html'),
(NULL,'1-140F31631310-L.jpg','写网页内容需要注意写什么（转）','myself.jpg','张敏','2014-06-24 16:24:13','SEO常见问题','昨天一朋友突然跟我说：他网站“关键词”在百度上搜索不到了，以前还能在百度上搜索到的，这时我的第一反应，感觉他首页被百度K了。然后通过站长工具和site指令的检测显示：内页有收录，首页无快照，同时证明了我之前的猜测。那么是什么原因导致首页被K呢？','http://www.duanliang920.com/learn/SEO/yh/317.html'),
(NULL,'1-140G01915240-L.jpg','文章如何被百度收录','myself.jpg','张敏','2014-03-31 10:39:20','SEO常见问题','今天笔者就跟大家一起说说，为什么网站只收录首页不收录内页的九大原因。一：因为是新站，我相信对于这一点大家没什么异议吧。新站都会经历一次审核期，一般持续一到三个月，当然表现好就会缩短，表现不好就会一直只收录首页，即使内页收录了也不会放出。','http://www.duanliang920.com/learn/SEO/yh/317.html'),
(NULL,'1-140H0095T40-L.jpg','轻松教你如何查看网站日志','myself.jpg','张敏','2014-03-28 17:39:20','SEO常见问题','首先，新站关键词浮动是一个常态。不管是我自己做的站，还是在论坛帮助新手解答分析的网站。我发现，50%以上的新站在前期会出现关键词浮动的情况。首先我要说明白一下新站的关键词排名会有什么浮动情况：一般来说，新站会在向百度提交网站后1~2周开始被收录首页，并且','http://www.duanliang920.com/learn/SEO/yh/317.html'),
(NULL,'1-150F62025470-L.jpg','搜索引擎的工作原理','myself.jpg','张敏','2014-03-09 10:41:00','SEO常见问题','网站权重：是指搜索引擎给网站（包括网页）赋予一定的权威值，对网站（包括网页）权威的评估评价（也就是网站与网站在搜索引擎眼中的分级制“待遇”的不同表现，还有一个想法就是综合搜索引擎算法中所有有利因素所带来的“数值效果”被搜索引擎所认可）。一个网站权重越高，在搜索引擎所占的份量越大','http://www.duanliang920.com/learn/SEO/yh/317.html');

--    1.3 SEO进阶优化
INSERT INTO seoOptimize VALUES
(NULL,'1-150Z1204S30-L.jpg','怎样搭建利于SEO优化的网站','myself.jpg','张敏','2015-05-24 22:31:26','SEO常见问题','什么是404错误页面：告诉浏览者其所请求的页面不存在或链接错误，同时引导用户使用网站其他页面而不是关闭窗口离开。
产生404错误页面原因：1.网页URL生成规则改变。 2.网页文件更名或移动位置。','http://www.duanliang920.com/learn/web/tx/341.html'),
(NULL,'1-150F92245190-L.jpg','我眼中的SEO','myself.jpg','张敏','2014-07-20 22:25:20','SEO常见问题','相信很多seoer者都有遇到了这样的事情，新站在一个时间内排名非常ok的，但是过了一段时间后排名突然下降了，甚至下降到20名以外。这是什么原因？更为奇怪的是有的站并没有作弊排名也是这样，下面由笔者简单的来分析下原因。','http://www.duanliang920.com/learn/web/tx/341.html'),
(NULL,'1-150F62025470-L.jpg','如何才能写好一片软文','myself.jpg','张敏','2014-07-08 16:29:20','SEO常见问题','我们常说：“不管白猫和黑猫，抓到老鼠就是好猫”。在SEO这个行业，同样也有形象比喻的两只猫--“白帽和黑帽”，难道真的像我们说的那样吗？不管你采用白帽手段还是黑帽手段，只要你能把排名做上去，那就是管用的方法。如果你这样认为你就错了。','http://www.duanliang920.com/learn/web/tx/341.html'),
(NULL,'1-140F31631310-L.jpg','关于网站用户体验','myself.jpg','张敏','2014-06-24 16:24:13','SEO常见问题','昨天一朋友突然跟我说：他网站“关键词”在百度上搜索不到了，以前还能在百度上搜索到的，这时我的第一反应，感觉他首页被百度K了。然后通过站长工具和site指令的检测显示：内页有收录，首页无快照，同时证明了我之前的猜测。那么是什么原因导致首页被K呢？','http://www.duanliang920.com/learn/web/tx/341.html'),
(NULL,'1-140G01915240-L.jpg','学习SEO的一些心得','myself.jpg','张敏','2014-03-31 10:39:20','SEO常见问题','今天笔者就跟大家一起说说，为什么网站只收录首页不收录内页的九大原因。一：因为是新站，我相信对于这一点大家没什么异议吧。新站都会经历一次审核期，一般持续一到三个月，当然表现好就会缩短，表现不好就会一直只收录首页，即使内页收录了也不会放出。','http://www.duanliang920.com/learn/web/tx/341.html'),
(NULL,'1-140H0095T40-L.jpg','关键词排名的三个时期','myself.jpg','张敏','2014-03-28 17:39:20','SEO常见问题','首先，新站关键词浮动是一个常态。不管是我自己做的站，还是在论坛帮助新手解答分析的网站。我发现，50%以上的新站在前期会出现关键词浮动的情况。首先我要说明白一下新站的关键词排名会有什么浮动情况：一般来说，新站会在向百度提交网站后1~2周开始被收录首页，并且','http://www.duanliang920.com/learn/web/tx/341.html'),
(NULL,'1-150F62025470-L.jpg','怎样提升网站的收录','myself.jpg','张敏','2014-03-09 10:41:00','SEO常见问题','网站权重：是指搜索引擎给网站（包括网页）赋予一定的权威值，对网站（包括网页）权威的评估评价（也就是网站与网站在搜索引擎眼中的分级制“待遇”的不同表现，还有一个想法就是综合搜索引擎算法中所有有利因素所带来的“数值效果”被搜索引擎所认可）。一个网站权重越高，在搜索引擎所占的份量越大','http://www.duanliang920.com/learn/web/tx/341.html');

--    1.4 SEO实战案例
INSERT INTO seoProject VALUES
(NULL,'1-150Z1204S30-L.jpg','不锈钢门行业-SEO建站优化分析方案','myself.jpg','张敏','2015-05-24 22:31:26','SEO常见问题','什么是404错误页面：告诉浏览者其所请求的页面不存在或链接错误，同时引导用户使用网站其他页面而不是关闭窗口离开。
产生404错误页面原因：1.网页URL生成规则改变。 2.网页文件更名或移动位置。','http://www.duanliang920.com/learn/web/tx/341.html'),
(NULL,'1-150F92245190-L.jpg','利用百度数据来做SEO优化系列（二）','myself.jpg','张敏','2014-07-20 22:25:20','SEO常见问题','相信很多seoer者都有遇到了这样的事情，新站在一个时间内排名非常ok的，但是过了一段时间后排名突然下降了，甚至下降到20名以外。这是什么原因？更为奇怪的是有的站并没有作弊排名也是这样，下面由笔者简单的来分析下原因。','http://www.duanliang920.com/learn/web/tx/341.html'),
(NULL,'1-150F62025470-L.jpg','利用百度数据来做SEO优化系列（一）','myself.jpg','张敏','2014-07-08 16:29:20','SEO常见问题','我们常说：“不管白猫和黑猫，抓到老鼠就是好猫”。在SEO这个行业，同样也有形象比喻的两只猫--“白帽和黑帽”，难道真的像我们说的那样吗？不管你采用白帽手段还是黑帽手段，只要你能把排名做上去，那就是管用的方法。如果你这样认为你就错了。','http://www.duanliang920.com/learn/web/tx/341.html'),
(NULL,'1-140F31631310-L.jpg','关键词如何快速进入百度排名','myself.jpg','张敏','2014-06-24 16:24:13','SEO常见问题','昨天一朋友突然跟我说：他网站“关键词”在百度上搜索不到了，以前还能在百度上搜索到的，这时我的第一反应，感觉他首页被百度K了。然后通过站长工具和site指令的检测显示：内页有收录，首页无快照，同时证明了我之前的猜测。那么是什么原因导致首页被K呢？','http://www.duanliang920.com/learn/web/tx/341.html'),
(NULL,'1-140G01915240-L.jpg','SEO试验第一天--标题的定位','myself.jpg','张敏','2014-03-31 10:39:20','SEO常见问题','今天笔者就跟大家一起说说，为什么网站只收录首页不收录内页的九大原因。一：因为是新站，我相信对于这一点大家没什么异议吧。新站都会经历一次审核期，一般持续一到三个月，当然表现好就会缩短，表现不好就会一直只收录首页，即使内页收录了也不会放出。','http://www.duanliang920.com/learn/web/tx/341.html');




--   2. web前端
--     2.1  网页制作基础
INSERT INTO webFrontEndBasis VALUES
(NULL,'1-150Z1204S30-L.jpg','前端MVVM框架之“Vue.js实战篇”','myself.jpg','张敏','2014-10-25 16:29:50','网页制作基础','前言：看过我之前写的系列文章（Vue.js基础篇、Vue.js组件篇)，相信大家对vue.js这个前端框架有了一定的了解。想必也想把Vue急切的运用在项目中，看看它的魅力到底有多大？别急，今天我会满足大家的想法。','http://www.duanliang920.com/learn/web/list_26_2.html'),
(NULL,'1-14030Z024070-L.jpg','前端MVVM框架之“Vue.js组件篇”','myself.jpg','张敏','2014-10-25 16:29:50','网页制作基础','前言：看过我之前写的系列文章（Vue.js基础篇、Vue.js组件篇)，相信大家对vue.js这个前端框架有了一定的了解。想必也想把Vue急切的运用在项目中，看看它的魅力到底有多大？别急，今天我会满足大家的想法。','http://www.duanliang920.com/learn/web/list_26_2.html'),
(NULL,'1-14031P005360-L.jpg','前端MVVM框架之“Vue.js入门篇”','myself.jpg','张敏','2014-10-25 16:29:50','网页制作基础','前言：看过我之前写的系列文章（Vue.js基础篇、Vue.js组件篇)，相信大家对vue.js这个前端框架有了一定的了解。想必也想把Vue急切的运用在项目中，看看它的魅力到底有多大？别急，今天我会满足大家的想法。','http://www.duanliang920.com/learn/web/list_26_2.html'),
(NULL,'1-150Z1204S30-L.jpg','Webpack之“多页面开发”最佳实','myself.jpg','张敏','2014-10-25 16:29:50','网页制作基础','前言：看过我之前写的系列文章（Vue.js基础篇、Vue.js组件篇)，相信大家对vue.js这个前端框架有了一定的了解。想必也想把Vue急切的运用在项目中，看看它的魅力到底有多大？别急，今天我会满足大家的想法。','http://www.duanliang920.com/learn/web/list_26_2.html'),
(NULL,'1-14052G613560-L.jpg','前端构建工具之“Webpack”','myself.jpg','张敏','2014-10-25 16:29:50','网页制作基础','前言：看过我之前写的系列文章（Vue.js基础篇、Vue.js组件篇)，相信大家对vue.js这个前端框架有了一定的了解。想必也想把Vue急切的运用在项目中，看看它的魅力到底有多大？别急，今天我会满足大家的想法。','http://www.duanliang920.com/learn/web/list_26_2.html'),
(NULL,'1-140306201I80-L.jpg','webapp移动端适配方案之“手淘框架flexible”','myself.jpg','张敏','2014-10-25 16:29:50','网页制作基础','前言：看过我之前写的系列文章（Vue.js基础篇、Vue.js组件篇)，相信大家对vue.js这个前端框架有了一定的了解。想必也想把Vue急切的运用在项目中，看看它的魅力到底有多大？别急，今天我会满足大家的想法。','http://www.duanliang920.com/learn/web/list_26_2.html'),
(NULL,'1-140409232S70-L.jpg','javascript与jQuery的那些事','myself.jpg','张敏','2014-10-25 16:29:50','网页制作基础','前言：看过我之前写的系列文章（Vue.js基础篇、Vue.js组件篇)，相信大家对vue.js这个前端框架有了一定的了解。想必也想把Vue急切的运用在项目中，看看它的魅力到底有多大？别急，今天我会满足大家的想法。','http://www.duanliang920.com/learn/web/list_26_2.html'),
(NULL,'1-140422225Z50-L.jpg','一张图让你明白js中的距离值之间的关系','myself.jpg','张敏','2014-10-25 16:29:50','网页制作基础','前言：看过我之前写的系列文章（Vue.js基础篇、Vue.js组件篇)，相信大家对vue.js这个前端框架有了一定的了解。想必也想把Vue急切的运用在项目中，看看它的魅力到底有多大？别急，今天我会满足大家的想法。','http://www.duanliang920.com/learn/web/list_26_2.html');


--     2.2  HTML5/CSS
INSERT INTO webFrontEndHC VALUES
(NULL,'1-150Z1204S30-L.jpg','webapp移动端适配方案之“手淘框架flexible”','myself.jpg','张敏','2014-10-25 16:29:50','网页制作基础','前言：看过我之前写的系列文章（Vue.js基础篇、Vue.js组件篇)，相信大家对vue.js这个前端框架有了一定的了解。想必也想把Vue急切的运用在项目中，看看它的魅力到底有多大？别急，今天我会满足大家的想法。','http://www.duanliang920.com/learn/web/html5/304.html'),
(NULL,'1-14030Z024070-L.jpg','移动端开发需要注意的一些事情”','myself.jpg','张敏','2014-10-25 16:29:50','网页制作基础','前言：看过我之前写的系列文章（Vue.js基础篇、Vue.js组件篇)，相信大家对vue.js这个前端框架有了一定的了解。想必也想把Vue急切的运用在项目中，看看它的魅力到底有多大？别急，今天我会满足大家的想法。','http://www.duanliang920.com/learn/web/html5/304.html'),
(NULL,'1-14031P005360-L.jpg','WebApp开发之--"rem"单位”','myself.jpg','张敏','2014-10-25 16:29:50','网页制作基础','前言：看过我之前写的系列文章（Vue.js基础篇、Vue.js组件篇)，相信大家对vue.js这个前端框架有了一定的了解。想必也想把Vue急切的运用在项目中，看看它的魅力到底有多大？别急，今天我会满足大家的想法。','http://www.duanliang920.com/learn/web/html5/304.html'),
(NULL,'1-150Z1204S30-L.jpg','浅谈：html5和html的区别','myself.jpg','张敏','2014-10-25 16:29:50','网页制作基础','前言：看过我之前写的系列文章（Vue.js基础篇、Vue.js组件篇)，相信大家对vue.js这个前端框架有了一定的了解。想必也想把Vue急切的运用在项目中，看看它的魅力到底有多大？别急，今天我会满足大家的想法。','http://www.duanliang920.com/learn/web/html5/304.html'),
(NULL,'1-14052G613560-L.jpg','HTML5移动端手机网站开发流程','myself.jpg','张敏','2014-10-25 16:29:50','网页制作基础','前言：看过我之前写的系列文章（Vue.js基础篇、Vue.js组件篇)，相信大家对vue.js这个前端框架有了一定的了解。想必也想把Vue急切的运用在项目中，看看它的魅力到底有多大？别急，今天我会满足大家的想法。','http://www.duanliang920.com/learn/web/html5/304.html'),
(NULL,'1-140306201I80-L.jpg','关于响应式布局','myself.jpg','张敏','2014-10-25 16:29:50','网页制作基础','前言：看过我之前写的系列文章（Vue.js基础篇、Vue.js组件篇)，相信大家对vue.js这个前端框架有了一定的了解。想必也想把Vue急切的运用在项目中，看看它的魅力到底有多大？别急，今天我会满足大家的想法。','http://www.duanliang920.com/learn/web/html5/304.html'),
(NULL,'1-140409232S70-L.jpg','不可不知的html5标签','myself.jpg','张敏','2014-10-25 16:29:50','网页制作基础','前言：看过我之前写的系列文章（Vue.js基础篇、Vue.js组件篇)，相信大家对vue.js这个前端框架有了一定的了解。想必也想把Vue急切的运用在项目中，看看它的魅力到底有多大？别急，今天我会满足大家的想法。','http://www.duanliang920.com/learn/web/html5/304.html');


--     2.3  javascript/jQuery
INSERT INTO webFrontEndJS VALUES
(NULL,'1-150Z1204S30-L.jpg','javascript与jQuery的那些事','myself.jpg','张敏','2014-10-25 16:29:50','网页制作基础','前言：看过我之前写的系列文章（Vue.js基础篇、Vue.js组件篇)，相信大家对vue.js这个前端框架有了一定的了解。想必也想把Vue急切的运用在项目中，看看它的魅力到底有多大？别急，今天我会满足大家的想法。','http://www.duanliang920.com/learn/web/tx/341.html'),
(NULL,'1-14030Z024070-L.jpg','一张图让你明白js中的距离值之间的关系','myself.jpg','张敏','2014-10-25 16:29:50','网页制作基础','前言：看过我之前写的系列文章（Vue.js基础篇、Vue.js组件篇)，相信大家对vue.js这个前端框架有了一定的了解。想必也想把Vue急切的运用在项目中，看看它的魅力到底有多大？别急，今天我会满足大家的想法。','http://www.duanliang920.com/learn/web/tx/341.html'),
(NULL,'1-14031P005360-L.jpg','学习jQuery插件开发','myself.jpg','张敏','2014-10-25 16:29:50','网页制作基础','前言：看过我之前写的系列文章（Vue.js基础篇、Vue.js组件篇)，相信大家对vue.js这个前端框架有了一定的了解。想必也想把Vue急切的运用在项目中，看看它的魅力到底有多大？别急，今天我会满足大家的想法。','http://www.duanliang920.com/learn/web/tx/341.html'),
(NULL,'1-150Z1204S30-L.jpg','JS实现-DIV自动居中代码','myself.jpg','张敏','2014-10-25 16:29:50','网页制作基础','前言：看过我之前写的系列文章（Vue.js基础篇、Vue.js组件篇)，相信大家对vue.js这个前端框架有了一定的了解。想必也想把Vue急切的运用在项目中，看看它的魅力到底有多大？别急，今天我会满足大家的想法。','http://www.duanliang920.com/learn/web/tx/341.html'),
(NULL,'1-14052G613560-L.jpg','jquery制作banner全屏特效切换原理','myself.jpg','张敏','2014-10-25 16:29:50','网页制作基础','前言：看过我之前写的系列文章（Vue.js基础篇、Vue.js组件篇)，相信大家对vue.js这个前端框架有了一定的了解。想必也想把Vue急切的运用在项目中，看看它的魅力到底有多大？别急，今天我会满足大家的想法。','http://www.duanliang920.com/learn/web/tx/341.html'),
(NULL,'1-140306201I80-L.jpg','javascript的简介','myself.jpg','张敏','2014-10-25 16:29:50','网页制作基础','前言：看过我之前写的系列文章（Vue.js基础篇、Vue.js组件篇)，相信大家对vue.js这个前端框架有了一定的了解。想必也想把Vue急切的运用在项目中，看看它的魅力到底有多大？别急，今天我会满足大家的想法。','http://www.duanliang920.com/learn/web/tx/341.html'),
(NULL,'1-140409232S70-L.jpg','Jquery属性--学习笔记（一）','myself.jpg','张敏','2014-10-25 16:29:50','网页制作基础','前言：看过我之前写的系列文章（Vue.js基础篇、Vue.js组件篇)，相信大家对vue.js这个前端框架有了一定的了解。想必也想把Vue急切的运用在项目中，看看它的魅力到底有多大？别急，今天我会满足大家的想法。','http://www.duanliang920.com/learn/web/tx/341.html');

--     2.4  网站实战案例
INSERT INTO webFrontEndProject VALUES
(NULL,'1-150Z1204S30-L.jpg','网站项目实战开发（二）','myself.jpg','张敏','2014-10-25 16:29:50','网页制作基础','前言：看过我之前写的系列文章（Vue.js基础篇、Vue.js组件篇)，相信大家对vue.js这个前端框架有了一定的了解。想必也想把Vue急切的运用在项目中，看看它的魅力到底有多大？别急，今天我会满足大家的想法。','http://www.duanliang920.com/learn/web/sz/236.html'),
(NULL,'1-14030Z024070-L.jpg','网站项目实战开发（-）','myself.jpg','张敏','2014-10-25 16:29:50','网页制作基础','前言：看过我之前写的系列文章（Vue.js基础篇、Vue.js组件篇)，相信大家对vue.js这个前端框架有了一定的了解。想必也想把Vue急切的运用在项目中，看看它的魅力到底有多大？别急，今天我会满足大家的想法。','http://www.duanliang920.com/learn/web/sz/236.html'),
(NULL,'1-14031P005360-L.jpg','web前端--网页制作细节的处理','myself.jpg','张敏','2014-10-25 16:29:50','网页制作基础','前言：看过我之前写的系列文章（Vue.js基础篇、Vue.js组件篇)，相信大家对vue.js这个前端框架有了一定的了解。想必也想把Vue急切的运用在项目中，看看它的魅力到底有多大？别急，今天我会满足大家的想法。','http://www.duanliang920.com/learn/web/sz/236.html'),
(NULL,'1-150Z1204S30-L.jpg','专业web前端人员应注意的几点细节','myself.jpg','张敏','2014-10-25 16:29:50','网页制作基础','前言：看过我之前写的系列文章（Vue.js基础篇、Vue.js组件篇)，相信大家对vue.js这个前端框架有了一定的了解。想必也想把Vue急切的运用在项目中，看看它的魅力到底有多大？别急，今天我会满足大家的想法。','http://www.duanliang920.com/learn/web/sz/236.html'),
(NULL,'1-14052G613560-L.jpg','个人博客之站内代码优化实战篇','myself.jpg','张敏','2014-10-25 16:29:50','网页制作基础','前言：看过我之前写的系列文章（Vue.js基础篇、Vue.js组件篇)，相信大家对vue.js这个前端框架有了一定的了解。想必也想把Vue急切的运用在项目中，看看它的魅力到底有多大？别急，今天我会满足大家的想法。','http://www.duanliang920.com/learn/web/sz/236.html');


--   3.程序人生
INSERT INTO coder VALUES
(NULL,'1-150Z1204S30-L.jpg','一个前端的自我修养（转）','myself.jpg','张敏','2014-10-25 16:29:50','网页制作基础','前言：看过我之前写的系列文章（Vue.js基础篇、Vue.js组件篇)，相信大家对vue.js这个前端框架有了一定的了解。想必也想把Vue急切的运用在项目中，看看它的魅力到底有多大？别急，今天我会满足大家的想法。','http://www.duanliang920.com/learn/gw/282.html'),
(NULL,'1-14030Z024070-L.jpg','设计的那点事','myself.jpg','张敏','2014-10-25 16:29:50','网页制作基础','前言：看过我之前写的系列文章（Vue.js基础篇、Vue.js组件篇)，相信大家对vue.js这个前端框架有了一定的了解。想必也想把Vue急切的运用在项目中，看看它的魅力到底有多大？别急，今天我会满足大家的想法。','http://www.duanliang920.com/learn/gw/282.html'),
(NULL,'1-14031P005360-L.jpg','道，思维改变一切！','myself.jpg','张敏','2014-10-25 16:29:50','网页制作基础','前言：看过我之前写的系列文章（Vue.js基础篇、Vue.js组件篇)，相信大家对vue.js这个前端框架有了一定的了解。想必也想把Vue急切的运用在项目中，看看它的魅力到底有多大？别急，今天我会满足大家的想法。','http://www.duanliang920.com/learn/gw/282.html'),
(NULL,'1-150Z1204S30-L.jpg','技术真的有那么重要吗？','myself.jpg','张敏','2014-10-25 16:29:50','网页制作基础','前言：看过我之前写的系列文章（Vue.js基础篇、Vue.js组件篇)，相信大家对vue.js这个前端框架有了一定的了解。想必也想把Vue急切的运用在项目中，看看它的魅力到底有多大？别急，今天我会满足大家的想法。','http://www.duanliang920.com/learn/gw/282.html'),
(NULL,'1-14052G613560-L.jpg','看看最近发生的事情','myself.jpg','张敏','2014-10-25 16:29:50','网页制作基础','前言：看过我之前写的系列文章（Vue.js基础篇、Vue.js组件篇)，相信大家对vue.js这个前端框架有了一定的了解。想必也想把Vue急切的运用在项目中，看看它的魅力到底有多大？别急，今天我会满足大家的想法。','http://www.duanliang920.com/learn/gw/282.html'),
(NULL,'1-140306201I80-L.jpg','学习网页制作我能干什么？','myself.jpg','张敏','2014-10-25 16:29:50','网页制作基础','前言：看过我之前写的系列文章（Vue.js基础篇、Vue.js组件篇)，相信大家对vue.js这个前端框架有了一定的了解。想必也想把Vue急切的运用在项目中，看看它的魅力到底有多大？别急，今天我会满足大家的想法。','http://www.duanliang920.com/learn/gw/282.html'),
(NULL,'1-140409232S70-L.jpg','学会创新','myself.jpg','张敏','2014-10-25 16:29:50','网页制作基础','前言：看过我之前写的系列文章（Vue.js基础篇、Vue.js组件篇)，相信大家对vue.js这个前端框架有了一定的了解。想必也想把Vue急切的运用在项目中，看看它的魅力到底有多大？别急，今天我会满足大家的想法。','http://www.duanliang920.com/learn/gw/282.html');


--   4.网络营销
INSERT INTO networkMarketing VALUES
(NULL,'1-150Z1204S30-L.jpg','怎么才能做好微信内容营销？','myself.jpg','张敏','2014-10-25 16:29:50','网页制作基础','前言：看过我之前写的系列文章（Vue.js基础篇、Vue.js组件篇) ，相信大家对vue.js这个前端框架有了一定的了解。想必也想把Vue急切的运用在项目中，看看它的魅力到底有多大？别急，今天我会满足大家的想法。' ,'http://www.duanliang920.com/learn/market320.html'),
(NULL,'1-150Z1204S30-L.jpg','怎么才能做好微信内容营销？','myself.jpg','张敏','2014-10-25 16:29:50','网页制作基础','前言：看过我之前写的系列文章（Vue.js基础篇、Vue.js组件篇) ，相信大家对vue.js这个前端框架有了一定的了解。想必也想把Vue急切的运用在项目中，看看它的魅力到底有多大？别急，今天我会满足大家的想法。' ,'http://www.duanliang920.com/learn/market320.html'),
(NULL,'1-14031P005360-L.jpg','微信朋友圈卖面膜的那些猫腻，你知道吗？','myself.jpg','张敏','2014-10-25 16:29:50','网页制作基础','前言：看过我之前写的系列文章（Vue.js基础篇、Vue.js组件篇)，相信大家对vue.js这个前端框架有了一定的了解。想必也想把Vue急切的运用在项目中，看看它的魅力到底有多大？别急，今天我会满足大家的想法。' ,'http://www.duanliang920.com/learn/market320.html'),
(NULL,'1-150Z1204S30-L.jpg','如何玩转微信营销','myself.jpg','张敏','2014-10-25 16:29:50','网页制作基础','前言：看过我之前写的系列文章（Vue.js基础篇、Vue.js组件篇)，相信大家对vue.js这个前端框架有了一定的了解。想必也想把Vue急切的运用在项目中，看看它的魅力到底有多大？别急，今天我会满足大家的想法。' ,'http://www.duanliang920.com/learn/market320.html'),
(NULL,'1-14052G613560-L.jpg','留住网站用户技术篇之免费赠送干货(转)','myself.jpg','张敏','2014-10-25 16:29:50','网页制作基础','前言：看过我之前写的系列文章（Vue.js基础篇、Vue.js组件篇)，相信大家对vue.js这个前端框架有了一定的了解。想必也想把Vue急切的运用在项目中，看看它的魅力到底有多大？别急，今天我会满足大家的想法。' ,'http://www.duanliang920.com/learn/market320.html'),
(NULL,'1-140306201I80-L.jpg','如何设计一个好LOGO（转）','myself.jpg','张敏','2014-10-25 16:29:50','网页制作基础','前言：看过我之前写的系列文章（Vue.js基础篇、Vue.js组件篇)，相信大家对vue.js这个前端框架有了一定的了解。想必也想把Vue急切的运用在项目中，看看它的魅力到底有多大？别急，今天我会满足大家的想法。' ,'http://www.duanliang920.com/learn/market320.html'),
(NULL,'1-140409232S70-L.jpg','谈网站如何留住用户','myself.jpg','张敏','2014-10-25 16:29:50','网页制作基础','前言：看过我之前写的系列文章（Vue.js基础篇、Vue.js组件篇)，相信大家对vue.js这个前端框架有了一定的了解。想必也想把Vue急切的运用在项目中，看看它的魅力到底有多大？别急，今天我会满足大家的想法。' ,'http://www.duanliang920.com/learn/market320.html');


-- 个人日记
INSERT INTO diary VALUES
(NULL,'1-160PF015190-L.jpg','想要做成一件事，除了勤奋，还需要专注与热爱，三者缺一不可。这样才有可能会成功！','2015-06-17 22:35:16'),
(NULL,'1-160PF015190-L.jpg','想要做成一件事，除了勤奋，还需要专注与热爱，三者缺一不可。这样才有可能会成功！','2015-06-17 22:35:16'),
(NULL,'1-160PF015190-L.jpg','想要做成一件事，除了勤奋，还需要专注与热爱，三者缺一不可。这样才有可能会成功！','2015-06-17 22:35:16'),
(NULL,'1-160PF015190-L.jpg','想要做成一件事，除了勤奋，还需要专注与热爱，三者缺一不可。这样才有可能会成功！','2015-06-17 22:35:16'),
(NULL,'1-160PF015190-L.jpg','想要做成一件事，除了勤奋，还需要专注与热爱，三者缺一不可。这样才有可能会成功！','2015-06-17 22:35:16'),
(NULL,'1-160PF015190-L.jpg','想要做成一件事，除了勤奋，还需要专注与热爱，三者缺一不可。这样才有可能会成功！','2015-06-17 22:35:16'),
(NULL,'1-160PF015190-L.jpg','想要做成一件事，除了勤奋，还需要专注与热爱，三者缺一不可。这样才有可能会成功！','2015-06-17 22:35:16'),
(NULL,'1-160PF015190-L.jpg','想要做成一件事，除了勤奋，还需要专注与热爱，三者缺一不可。这样才有可能会成功！','2015-06-17 22:35:16'),
(NULL,'1-160PF015190-L.jpg','想要做成一件事，除了勤奋，还需要专注与热爱，三者缺一不可。这样才有可能会成功！','2015-06-17 22:35:16'),
(NULL,'1-160PF015190-L.jpg','想要做成一件事，除了勤奋，还需要专注与热爱，三者缺一不可。这样才有可能会成功！','2015-06-17 22:35:16'),
(NULL,'1-160PF015190-L.jpg','想要做成一件事，除了勤奋，还需要专注与热爱，三者缺一不可。这样才有可能会成功！','2015-06-17 22:35:16'),
(NULL,'1-160PF015190-L.jpg','想要做成一件事，除了勤奋，还需要专注与热爱，三者缺一不可。这样才有可能会成功！','2015-06-17 22:35:16');

-- 留言板








