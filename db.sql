/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssm57oqs
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssm57oqs` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssm57oqs`;

/*Table structure for table `address` */

DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `name` varchar(200) NOT NULL COMMENT '收货人',
  `phone` varchar(200) NOT NULL COMMENT '电话',
  `isdefault` varchar(200) NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616047468359 DEFAULT CHARSET=utf8 COMMENT='地址';

/*Data for the table `address` */

insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (1,'2021-03-18 13:53:02',1,'宇宙银河系金星1号','金某','13823888881','是'),(2,'2021-03-18 13:53:02',2,'宇宙银河系木星1号','木某','13823888882','是'),(3,'2021-03-18 13:53:02',3,'宇宙银河系水星1号','水某','13823888883','是'),(4,'2021-03-18 13:53:02',4,'宇宙银河系火星1号','火某','13823888884','是'),(5,'2021-03-18 13:53:02',5,'宇宙银河系土星1号','土某','13823888885','是'),(6,'2021-03-18 13:53:02',6,'宇宙银河系月球1号','月某','13823888886','是'),(1616047468358,'2021-03-18 14:04:27',1616047380717,'广东省梅州市梅江区江南街道美凤路10-10号江南阁','陈一','12312312312','是');

/*Table structure for table `cart` */

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tablename` varchar(200) DEFAULT 'tushuxinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float DEFAULT NULL COMMENT '单价',
  `discountprice` float DEFAULT NULL COMMENT '会员价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616047609230 DEFAULT CHARSET=utf8 COMMENT='购物车表';

/*Data for the table `cart` */

/*Table structure for table `chat` */

DROP TABLE IF EXISTS `chat`;

CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616047698121 DEFAULT CHARSET=utf8 COMMENT='在线客服';

/*Data for the table `chat` */

insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (41,'2021-03-18 13:53:02',1,1,'提问1','回复1',1),(42,'2021-03-18 13:53:02',2,2,'提问2','回复2',2),(43,'2021-03-18 13:53:02',3,3,'提问3','回复3',3),(44,'2021-03-18 13:53:02',4,4,'提问4','回复4',4),(45,'2021-03-18 13:53:02',5,5,'提问5','回复5',5),(46,'2021-03-18 13:53:02',6,6,'提问6','回复6',6),(1616047619493,'2021-03-18 14:06:59',1616047380717,NULL,'请问有狼图腾小说吗',NULL,0),(1616047698120,'2021-03-18 14:08:18',1616047380717,1,NULL,'有的',NULL);

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssm57oqs/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/ssm57oqs/upload/1616047315825.jpg'),(3,'picture3','http://localhost:8080/ssm57oqs/upload/picture3.jpg'),(6,'homepage',NULL);

/*Table structure for table `discusstushuxinxi` */

DROP TABLE IF EXISTS `discusstushuxinxi`;

CREATE TABLE `discusstushuxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616047740727 DEFAULT CHARSET=utf8 COMMENT='图书信息评论表';

/*Data for the table `discusstushuxinxi` */

insert  into `discusstushuxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (111,'2021-03-18 13:53:02',1,1,'用户名1','评论内容1','回复内容1'),(112,'2021-03-18 13:53:02',2,2,'用户名2','评论内容2','回复内容2'),(113,'2021-03-18 13:53:02',3,3,'用户名3','评论内容3','回复内容3'),(114,'2021-03-18 13:53:02',4,4,'用户名4','评论内容4','回复内容4'),(115,'2021-03-18 13:53:02',5,5,'用户名5','评论内容5','回复内容5'),(116,'2021-03-18 13:53:02',6,6,'用户名6','评论内容6','回复内容6'),(1616047740726,'2021-03-18 14:09:00',1616047277198,1616047380717,'1','不错的书籍',NULL);

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

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
) ENGINE=InnoDB AUTO_INCREMENT=1616047575855 DEFAULT CHARSET=utf8 COMMENT='交流论坛';

/*Data for the table `forum` */

insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (51,'2021-03-18 13:53:02','帖子标题1','帖子内容1',1,1,'用户名1','开放'),(52,'2021-03-18 13:53:02','帖子标题2','帖子内容2',2,2,'用户名2','开放'),(53,'2021-03-18 13:53:02','帖子标题3','帖子内容3',3,3,'用户名3','开放'),(54,'2021-03-18 13:53:02','帖子标题4','帖子内容4',4,4,'用户名4','开放'),(55,'2021-03-18 13:53:02','帖子标题5','帖子内容5',5,5,'用户名5','开放'),(56,'2021-03-18 13:53:02','帖子标题6','帖子内容6',6,6,'用户名6','开放'),(1616047566386,'2021-03-18 14:06:06','读莫言的晚熟的人有感','<p>这是我第一次读莫言作品，语言幽默且且地气，后面的反转余味很足</p>',0,1616047380717,'1','开放');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616047305754 DEFAULT CHARSET=utf8 COMMENT='图书资讯';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (101,'2021-03-18 13:53:02','标题1','简介1','http://localhost:8080/ssm57oqs/upload/1616047100577.jpg','<p>内容1</p>'),(102,'2021-03-18 13:53:02','标题2','简介2','http://localhost:8080/ssm57oqs/upload/1616047107535.jpg','<p>内容2</p>'),(103,'2021-03-18 13:53:02','标题3','简介3','http://localhost:8080/ssm57oqs/upload/1616047113924.jpg','<p>内容3</p>'),(104,'2021-03-18 13:53:02','标题4','简介4','http://localhost:8080/ssm57oqs/upload/1616047123796.jpg','<p>内容4</p>'),(105,'2021-03-18 13:53:02','标题5','简介5','http://localhost:8080/ssm57oqs/upload/1616047131004.jpg','<p>内容5</p>'),(106,'2021-03-18 13:53:02','标题6','简介6','http://localhost:8080/ssm57oqs/upload/1616047141840.jpg','<p>内容6</p>'),(1616047305753,'2021-03-18 14:01:45','图书优惠资讯','图书优惠','http://localhost:8080/ssm57oqs/upload/1616047289380.jpg','<p>全场图书参与618优惠活动</p><p><img src=\"http://localhost:8080/ssm57oqs/upload/1616047303285.jpg\"></p>');

/*Table structure for table `orders` */

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) DEFAULT 'tushuxinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT '0' COMMENT '价格/积分',
  `discountprice` float DEFAULT '0' COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT '0' COMMENT '总价格/总积分',
  `discounttotal` float DEFAULT '0' COMMENT '折扣总价格',
  `type` int(11) DEFAULT '1' COMMENT '支付类型',
  `status` varchar(200) DEFAULT NULL COMMENT '状态',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=1616047630520 DEFAULT CHARSET=utf8 COMMENT='订单';

/*Data for the table `orders` */

insert  into `orders`(`id`,`addtime`,`orderid`,`tablename`,`userid`,`goodid`,`goodname`,`picture`,`buynumber`,`price`,`discountprice`,`total`,`discounttotal`,`type`,`status`,`address`) values (1616047630519,'2021-03-18 14:07:10','2021318147102741898','tushuxinxi',1616047380717,1616047277198,'晚熟的人','http://localhost:8080/ssm57oqs/upload/1616047247893.jpg',3,35,35,105,105,1,'已完成','广东省梅州市梅江区江南街道美凤路10-10号江南阁');

/*Table structure for table `storeup` */

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616047518189 DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

insert  into `storeup`(`id`,`addtime`,`userid`,`refid`,`tablename`,`name`,`picture`) values (1616047518188,'2021-03-18 14:05:17',1616047380717,1616047277198,'tushuxinxi','晚熟的人','http://localhost:8080/ssm57oqs/upload/1616047247893.jpg');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'abo','users','管理员','l4k9cqrcfkfe9wqb2ytms5pukvbjz1z7','2021-03-18 13:55:35','2021-03-18 15:07:27'),(2,1616047380717,'1','yonghu','用户','77gq9zj1of6pklj1awpk82ylfq6zu73f','2021-03-18 14:03:06','2021-03-18 15:08:33');

/*Table structure for table `tushufenlei` */

DROP TABLE IF EXISTS `tushufenlei`;

CREATE TABLE `tushufenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tushufenlei` varchar(200) NOT NULL COMMENT '图书分类',
  PRIMARY KEY (`id`),
  UNIQUE KEY `tushufenlei` (`tushufenlei`)
) ENGINE=InnoDB AUTO_INCREMENT=1616047233756 DEFAULT CHARSET=utf8 COMMENT='图书分类';

/*Data for the table `tushufenlei` */

insert  into `tushufenlei`(`id`,`addtime`,`tushufenlei`) values (21,'2021-03-18 13:53:02','世界名著'),(22,'2021-03-18 13:53:02','人文社科'),(23,'2021-03-18 13:53:02','经管励志'),(24,'2021-03-18 13:53:02','休闲生活'),(25,'2021-03-18 13:53:02','少儿读物'),(1616047233755,'2021-03-18 14:00:33','文学小说');

/*Table structure for table `tushuxinxi` */

DROP TABLE IF EXISTS `tushuxinxi`;

CREATE TABLE `tushuxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tushumingcheng` varchar(200) NOT NULL COMMENT '图书名称',
  `tushufenlei` varchar(200) NOT NULL COMMENT '图书分类',
  `tupian` varchar(200) NOT NULL COMMENT '图片',
  `zuozhe` varchar(200) DEFAULT NULL COMMENT '作者',
  `chubanshe` varchar(200) DEFAULT NULL COMMENT '出版社',
  `tushujianjie` longtext COMMENT '图书简介',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  `price` float NOT NULL COMMENT '价格',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616047277199 DEFAULT CHARSET=utf8 COMMENT='图书信息';

/*Data for the table `tushuxinxi` */

insert  into `tushuxinxi`(`id`,`addtime`,`tushumingcheng`,`tushufenlei`,`tupian`,`zuozhe`,`chubanshe`,`tushujianjie`,`clicktime`,`clicknum`,`price`) values (31,'2021-03-18 13:53:02','图书名称1','世界名著','http://localhost:8080/ssm57oqs/upload/1616046993854.jpg','作者1','出版社1','<p>图书简介1</p>','2021-03-18 13:56:18',2,99.9),(32,'2021-03-18 13:53:02','图书名称2','人文社科','http://localhost:8080/ssm57oqs/upload/1616047006099.jpg','作者2','出版社2','<p>图书简介2</p>','2021-03-18 14:04:42',11,99.9),(33,'2021-03-18 13:53:02','图书名称3','休闲生活','http://localhost:8080/ssm57oqs/upload/1616047019514.jpg','作者3','出版社3','<p>图书简介3</p>','2021-03-18 13:56:50',4,99.9),(34,'2021-03-18 13:53:02','图书名称4','少儿读物','http://localhost:8080/ssm57oqs/upload/1616047068375.jpg','作者4','出版社4','<p>图书简介4</p>','2021-03-18 13:57:39',5,99.9),(35,'2021-03-18 13:53:02','图书名称5','经管励志','http://localhost:8080/ssm57oqs/upload/1616047082010.jpg','作者5','出版社5','<p>图书简介5</p>','2021-03-18 13:57:52',6,99.9),(36,'2021-03-18 13:53:02','图书名称6','经管励志','http://localhost:8080/ssm57oqs/upload/1616047092125.jpg','作者6','出版社6','<p>图书简介6</p>','2021-03-18 14:06:47',8,99.9),(1616047277198,'2021-03-18 14:01:16','晚熟的人','文学小说','http://localhost:8080/ssm57oqs/upload/1616047247893.jpg','莫言','人民文学出版社','<p>莫言用十二个故事讲述了获得诺贝尔文学奖后八年的里里外外；</p>','2021-03-18 14:09:03',9,35);

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-03-18 13:53:02');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=1616047380718 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`touxiang`,`xingbie`,`lianxidianhua`,`money`) values (11,'2021-03-18 13:53:02','用户1','123456','姓名1','http://localhost:8080/ssm57oqs/upload/yonghu_touxiang1.jpg','男','13823888881',100),(12,'2021-03-18 13:53:02','用户2','123456','姓名2','http://localhost:8080/ssm57oqs/upload/yonghu_touxiang2.jpg','男','13823888882',100),(13,'2021-03-18 13:53:02','用户3','123456','姓名3','http://localhost:8080/ssm57oqs/upload/yonghu_touxiang3.jpg','男','13823888883',100),(14,'2021-03-18 13:53:02','用户4','123456','姓名4','http://localhost:8080/ssm57oqs/upload/yonghu_touxiang4.jpg','男','13823888884',100),(15,'2021-03-18 13:53:02','用户5','123456','姓名5','http://localhost:8080/ssm57oqs/upload/yonghu_touxiang5.jpg','男','13823888885',100),(16,'2021-03-18 13:53:02','用户6','123456','姓名6','http://localhost:8080/ssm57oqs/upload/yonghu_touxiang6.jpg','男','13823888886',100),(1616047380717,'2021-03-18 14:03:00','1','1','陈一','http://localhost:8080/ssm57oqs/upload/1616047398044.jpg','女','12312312312',395);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
