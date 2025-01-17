DROP DATABASE IF EXISTS springboot4lkld;

CREATE DATABASE springboot4lkld default character set utf8mb4 collate utf8mb4_general_ci;

USE springboot4lkld;

DROP TABLE IF EXISTS `dongmanfenlei`;

CREATE TABLE `dongmanfenlei` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`fenlei` varchar(200) NOT NULL UNIQUE   COMMENT '分类',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='动漫分类';

INSERT INTO dongmanfenlei(id,fenlei) VALUES(11,'分类1');
INSERT INTO dongmanfenlei(id,fenlei) VALUES(12,'分类2');
INSERT INTO dongmanfenlei(id,fenlei) VALUES(13,'分类3');
INSERT INTO dongmanfenlei(id,fenlei) VALUES(14,'分类4');
INSERT INTO dongmanfenlei(id,fenlei) VALUES(15,'分类5');
INSERT INTO dongmanfenlei(id,fenlei) VALUES(16,'分类6');

DROP TABLE IF EXISTS `remendongman`;

CREATE TABLE `remendongman` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`dongmanmingcheng` varchar(200) NOT NULL   COMMENT '动漫名称',
	`fenlei` varchar(200) NOT NULL   COMMENT '分类',
	`biaoqian` varchar(200) NOT NULL   COMMENT '标签',
	`tupian` varchar(200)    COMMENT '图片',
	`zuozhe` varchar(200)    COMMENT '作者',
	`shipin` varchar(200)    COMMENT '视频',
	`gengxinriqi` date    COMMENT '更新日期',
	`neirongjieshao` longtext    COMMENT '内容介绍',
	`thumbsupnum` int   default '0' COMMENT '赞',
	`crazilynum` int   default '0' COMMENT '踩',
	`clicktime` datetime    COMMENT '最近点击时间',
	`clicknum` int   default '0' COMMENT '点击次数',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='热门动漫';

INSERT INTO remendongman(id,dongmanmingcheng,fenlei,biaoqian,tupian,zuozhe,shipin,gengxinriqi,neirongjieshao,thumbsupnum,crazilynum,clicktime,clicknum) VALUES(21,'动漫名称1','分类1','标签1','http://localhost:8080/springboot4lkld/upload/remendongman_tupian1.jpg','作者1','',CURRENT_TIMESTAMP,'内容介绍1',1,1,CURRENT_TIMESTAMP,1);
INSERT INTO remendongman(id,dongmanmingcheng,fenlei,biaoqian,tupian,zuozhe,shipin,gengxinriqi,neirongjieshao,thumbsupnum,crazilynum,clicktime,clicknum) VALUES(22,'动漫名称2','分类2','标签2','http://localhost:8080/springboot4lkld/upload/remendongman_tupian2.jpg','作者2','',CURRENT_TIMESTAMP,'内容介绍2',2,2,CURRENT_TIMESTAMP,2);
INSERT INTO remendongman(id,dongmanmingcheng,fenlei,biaoqian,tupian,zuozhe,shipin,gengxinriqi,neirongjieshao,thumbsupnum,crazilynum,clicktime,clicknum) VALUES(23,'动漫名称3','分类3','标签3','http://localhost:8080/springboot4lkld/upload/remendongman_tupian3.jpg','作者3','',CURRENT_TIMESTAMP,'内容介绍3',3,3,CURRENT_TIMESTAMP,3);
INSERT INTO remendongman(id,dongmanmingcheng,fenlei,biaoqian,tupian,zuozhe,shipin,gengxinriqi,neirongjieshao,thumbsupnum,crazilynum,clicktime,clicknum) VALUES(24,'动漫名称4','分类4','标签4','http://localhost:8080/springboot4lkld/upload/remendongman_tupian4.jpg','作者4','',CURRENT_TIMESTAMP,'内容介绍4',4,4,CURRENT_TIMESTAMP,4);
INSERT INTO remendongman(id,dongmanmingcheng,fenlei,biaoqian,tupian,zuozhe,shipin,gengxinriqi,neirongjieshao,thumbsupnum,crazilynum,clicktime,clicknum) VALUES(25,'动漫名称5','分类5','标签5','http://localhost:8080/springboot4lkld/upload/remendongman_tupian5.jpg','作者5','',CURRENT_TIMESTAMP,'内容介绍5',5,5,CURRENT_TIMESTAMP,5);
INSERT INTO remendongman(id,dongmanmingcheng,fenlei,biaoqian,tupian,zuozhe,shipin,gengxinriqi,neirongjieshao,thumbsupnum,crazilynum,clicktime,clicknum) VALUES(26,'动漫名称6','分类6','标签6','http://localhost:8080/springboot4lkld/upload/remendongman_tupian6.jpg','作者6','',CURRENT_TIMESTAMP,'内容介绍6',6,6,CURRENT_TIMESTAMP,6);

DROP TABLE IF EXISTS `wenzhangzhuanlan`;

CREATE TABLE `wenzhangzhuanlan` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`wenzhangbiaoti` varchar(200) NOT NULL   COMMENT '文章标题',
	`fenlei` varchar(200) NOT NULL   COMMENT '分类',
	`biaoqian` varchar(200) NOT NULL   COMMENT '标签',
	`tupian` varchar(200)    COMMENT '图片',
	`wenzhangxiangqing` longtext    COMMENT '文章详情',
	`fujian` varchar(200)    COMMENT '附件',
	`faburiqi` date    COMMENT '发布日期',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='文章专栏';

INSERT INTO wenzhangzhuanlan(id,wenzhangbiaoti,fenlei,biaoqian,tupian,wenzhangxiangqing,fujian,faburiqi) VALUES(31,'文章标题1','分类1','标签1','http://localhost:8080/springboot4lkld/upload/wenzhangzhuanlan_tupian1.jpg','文章详情1','',CURRENT_TIMESTAMP);
INSERT INTO wenzhangzhuanlan(id,wenzhangbiaoti,fenlei,biaoqian,tupian,wenzhangxiangqing,fujian,faburiqi) VALUES(32,'文章标题2','分类2','标签2','http://localhost:8080/springboot4lkld/upload/wenzhangzhuanlan_tupian2.jpg','文章详情2','',CURRENT_TIMESTAMP);
INSERT INTO wenzhangzhuanlan(id,wenzhangbiaoti,fenlei,biaoqian,tupian,wenzhangxiangqing,fujian,faburiqi) VALUES(33,'文章标题3','分类3','标签3','http://localhost:8080/springboot4lkld/upload/wenzhangzhuanlan_tupian3.jpg','文章详情3','',CURRENT_TIMESTAMP);
INSERT INTO wenzhangzhuanlan(id,wenzhangbiaoti,fenlei,biaoqian,tupian,wenzhangxiangqing,fujian,faburiqi) VALUES(34,'文章标题4','分类4','标签4','http://localhost:8080/springboot4lkld/upload/wenzhangzhuanlan_tupian4.jpg','文章详情4','',CURRENT_TIMESTAMP);
INSERT INTO wenzhangzhuanlan(id,wenzhangbiaoti,fenlei,biaoqian,tupian,wenzhangxiangqing,fujian,faburiqi) VALUES(35,'文章标题5','分类5','标签5','http://localhost:8080/springboot4lkld/upload/wenzhangzhuanlan_tupian5.jpg','文章详情5','',CURRENT_TIMESTAMP);
INSERT INTO wenzhangzhuanlan(id,wenzhangbiaoti,fenlei,biaoqian,tupian,wenzhangxiangqing,fujian,faburiqi) VALUES(36,'文章标题6','分类6','标签6','http://localhost:8080/springboot4lkld/upload/wenzhangzhuanlan_tupian6.jpg','文章详情6','',CURRENT_TIMESTAMP);

DROP TABLE IF EXISTS `huiyuan`;

CREATE TABLE `huiyuan` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`yonghuming` varchar(200) NOT NULL UNIQUE   COMMENT '用户名',
	`mima` varchar(200) NOT NULL   COMMENT '密码',
	`xingming` varchar(200) NOT NULL   COMMENT '姓名',
	`xingbie` varchar(200)    COMMENT '性别',
	`touxiang` varchar(200)    COMMENT '头像',
	`shouji` varchar(200)    COMMENT '手机',
	`youxiang` varchar(200)    COMMENT '邮箱',
	`gexingqianming` varchar(200)    COMMENT '个性签名',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='会员';

INSERT INTO huiyuan(id,yonghuming,mima,xingming,xingbie,touxiang,shouji,youxiang,gexingqianming) VALUES(41,'会员1','123456','姓名1','男','http://localhost:8080/springboot4lkld/upload/huiyuan_touxiang1.jpg','13823888881','773890001@qq.com','个性签名1');
INSERT INTO huiyuan(id,yonghuming,mima,xingming,xingbie,touxiang,shouji,youxiang,gexingqianming) VALUES(42,'会员2','123456','姓名2','男','http://localhost:8080/springboot4lkld/upload/huiyuan_touxiang2.jpg','13823888882','773890002@qq.com','个性签名2');
INSERT INTO huiyuan(id,yonghuming,mima,xingming,xingbie,touxiang,shouji,youxiang,gexingqianming) VALUES(43,'会员3','123456','姓名3','男','http://localhost:8080/springboot4lkld/upload/huiyuan_touxiang3.jpg','13823888883','773890003@qq.com','个性签名3');
INSERT INTO huiyuan(id,yonghuming,mima,xingming,xingbie,touxiang,shouji,youxiang,gexingqianming) VALUES(44,'会员4','123456','姓名4','男','http://localhost:8080/springboot4lkld/upload/huiyuan_touxiang4.jpg','13823888884','773890004@qq.com','个性签名4');
INSERT INTO huiyuan(id,yonghuming,mima,xingming,xingbie,touxiang,shouji,youxiang,gexingqianming) VALUES(45,'会员5','123456','姓名5','男','http://localhost:8080/springboot4lkld/upload/huiyuan_touxiang5.jpg','13823888885','773890005@qq.com','个性签名5');
INSERT INTO huiyuan(id,yonghuming,mima,xingming,xingbie,touxiang,shouji,youxiang,gexingqianming) VALUES(46,'会员6','123456','姓名6','男','http://localhost:8080/springboot4lkld/upload/huiyuan_touxiang6.jpg','13823888886','773890006@qq.com','个性签名6');

DROP TABLE IF EXISTS `huiyuanfenxiang`;

CREATE TABLE `huiyuanfenxiang` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`dongmanmingcheng` varchar(200) NOT NULL   COMMENT '动漫名称',
	`fenlei` varchar(200) NOT NULL   COMMENT '分类',
	`biaoqian` varchar(200) NOT NULL   COMMENT '标签',
	`tupian` varchar(200)    COMMENT '图片',
	`zuozhe` varchar(200)    COMMENT '作者',
	`shipin` varchar(200)    COMMENT '视频',
	`faburiqi` date    COMMENT '发布日期',
	`neirongjieshao` longtext    COMMENT '内容介绍',
	`yonghuming` varchar(200)    COMMENT '用户名',
	`youxiang` varchar(200)    COMMENT '邮箱',
	`gexingqianming` varchar(200)    COMMENT '个性签名',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='会员分享';

INSERT INTO huiyuanfenxiang(id,dongmanmingcheng,fenlei,biaoqian,tupian,zuozhe,shipin,faburiqi,neirongjieshao,yonghuming,youxiang,gexingqianming) VALUES(51,'动漫名称1','分类1','标签1','http://localhost:8080/springboot4lkld/upload/huiyuanfenxiang_tupian1.jpg','作者1','',CURRENT_TIMESTAMP,'内容介绍1','用户名1','邮箱1','个性签名1');
INSERT INTO huiyuanfenxiang(id,dongmanmingcheng,fenlei,biaoqian,tupian,zuozhe,shipin,faburiqi,neirongjieshao,yonghuming,youxiang,gexingqianming) VALUES(52,'动漫名称2','分类2','标签2','http://localhost:8080/springboot4lkld/upload/huiyuanfenxiang_tupian2.jpg','作者2','',CURRENT_TIMESTAMP,'内容介绍2','用户名2','邮箱2','个性签名2');
INSERT INTO huiyuanfenxiang(id,dongmanmingcheng,fenlei,biaoqian,tupian,zuozhe,shipin,faburiqi,neirongjieshao,yonghuming,youxiang,gexingqianming) VALUES(53,'动漫名称3','分类3','标签3','http://localhost:8080/springboot4lkld/upload/huiyuanfenxiang_tupian3.jpg','作者3','',CURRENT_TIMESTAMP,'内容介绍3','用户名3','邮箱3','个性签名3');
INSERT INTO huiyuanfenxiang(id,dongmanmingcheng,fenlei,biaoqian,tupian,zuozhe,shipin,faburiqi,neirongjieshao,yonghuming,youxiang,gexingqianming) VALUES(54,'动漫名称4','分类4','标签4','http://localhost:8080/springboot4lkld/upload/huiyuanfenxiang_tupian4.jpg','作者4','',CURRENT_TIMESTAMP,'内容介绍4','用户名4','邮箱4','个性签名4');
INSERT INTO huiyuanfenxiang(id,dongmanmingcheng,fenlei,biaoqian,tupian,zuozhe,shipin,faburiqi,neirongjieshao,yonghuming,youxiang,gexingqianming) VALUES(55,'动漫名称5','分类5','标签5','http://localhost:8080/springboot4lkld/upload/huiyuanfenxiang_tupian5.jpg','作者5','',CURRENT_TIMESTAMP,'内容介绍5','用户名5','邮箱5','个性签名5');
INSERT INTO huiyuanfenxiang(id,dongmanmingcheng,fenlei,biaoqian,tupian,zuozhe,shipin,faburiqi,neirongjieshao,yonghuming,youxiang,gexingqianming) VALUES(56,'动漫名称6','分类6','标签6','http://localhost:8080/springboot4lkld/upload/huiyuanfenxiang_tupian6.jpg','作者6','',CURRENT_TIMESTAMP,'内容介绍6','用户名6','邮箱6','个性签名6');

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`title` varchar(200)    COMMENT '帖子标题',
	`content` longtext NOT NULL   COMMENT '帖子内容',
	`parentid` bigint    COMMENT '父节点id',
	`userid` bigint NOT NULL   COMMENT '用户id',
	`username` varchar(200)    COMMENT '用户名',
	`isdone` varchar(200)    COMMENT '状态',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='论坛表';

INSERT INTO forum(id,title,content,parentid,userid,username,isdone) VALUES(61,'帖子标题1','帖子内容1',1,1,'用户名1','开放');
INSERT INTO forum(id,title,content,parentid,userid,username,isdone) VALUES(62,'帖子标题2','帖子内容2',2,2,'用户名2','开放');
INSERT INTO forum(id,title,content,parentid,userid,username,isdone) VALUES(63,'帖子标题3','帖子内容3',3,3,'用户名3','开放');
INSERT INTO forum(id,title,content,parentid,userid,username,isdone) VALUES(64,'帖子标题4','帖子内容4',4,4,'用户名4','开放');
INSERT INTO forum(id,title,content,parentid,userid,username,isdone) VALUES(65,'帖子标题5','帖子内容5',5,5,'用户名5','开放');
INSERT INTO forum(id,title,content,parentid,userid,username,isdone) VALUES(66,'帖子标题6','帖子内容6',6,6,'用户名6','开放');

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`userid` bigint NOT NULL   COMMENT '用户id',
	`refid` bigint    COMMENT '收藏id',
	`tablename` varchar(200)    COMMENT '表名',
	`name` varchar(200) NOT NULL   COMMENT '收藏名称',
	`picture` varchar(200) NOT NULL   COMMENT '收藏图片',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏表';


DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`title` varchar(200) NOT NULL   COMMENT '标题',
	`picture` varchar(200) NOT NULL   COMMENT '图片',
	`content` longtext NOT NULL   COMMENT '内容',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='动漫资讯';

INSERT INTO news(id,title,picture,content) VALUES(81,'标题1','http://localhost:8080/springboot4lkld/upload/news_picture1.jpg','内容1');
INSERT INTO news(id,title,picture,content) VALUES(82,'标题2','http://localhost:8080/springboot4lkld/upload/news_picture2.jpg','内容2');
INSERT INTO news(id,title,picture,content) VALUES(83,'标题3','http://localhost:8080/springboot4lkld/upload/news_picture3.jpg','内容3');
INSERT INTO news(id,title,picture,content) VALUES(84,'标题4','http://localhost:8080/springboot4lkld/upload/news_picture4.jpg','内容4');
INSERT INTO news(id,title,picture,content) VALUES(85,'标题5','http://localhost:8080/springboot4lkld/upload/news_picture5.jpg','内容5');
INSERT INTO news(id,title,picture,content) VALUES(86,'标题6','http://localhost:8080/springboot4lkld/upload/news_picture6.jpg','内容6');

DROP TABLE IF EXISTS `discussremendongman`;

CREATE TABLE `discussremendongman` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`refid` bigint NOT NULL   COMMENT '关联表id',
	`userid` bigint NOT NULL   COMMENT '用户id',
	`content` longtext NOT NULL   COMMENT '评论内容',
	`reply` longtext    COMMENT '回复内容',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='热门动漫评论表';

INSERT INTO discussremendongman(id,refid,userid,content,reply) VALUES(91,1,1,'评论内容1','回复内容1');
INSERT INTO discussremendongman(id,refid,userid,content,reply) VALUES(92,2,2,'评论内容2','回复内容2');
INSERT INTO discussremendongman(id,refid,userid,content,reply) VALUES(93,3,3,'评论内容3','回复内容3');
INSERT INTO discussremendongman(id,refid,userid,content,reply) VALUES(94,4,4,'评论内容4','回复内容4');
INSERT INTO discussremendongman(id,refid,userid,content,reply) VALUES(95,5,5,'评论内容5','回复内容5');
INSERT INTO discussremendongman(id,refid,userid,content,reply) VALUES(96,6,6,'评论内容6','回复内容6');

DROP TABLE IF EXISTS `discusswenzhangzhuanlan`;

CREATE TABLE `discusswenzhangzhuanlan` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`refid` bigint NOT NULL   COMMENT '关联表id',
	`userid` bigint NOT NULL   COMMENT '用户id',
	`content` longtext NOT NULL   COMMENT '评论内容',
	`reply` longtext    COMMENT '回复内容',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='文章专栏评论表';

INSERT INTO discusswenzhangzhuanlan(id,refid,userid,content,reply) VALUES(101,1,1,'评论内容1','回复内容1');
INSERT INTO discusswenzhangzhuanlan(id,refid,userid,content,reply) VALUES(102,2,2,'评论内容2','回复内容2');
INSERT INTO discusswenzhangzhuanlan(id,refid,userid,content,reply) VALUES(103,3,3,'评论内容3','回复内容3');
INSERT INTO discusswenzhangzhuanlan(id,refid,userid,content,reply) VALUES(104,4,4,'评论内容4','回复内容4');
INSERT INTO discusswenzhangzhuanlan(id,refid,userid,content,reply) VALUES(105,5,5,'评论内容5','回复内容5');
INSERT INTO discusswenzhangzhuanlan(id,refid,userid,content,reply) VALUES(106,6,6,'评论内容6','回复内容6');

DROP TABLE IF EXISTS `discusshuiyuanfenxiang`;

CREATE TABLE `discusshuiyuanfenxiang` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`refid` bigint NOT NULL   COMMENT '关联表id',
	`userid` bigint NOT NULL   COMMENT '用户id',
	`content` longtext NOT NULL   COMMENT '评论内容',
	`reply` longtext    COMMENT '回复内容',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='会员分享评论表';

INSERT INTO discusshuiyuanfenxiang(id,refid,userid,content,reply) VALUES(111,1,1,'评论内容1','回复内容1');
INSERT INTO discusshuiyuanfenxiang(id,refid,userid,content,reply) VALUES(112,2,2,'评论内容2','回复内容2');
INSERT INTO discusshuiyuanfenxiang(id,refid,userid,content,reply) VALUES(113,3,3,'评论内容3','回复内容3');
INSERT INTO discusshuiyuanfenxiang(id,refid,userid,content,reply) VALUES(114,4,4,'评论内容4','回复内容4');
INSERT INTO discusshuiyuanfenxiang(id,refid,userid,content,reply) VALUES(115,5,5,'评论内容5','回复内容5');
INSERT INTO discusshuiyuanfenxiang(id,refid,userid,content,reply) VALUES(116,6,6,'评论内容6','回复内容6');


DROP TABLE IF EXISTS `config`;

CREATE TABLE `config`(
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`name` varchar(100) NOT NULL COMMENT '配置参数名称',
	`value` varchar(100) COMMENT '配置参数值',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='配置文件';

insert into config(id,name,value) values(1,'picture1','http://localhost:8080/springboot4lkld/upload/picture1.jpg');
insert into config(id,name,value) values(2,'picture2','http://localhost:8080/springboot4lkld/upload/picture2.jpg');
insert into config(id,name,value) values(3,'picture3','http://localhost:8080/springboot4lkld/upload/picture3.jpg');
insert into config(id,name) values(6,'homepage');


DROP TABLE IF EXISTS `users`;

CREATE TABLE `users`(
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`username` varchar(100) NOT NULL COMMENT '用户名',
	`password` varchar(100) NOT NULL COMMENT '密码',
	`role` varchar(100) default '管理员' COMMENT '角色',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '新增时间',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户表';

insert into users(id,username, password) values(1,'abo','abo');

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token`(
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`userid` bigint NOT NULL COMMENT '用户id',
	`username` varchar(100) NOT NULL COMMENT '用户名',
	`tablename` varchar(100) COMMENT '表名',
	`role` varchar(100) COMMENT '角色',
	`token` varchar(200) NOT NULL COMMENT '密码',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '新增时间',
	`expiratedtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '过期时间',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='token表';

