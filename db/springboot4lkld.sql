-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: springboot4lkld
-- ------------------------------------------------------
-- Server version	5.7.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/springboot4lkld/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/springboot4lkld/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/springboot4lkld/upload/picture3.jpg'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discusshuiyuanfenxiang`
--

DROP TABLE IF EXISTS `discusshuiyuanfenxiang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discusshuiyuanfenxiang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 COMMENT='会员分享评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discusshuiyuanfenxiang`
--

LOCK TABLES `discusshuiyuanfenxiang` WRITE;
/*!40000 ALTER TABLE `discusshuiyuanfenxiang` DISABLE KEYS */;
INSERT INTO `discusshuiyuanfenxiang` VALUES (111,'2021-01-05 11:42:41',1,1,'评论内容1','回复内容1'),(112,'2021-01-05 11:42:41',2,2,'评论内容2','回复内容2'),(113,'2021-01-05 11:42:41',3,3,'评论内容3','回复内容3'),(114,'2021-01-05 11:42:41',4,4,'评论内容4','回复内容4'),(115,'2021-01-05 11:42:41',5,5,'评论内容5','回复内容5'),(116,'2021-01-05 11:42:41',6,6,'评论内容6','回复内容6');
/*!40000 ALTER TABLE `discusshuiyuanfenxiang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussremendongman`
--

DROP TABLE IF EXISTS `discussremendongman`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussremendongman` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='热门动漫评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussremendongman`
--

LOCK TABLES `discussremendongman` WRITE;
/*!40000 ALTER TABLE `discussremendongman` DISABLE KEYS */;
INSERT INTO `discussremendongman` VALUES (91,'2021-01-05 11:42:41',1,1,'评论内容1','回复内容1'),(92,'2021-01-05 11:42:41',2,2,'评论内容2','回复内容2'),(93,'2021-01-05 11:42:41',3,3,'评论内容3','回复内容3'),(94,'2021-01-05 11:42:41',4,4,'评论内容4','回复内容4'),(95,'2021-01-05 11:42:41',5,5,'评论内容5','回复内容5'),(96,'2021-01-05 11:42:41',6,6,'评论内容6','回复内容6');
/*!40000 ALTER TABLE `discussremendongman` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discusswenzhangzhuanlan`
--

DROP TABLE IF EXISTS `discusswenzhangzhuanlan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discusswenzhangzhuanlan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 COMMENT='文章专栏评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discusswenzhangzhuanlan`
--

LOCK TABLES `discusswenzhangzhuanlan` WRITE;
/*!40000 ALTER TABLE `discusswenzhangzhuanlan` DISABLE KEYS */;
INSERT INTO `discusswenzhangzhuanlan` VALUES (101,'2021-01-05 11:42:41',1,1,'评论内容1','回复内容1'),(102,'2021-01-05 11:42:41',2,2,'评论内容2','回复内容2'),(103,'2021-01-05 11:42:41',3,3,'评论内容3','回复内容3'),(104,'2021-01-05 11:42:41',4,4,'评论内容4','回复内容4'),(105,'2021-01-05 11:42:41',5,5,'评论内容5','回复内容5'),(106,'2021-01-05 11:42:41',6,6,'评论内容6','回复内容6');
/*!40000 ALTER TABLE `discusswenzhangzhuanlan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dongmanfenlei`
--

DROP TABLE IF EXISTS `dongmanfenlei`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dongmanfenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fenlei` varchar(200) NOT NULL COMMENT '分类',
  PRIMARY KEY (`id`),
  UNIQUE KEY `fenlei` (`fenlei`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='动漫分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dongmanfenlei`
--

LOCK TABLES `dongmanfenlei` WRITE;
/*!40000 ALTER TABLE `dongmanfenlei` DISABLE KEYS */;
INSERT INTO `dongmanfenlei` VALUES (11,'2021-01-05 11:42:41','分类1'),(12,'2021-01-05 11:42:41','分类2'),(13,'2021-01-05 11:42:41','分类3'),(14,'2021-01-05 11:42:41','分类4'),(15,'2021-01-05 11:42:41','分类5'),(16,'2021-01-05 11:42:41','分类6');
/*!40000 ALTER TABLE `dongmanfenlei` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forum`
--

DROP TABLE IF EXISTS `forum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forum` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) DEFAULT NULL COMMENT '帖子标题',
  `content` longtext NOT NULL COMMENT '帖子内容',
  `parentid` bigint(20) DEFAULT NULL COMMENT '父节点id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `isdone` varchar(200) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='论坛表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum`
--

LOCK TABLES `forum` WRITE;
/*!40000 ALTER TABLE `forum` DISABLE KEYS */;
INSERT INTO `forum` VALUES (61,'2021-01-05 11:42:41','帖子标题1','帖子内容1',1,1,'用户名1','开放'),(62,'2021-01-05 11:42:41','帖子标题2','帖子内容2',2,2,'用户名2','开放'),(63,'2021-01-05 11:42:41','帖子标题3','帖子内容3',3,3,'用户名3','开放'),(64,'2021-01-05 11:42:41','帖子标题4','帖子内容4',4,4,'用户名4','开放'),(65,'2021-01-05 11:42:41','帖子标题5','帖子内容5',5,5,'用户名5','开放'),(66,'2021-01-05 11:42:41','帖子标题6','帖子内容6',6,6,'用户名6','开放');
/*!40000 ALTER TABLE `forum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `huiyuan`
--

DROP TABLE IF EXISTS `huiyuan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `huiyuan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `gexingqianming` varchar(200) DEFAULT NULL COMMENT '个性签名',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='会员';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `huiyuan`
--

LOCK TABLES `huiyuan` WRITE;
/*!40000 ALTER TABLE `huiyuan` DISABLE KEYS */;
INSERT INTO `huiyuan` VALUES (41,'2021-01-05 11:42:41','会员1','123456','姓名1','男','http://localhost:8080/springboot4lkld/upload/huiyuan_touxiang1.jpg','13823888881','773890001@qq.com','个性签名1'),(42,'2021-01-05 11:42:41','会员2','123456','姓名2','男','http://localhost:8080/springboot4lkld/upload/huiyuan_touxiang2.jpg','13823888882','773890002@qq.com','个性签名2'),(43,'2021-01-05 11:42:41','会员3','123456','姓名3','男','http://localhost:8080/springboot4lkld/upload/huiyuan_touxiang3.jpg','13823888883','773890003@qq.com','个性签名3'),(44,'2021-01-05 11:42:41','会员4','123456','姓名4','男','http://localhost:8080/springboot4lkld/upload/huiyuan_touxiang4.jpg','13823888884','773890004@qq.com','个性签名4'),(45,'2021-01-05 11:42:41','会员5','123456','姓名5','男','http://localhost:8080/springboot4lkld/upload/huiyuan_touxiang5.jpg','13823888885','773890005@qq.com','个性签名5'),(46,'2021-01-05 11:42:41','会员6','123456','姓名6','男','http://localhost:8080/springboot4lkld/upload/huiyuan_touxiang6.jpg','13823888886','773890006@qq.com','个性签名6');
/*!40000 ALTER TABLE `huiyuan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `huiyuanfenxiang`
--

DROP TABLE IF EXISTS `huiyuanfenxiang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `huiyuanfenxiang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dongmanmingcheng` varchar(200) NOT NULL COMMENT '动漫名称',
  `fenlei` varchar(200) NOT NULL COMMENT '分类',
  `biaoqian` varchar(200) NOT NULL COMMENT '标签',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `zuozhe` varchar(200) DEFAULT NULL COMMENT '作者',
  `shipin` varchar(200) DEFAULT NULL COMMENT '视频',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  `neirongjieshao` longtext COMMENT '内容介绍',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `gexingqianming` varchar(200) DEFAULT NULL COMMENT '个性签名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='会员分享';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `huiyuanfenxiang`
--

LOCK TABLES `huiyuanfenxiang` WRITE;
/*!40000 ALTER TABLE `huiyuanfenxiang` DISABLE KEYS */;
INSERT INTO `huiyuanfenxiang` VALUES (51,'2021-01-05 11:42:41','动漫名称1','分类1','标签1','http://localhost:8080/springboot4lkld/upload/huiyuanfenxiang_tupian1.jpg','作者1','','2021-01-05','内容介绍1','用户名1','邮箱1','个性签名1'),(52,'2021-01-05 11:42:41','动漫名称2','分类2','标签2','http://localhost:8080/springboot4lkld/upload/huiyuanfenxiang_tupian2.jpg','作者2','','2021-01-05','内容介绍2','用户名2','邮箱2','个性签名2'),(53,'2021-01-05 11:42:41','动漫名称3','分类3','标签3','http://localhost:8080/springboot4lkld/upload/huiyuanfenxiang_tupian3.jpg','作者3','','2021-01-05','内容介绍3','用户名3','邮箱3','个性签名3'),(54,'2021-01-05 11:42:41','动漫名称4','分类4','标签4','http://localhost:8080/springboot4lkld/upload/huiyuanfenxiang_tupian4.jpg','作者4','','2021-01-05','内容介绍4','用户名4','邮箱4','个性签名4'),(55,'2021-01-05 11:42:41','动漫名称5','分类5','标签5','http://localhost:8080/springboot4lkld/upload/huiyuanfenxiang_tupian5.jpg','作者5','','2021-01-05','内容介绍5','用户名5','邮箱5','个性签名5'),(56,'2021-01-05 11:42:41','动漫名称6','分类6','标签6','http://localhost:8080/springboot4lkld/upload/huiyuanfenxiang_tupian6.jpg','作者6','','2021-01-05','内容介绍6','用户名6','邮箱6','个性签名6');
/*!40000 ALTER TABLE `huiyuanfenxiang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='动漫资讯';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (81,'2021-01-05 11:42:41','标题1','http://localhost:8080/springboot4lkld/upload/news_picture1.jpg','内容1'),(82,'2021-01-05 11:42:41','标题2','http://localhost:8080/springboot4lkld/upload/news_picture2.jpg','内容2'),(83,'2021-01-05 11:42:41','标题3','http://localhost:8080/springboot4lkld/upload/news_picture3.jpg','内容3'),(84,'2021-01-05 11:42:41','标题4','http://localhost:8080/springboot4lkld/upload/news_picture4.jpg','内容4'),(85,'2021-01-05 11:42:41','标题5','http://localhost:8080/springboot4lkld/upload/news_picture5.jpg','内容5'),(86,'2021-01-05 11:42:41','标题6','http://localhost:8080/springboot4lkld/upload/news_picture6.jpg','内容6');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `remendongman`
--

DROP TABLE IF EXISTS `remendongman`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `remendongman` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dongmanmingcheng` varchar(200) NOT NULL COMMENT '动漫名称',
  `fenlei` varchar(200) NOT NULL COMMENT '分类',
  `biaoqian` varchar(200) NOT NULL COMMENT '标签',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `zuozhe` varchar(200) DEFAULT NULL COMMENT '作者',
  `shipin` varchar(200) DEFAULT NULL COMMENT '视频',
  `gengxinriqi` date DEFAULT NULL COMMENT '更新日期',
  `neirongjieshao` longtext COMMENT '内容介绍',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='热门动漫';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `remendongman`
--

LOCK TABLES `remendongman` WRITE;
/*!40000 ALTER TABLE `remendongman` DISABLE KEYS */;
INSERT INTO `remendongman` VALUES (21,'2021-01-05 11:42:41','动漫名称1','分类1','标签1','http://localhost:8080/springboot4lkld/upload/remendongman_tupian1.jpg','作者1','','2021-01-05','内容介绍1',1,1,'2021-01-05 19:42:41',1),(22,'2021-01-05 11:42:41','动漫名称2','分类2','标签2','http://localhost:8080/springboot4lkld/upload/remendongman_tupian2.jpg','作者2','','2021-01-05','内容介绍2',2,2,'2021-01-05 19:42:41',2),(23,'2021-01-05 11:42:41','动漫名称3','分类3','标签3','http://localhost:8080/springboot4lkld/upload/remendongman_tupian3.jpg','作者3','','2021-01-05','内容介绍3',3,3,'2021-01-05 19:42:41',3),(24,'2021-01-05 11:42:41','动漫名称4','分类4','标签4','http://localhost:8080/springboot4lkld/upload/remendongman_tupian4.jpg','作者4','','2021-01-05','内容介绍4',4,4,'2021-01-05 19:42:41',4),(25,'2021-01-05 11:42:41','动漫名称5','分类5','标签5','http://localhost:8080/springboot4lkld/upload/remendongman_tupian5.jpg','作者5','','2021-01-05','内容介绍5',5,5,'2021-01-05 19:42:41',5),(26,'2021-01-05 11:42:41','动漫名称6','分类6','标签6','http://localhost:8080/springboot4lkld/upload/remendongman_tupian6.jpg','作者6','','2021-01-05','内容介绍6',6,6,'2021-01-05 19:42:41',6);
/*!40000 ALTER TABLE `remendongman` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-01-05 11:42:41');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wenzhangzhuanlan`
--

DROP TABLE IF EXISTS `wenzhangzhuanlan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wenzhangzhuanlan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `wenzhangbiaoti` varchar(200) NOT NULL COMMENT '文章标题',
  `fenlei` varchar(200) NOT NULL COMMENT '分类',
  `biaoqian` varchar(200) NOT NULL COMMENT '标签',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `wenzhangxiangqing` longtext COMMENT '文章详情',
  `fujian` varchar(200) DEFAULT NULL COMMENT '附件',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='文章专栏';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wenzhangzhuanlan`
--

LOCK TABLES `wenzhangzhuanlan` WRITE;
/*!40000 ALTER TABLE `wenzhangzhuanlan` DISABLE KEYS */;
INSERT INTO `wenzhangzhuanlan` VALUES (31,'2021-01-05 11:42:41','文章标题1','分类1','标签1','http://localhost:8080/springboot4lkld/upload/wenzhangzhuanlan_tupian1.jpg','文章详情1','','2021-01-05'),(32,'2021-01-05 11:42:41','文章标题2','分类2','标签2','http://localhost:8080/springboot4lkld/upload/wenzhangzhuanlan_tupian2.jpg','文章详情2','','2021-01-05'),(33,'2021-01-05 11:42:41','文章标题3','分类3','标签3','http://localhost:8080/springboot4lkld/upload/wenzhangzhuanlan_tupian3.jpg','文章详情3','','2021-01-05'),(34,'2021-01-05 11:42:41','文章标题4','分类4','标签4','http://localhost:8080/springboot4lkld/upload/wenzhangzhuanlan_tupian4.jpg','文章详情4','','2021-01-05'),(35,'2021-01-05 11:42:41','文章标题5','分类5','标签5','http://localhost:8080/springboot4lkld/upload/wenzhangzhuanlan_tupian5.jpg','文章详情5','','2021-01-05'),(36,'2021-01-05 11:42:41','文章标题6','分类6','标签6','http://localhost:8080/springboot4lkld/upload/wenzhangzhuanlan_tupian6.jpg','文章详情6','','2021-01-05');
/*!40000 ALTER TABLE `wenzhangzhuanlan` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-05 19:44:46
