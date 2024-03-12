/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - xinlijiankangxitong
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`xinlijiankangxitong` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `xinlijiankangxitong`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','http://localhost:8080/xinlijiankangxitong/upload/config1.jpg'),(2,'轮播图2','http://localhost:8080/xinlijiankangxitong/upload/config2.jpg'),(3,'轮播图3','http://localhost:8080/xinlijiankangxitong/upload/config3.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'sex_types','性别类型',1,'男',NULL,NULL,'2022-03-29 11:36:44'),(2,'sex_types','性别类型',2,'女',NULL,NULL,'2022-03-29 11:36:44'),(3,'xinlilaoshi_collection_types','收藏表类型',1,'收藏',NULL,NULL,'2022-03-29 11:36:44'),(4,'xinlilaoshi_order_yesno_types','预约状态',1,'待审核',NULL,NULL,'2022-03-29 11:36:44'),(5,'xinlilaoshi_order_yesno_types','预约状态',2,'同意',NULL,NULL,'2022-03-29 11:36:44'),(6,'xinlilaoshi_order_yesno_types','预约状态',3,'拒绝',NULL,NULL,'2022-03-29 11:36:44'),(7,'shijianduan_types','时间段',1,'08:00-09:00',NULL,NULL,'2022-03-29 11:36:44'),(8,'shijianduan_types','时间段',2,'09:00-10:00',NULL,NULL,'2022-03-29 11:36:44'),(9,'shijianduan_types','时间段',3,'10:00-11:00',NULL,NULL,'2022-03-29 11:36:44'),(10,'shijianduan_types','时间段',4,'11:00-12:00',NULL,NULL,'2022-03-29 11:36:44'),(11,'shijianduan_types','时间段',5,'14:00-15:00',NULL,NULL,'2022-03-29 11:36:44'),(12,'shijianduan_types','时间段',6,'15:00-16:00',NULL,NULL,'2022-03-29 11:36:44'),(13,'shijianduan_types','时间段',7,'16:00-17:00',NULL,NULL,'2022-03-29 11:36:44'),(14,'shijianduan_types','时间段',8,'17:00-18:00',NULL,NULL,'2022-03-29 11:36:44'),(15,'tongzhi_types','通知类型',1,'通知类型1',NULL,NULL,'2022-03-29 11:36:44'),(16,'tongzhi_types','通知类型',2,'通知类型2',NULL,NULL,'2022-03-29 11:36:44'),(17,'jiankangzhishi_types','健康知识类型',1,'健康知识类型1',NULL,NULL,'2022-03-29 11:36:44'),(18,'jiankangzhishi_types','健康知识类型',2,'健康知识类型2',NULL,NULL,'2022-03-29 11:36:44'),(19,'examquestion_types','试题类型',1,'单选题',NULL,NULL,'2022-03-29 11:36:44'),(20,'examquestion_types','试题类型',2,'多选题',NULL,NULL,'2022-03-29 11:36:44'),(21,'examquestion_types','试题类型',3,'判断题',NULL,NULL,'2022-03-29 11:36:44'),(22,'examquestion_types','试题类型',4,'填空题',NULL,NULL,'2022-03-29 11:36:44'),(23,'exampaper_types','试卷状态',1,'启用',NULL,NULL,'2022-03-29 11:36:44'),(24,'exampaper_types','试卷状态',2,'禁用',NULL,NULL,'2022-03-29 11:36:44'),(25,'tongzhi_types','通知类型',3,'通知类型3',NULL,'','2022-03-29 13:05:29');

/*Table structure for table `exampaper` */

DROP TABLE IF EXISTS `exampaper`;

CREATE TABLE `exampaper` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `exampaper_name` varchar(200) NOT NULL COMMENT '试卷名称 Search111',
  `exampaper_date` int(11) NOT NULL COMMENT '考试时长(分钟)',
  `exampaper_myscore` int(20) NOT NULL DEFAULT '0' COMMENT '试卷总分数',
  `exampaper_types` int(11) NOT NULL DEFAULT '0' COMMENT '试卷状态 Search111',
  `exampaper_delete` int(255) DEFAULT '0' COMMENT '逻辑删除（0代表未删除 1代表已删除）',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='试卷表';

/*Data for the table `exampaper` */

insert  into `exampaper`(`id`,`exampaper_name`,`exampaper_date`,`exampaper_myscore`,`exampaper_types`,`exampaper_delete`,`create_time`) values (1,'考试试卷1',100,100,1,1,'2022-03-29 11:36:44'),(2,'试卷2',60,10,1,1,'2022-03-29 13:06:12');

/*Table structure for table `examquestion` */

DROP TABLE IF EXISTS `examquestion`;

CREATE TABLE `examquestion` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `exampaper_id` int(20) NOT NULL COMMENT '所属试卷id（外键）',
  `examquestion_name` varchar(200) NOT NULL COMMENT '试题名称 Search111',
  `examquestion_options` longtext COMMENT '选项，json字符串',
  `examquestion_score` int(20) DEFAULT '0' COMMENT '分值 Search111',
  `examquestion_answer` varchar(200) DEFAULT NULL COMMENT '正确答案',
  `examquestion_analysis` longtext COMMENT '答案解析',
  `examquestion_types` int(20) DEFAULT '0' COMMENT '试题类型',
  `examquestion_sequence` int(20) DEFAULT '100' COMMENT '试题排序，值越大排越前面',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='试题表';

/*Data for the table `examquestion` */

insert  into `examquestion`(`id`,`exampaper_id`,`examquestion_name`,`examquestion_options`,`examquestion_score`,`examquestion_answer`,`examquestion_analysis`,`examquestion_types`,`examquestion_sequence`,`create_time`) values (1,1,'单选题1','[{\"text\":\"答案A\",\"code\":\"A\"},{\"text\":\"答案B\",\"code\":\"B\"},{\"text\":\"正确答案C\",\"code\":\"C\"},{\"text\":\"答案D\",\"code\":\"D\"}]',10,'C','无',1,1,'2022-03-29 11:36:44'),(2,1,'多选题1','[{\"text\":\"答案A\",\"code\":\"A\"},{\"text\":\"正确答案B\",\"code\":\"B\"},{\"text\":\"正确答案C\",\"code\":\"C\"},{\"text\":\"答案D\",\"code\":\"D\"}]',34,'B,C','无',2,2,'2022-03-29 11:36:44'),(3,1,'填空题(正)_____','[]',41,'正','无',4,3,'2022-03-29 11:36:44'),(4,1,'判断题1','[{\"text\":\"A.对\",\"code\":\"A\"},{\"text\":\"B.错\",\"code\":\"B\"}]',11,'A','无',3,4,'2022-03-29 11:36:44'),(5,1,'单选题2','[{\"text\":\"答案A\",\"code\":\"A\"},{\"text\":\"正确答案B\",\"code\":\"B\"},{\"text\":\"答案C\",\"code\":\"C\"},{\"text\":\"答案D\",\"code\":\"D\"}]',4,'B','无',1,5,'2022-03-29 11:36:44'),(6,2,'试题11','[{\"text\":\"A\",\"code\":\"A\"},{\"text\":\"B\",\"code\":\"B\"},{\"text\":\"正确答案C\",\"code\":\"C\"},{\"text\":\"正确答案D\",\"code\":\"D\"}]',10,'C,D','w',2,1,'2022-03-29 13:07:36');

/*Table structure for table `examrecord` */

DROP TABLE IF EXISTS `examrecord`;

CREATE TABLE `examrecord` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `examrecord_uuid_number` varchar(200) DEFAULT NULL COMMENT '考试编号',
  `yonghu_id` int(20) NOT NULL COMMENT '考试用户',
  `exampaper_id` int(20) NOT NULL COMMENT '所属试卷id（外键）',
  `total_score` int(200) DEFAULT NULL COMMENT '所得总分',
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '考试时间',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='考试记录表';

/*Data for the table `examrecord` */

insert  into `examrecord`(`id`,`examrecord_uuid_number`,`yonghu_id`,`exampaper_id`,`total_score`,`insert_time`,`create_time`) values (1,'1648530233813',1,1,15,'2022-03-29 13:03:54','2022-03-29 13:03:54');

/*Table structure for table `examredetails` */

DROP TABLE IF EXISTS `examredetails`;

CREATE TABLE `examredetails` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `examredetails_uuid_number` varchar(200) DEFAULT NULL COMMENT '试卷编号',
  `yonghu_id` int(20) NOT NULL COMMENT '用户id',
  `examquestion_id` int(20) NOT NULL COMMENT '试题id（外键）',
  `examredetails_myanswer` varchar(200) DEFAULT NULL COMMENT '考生答案',
  `examredetails_myscore` int(20) NOT NULL DEFAULT '0' COMMENT '试题得分',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='答题详情表';

/*Data for the table `examredetails` */

insert  into `examredetails`(`id`,`examredetails_uuid_number`,`yonghu_id`,`examquestion_id`,`examredetails_myanswer`,`examredetails_myscore`,`create_time`) values (1,'1648530233813',1,5,'B',4,'2022-03-29 13:03:57'),(2,'1648530233813',1,4,'A',11,'2022-03-29 13:04:00'),(3,'1648530233813',1,3,'A',0,'2022-03-29 13:04:03'),(4,'1648530233813',1,2,'B,D',0,'2022-03-29 13:04:07'),(5,'1648530233813',1,1,'B',0,'2022-03-29 13:04:11');

/*Table structure for table `examrewrongquestion` */

DROP TABLE IF EXISTS `examrewrongquestion`;

CREATE TABLE `examrewrongquestion` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(20) NOT NULL COMMENT '用户id',
  `exampaper_id` int(20) NOT NULL COMMENT '试卷（外键）',
  `examquestion_id` int(20) NOT NULL COMMENT '试题id（外键）',
  `examredetails_myanswer` varchar(200) DEFAULT NULL COMMENT '考生作答',
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '记录时间',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='错题表';

/*Data for the table `examrewrongquestion` */

insert  into `examrewrongquestion`(`id`,`yonghu_id`,`exampaper_id`,`examquestion_id`,`examredetails_myanswer`,`insert_time`,`create_time`) values (1,1,1,3,'A','2022-03-29 13:04:03','2022-03-29 13:04:03'),(2,1,1,2,'B,D','2022-03-29 13:04:07','2022-03-29 13:04:07'),(3,1,1,1,'B','2022-03-29 13:04:11','2022-03-29 13:04:11');

/*Table structure for table `jiankangzhishi` */

DROP TABLE IF EXISTS `jiankangzhishi`;

CREATE TABLE `jiankangzhishi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `jiankangzhishi_name` varchar(200) DEFAULT NULL COMMENT '健康知识名称 Search111  ',
  `jiankangzhishi_photo` varchar(200) DEFAULT NULL COMMENT '健康知识图片 ',
  `jiankangzhishi_types` int(11) NOT NULL COMMENT '健康知识类型 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '健康知识发布时间 ',
  `jiankangzhishi_content` text COMMENT '健康知识详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='健康知识';

/*Data for the table `jiankangzhishi` */

insert  into `jiankangzhishi`(`id`,`jiankangzhishi_name`,`jiankangzhishi_photo`,`jiankangzhishi_types`,`insert_time`,`jiankangzhishi_content`,`create_time`) values (1,'健康知识名称1','http://localhost:8080/xinlijiankangxitong/upload/yonghu1.jpg',1,'2022-03-29 11:39:43','健康知识详情1','2022-03-29 11:39:43'),(2,'健康知识名称2','http://localhost:8080/xinlijiankangxitong/upload/yonghu2.jpg',2,'2022-03-29 11:39:43','健康知识详情2','2022-03-29 11:39:43'),(3,'健康知识名称3','http://localhost:8080/xinlijiankangxitong/upload/yonghu3.jpg',1,'2022-03-29 11:39:43','健康知识详情3','2022-03-29 11:39:43'),(4,'健康知识名称4','http://localhost:8080/xinlijiankangxitong/upload/yonghu1.jpg',1,'2022-03-29 11:39:43','健康知识详情4','2022-03-29 11:39:43'),(5,'健康知识名称5','http://localhost:8080/xinlijiankangxitong/upload/yonghu2.jpg',1,'2022-03-29 11:39:43','健康知识详情5','2022-03-29 11:39:43');

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
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,6,'admin','users','管理员','qsh241u4wenz9q880lzg956l6gdvnfy5','2022-03-29 11:49:29','2022-03-29 14:10:47'),(2,1,'a1','yonghu','学生','1o29ta3k4dzq9qthlcltpazu9kmmu6ie','2022-03-29 11:50:44','2022-03-29 14:08:30'),(3,1,'a1','xinlilaoshi','心理老师','nu8v2a1pz7u1qg0es7c4yrjs6vd9r4j3','2022-03-29 13:07:56','2022-03-29 14:08:52');

/*Table structure for table `tongzhi` */

DROP TABLE IF EXISTS `tongzhi`;

CREATE TABLE `tongzhi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `tongzhi_name` varchar(200) DEFAULT NULL COMMENT '通知名称 Search111  ',
  `tongzhi_photo` varchar(200) DEFAULT NULL COMMENT '通知图片 ',
  `tongzhi_types` int(11) NOT NULL COMMENT '通知类型 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '通知发布时间 ',
  `tongzhi_content` text COMMENT '通知详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='通知';

/*Data for the table `tongzhi` */

insert  into `tongzhi`(`id`,`tongzhi_name`,`tongzhi_photo`,`tongzhi_types`,`insert_time`,`tongzhi_content`,`create_time`) values (1,'通知名称1','http://localhost:8080/xinlijiankangxitong/upload/yonghu1.jpg',2,'2022-03-29 11:39:43','通知详情1','2022-03-29 11:39:43'),(2,'通知名称2','http://localhost:8080/xinlijiankangxitong/upload/yonghu2.jpg',1,'2022-03-29 11:39:43','通知详情2','2022-03-29 11:39:43'),(3,'通知名称3','http://localhost:8080/xinlijiankangxitong/upload/yonghu3.jpg',1,'2022-03-29 11:39:43','通知详情3','2022-03-29 11:39:43'),(4,'通知名称4','http://localhost:8080/xinlijiankangxitong/upload/yonghu1.jpg',2,'2022-03-29 11:39:43','通知详情4','2022-03-29 11:39:43'),(5,'通知名称5','http://localhost:8080/xinlijiankangxitong/upload/yonghu2.jpg',1,'2022-03-29 11:39:43','<p>通知详情51111</p>','2022-03-29 11:39:43');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (6,'admin','admin','管理员','2022-05-02 14:51:13');

/*Table structure for table `xinlilaoshi` */

DROP TABLE IF EXISTS `xinlilaoshi`;

CREATE TABLE `xinlilaoshi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `xinlilaoshi_name` varchar(200) DEFAULT NULL COMMENT '心理老师姓名 Search111 ',
  `xinlilaoshi_phone` varchar(200) DEFAULT NULL COMMENT '心理老师手机号',
  `xinlilaoshi_photo` varchar(200) DEFAULT NULL COMMENT '心理老师头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `xinlilaoshi_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `xinlilaoshi_shanchang` varchar(200) DEFAULT NULL COMMENT '擅长',
  `xinlilaoshi_lvli` varchar(200) DEFAULT NULL COMMENT '履历',
  `xinlilaoshi_content` text COMMENT '心理老师详细介绍 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='心理老师';

/*Data for the table `xinlilaoshi` */

insert  into `xinlilaoshi`(`id`,`username`,`password`,`xinlilaoshi_name`,`xinlilaoshi_phone`,`xinlilaoshi_photo`,`sex_types`,`xinlilaoshi_email`,`xinlilaoshi_shanchang`,`xinlilaoshi_lvli`,`xinlilaoshi_content`,`create_time`) values (1,'a1','123456','心理老师姓名1','17703786901','http://localhost:8080/xinlijiankangxitong/upload/xinlilaoshi1.jpg',2,'1@qq.com','擅长1','履历1','心理老师详细介绍1','2022-03-29 11:39:43'),(2,'a2','123456','心理老师姓名2','17703786902','http://localhost:8080/xinlijiankangxitong/upload/xinlilaoshi2.jpg',2,'2@qq.com','擅长2','履历2','心理老师详细介绍2','2022-03-29 11:39:43'),(3,'a3','123456','心理老师姓名3','17703786903','http://localhost:8080/xinlijiankangxitong/upload/xinlilaoshi3.jpg',1,'3@qq.com','擅长3','履历3','心理老师详细介绍3','2022-03-29 11:39:43');

/*Table structure for table `xinlilaoshi_collection` */

DROP TABLE IF EXISTS `xinlilaoshi_collection`;

CREATE TABLE `xinlilaoshi_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `xinlilaoshi_id` int(11) DEFAULT NULL COMMENT '心理老师',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `xinlilaoshi_collection_types` int(11) DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='心理老师收藏';

/*Data for the table `xinlilaoshi_collection` */

insert  into `xinlilaoshi_collection`(`id`,`xinlilaoshi_id`,`yonghu_id`,`xinlilaoshi_collection_types`,`insert_time`,`create_time`) values (1,2,3,1,'2022-03-29 11:39:43','2022-03-29 11:39:43'),(2,3,2,1,'2022-03-29 11:39:43','2022-03-29 11:39:43'),(3,1,1,1,'2022-03-29 11:39:43','2022-03-29 11:39:43'),(4,1,3,1,'2022-03-29 11:39:43','2022-03-29 11:39:43'),(5,2,2,1,'2022-03-29 11:39:43','2022-03-29 11:39:43'),(6,2,1,1,'2022-03-29 13:04:50','2022-03-29 13:04:50');

/*Table structure for table `xinlilaoshi_liuyan` */

DROP TABLE IF EXISTS `xinlilaoshi_liuyan`;

CREATE TABLE `xinlilaoshi_liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `xinlilaoshi_id` int(11) DEFAULT NULL COMMENT '心理老师',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `xinlilaoshi_liuyan_text` text COMMENT '留言内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `reply_text` text COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='心理老师留言';

/*Data for the table `xinlilaoshi_liuyan` */

insert  into `xinlilaoshi_liuyan`(`id`,`xinlilaoshi_id`,`yonghu_id`,`xinlilaoshi_liuyan_text`,`insert_time`,`reply_text`,`update_time`,`create_time`) values (1,2,2,'留言内容1','2022-03-29 11:39:43','回复信息1','2022-03-29 11:39:43','2022-03-29 11:39:43'),(2,1,1,'留言内容2','2022-03-29 11:39:43','回复信息2','2022-03-29 11:39:43','2022-03-29 11:39:43'),(3,1,3,'留言内容3','2022-03-29 11:39:43','回复信息3','2022-03-29 11:39:43','2022-03-29 11:39:43'),(4,2,2,'留言内容4','2022-03-29 11:39:43','回复信息4','2022-03-29 11:39:43','2022-03-29 11:39:43'),(5,3,3,'留言内容5','2022-03-29 11:39:43','回复信息5','2022-03-29 11:39:43','2022-03-29 11:39:43'),(6,1,1,'333333','2022-03-29 13:04:37','22222222222','2022-03-29 13:08:11','2022-03-29 13:04:37');

/*Table structure for table `xinlilaoshi_order` */

DROP TABLE IF EXISTS `xinlilaoshi_order`;

CREATE TABLE `xinlilaoshi_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `xinlilaoshi_order_uuid_number` varchar(200) DEFAULT NULL COMMENT '预约流水号 Search111 ',
  `xinlilaoshi_id` int(11) DEFAULT NULL COMMENT '心理老师',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `yuyue_time` date DEFAULT NULL COMMENT '预约日期',
  `shijianduan_types` int(11) DEFAULT NULL COMMENT '预约时间段 Search111 ',
  `xinlilaoshi_order_yesno_types` int(11) DEFAULT NULL COMMENT '预约状态 Search111 ',
  `xinlilaoshi_order_yesno_text` text COMMENT '审核意见',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '申请时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='心理老师预约订单';

/*Data for the table `xinlilaoshi_order` */

insert  into `xinlilaoshi_order`(`id`,`xinlilaoshi_order_uuid_number`,`xinlilaoshi_id`,`yonghu_id`,`yuyue_time`,`shijianduan_types`,`xinlilaoshi_order_yesno_types`,`xinlilaoshi_order_yesno_text`,`insert_time`,`create_time`) values (1,'1648525919361',2,1,'2022-03-30',8,1,NULL,'2022-03-29 11:51:59','2022-03-29 11:51:59'),(2,'1648530223381',3,1,'2022-03-30',8,1,NULL,'2022-03-29 13:03:43','2022-03-29 13:03:43'),(3,'1648530268888',1,1,'2022-03-31',3,2,'key','2022-03-29 13:04:29','2022-03-29 13:04:29');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '学生姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '学生手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '学生身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '学生头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='学生';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`sex_types`,`yonghu_email`,`create_time`) values (1,'a1','123456','学生姓名1','17703786901','410224199610232001','http://localhost:8080/xinlijiankangxitong/upload/yonghu1.jpg',2,'1@qq.com','2022-03-29 11:39:43'),(2,'a2','123456','学生姓名2','17703786902','410224199610232002','http://localhost:8080/xinlijiankangxitong/upload/yonghu2.jpg',2,'2@qq.com','2022-03-29 11:39:43'),(3,'a3','123456','学生姓名3','17703786903','410224199610232003','http://localhost:8080/xinlijiankangxitong/upload/yonghu3.jpg',2,'3@qq.com','2022-03-29 11:39:43');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
