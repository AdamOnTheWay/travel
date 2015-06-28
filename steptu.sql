# Host: localhost  (Version: 5.6.17)
# Date: 2015-06-11 15:49:35
# Generator: MySQL-Front 5.3  (Build 4.13)

/*!40101 SET NAMES utf8 */;

#
# Source for table "action"
#

DROP TABLE IF EXISTS `action`;
CREATE TABLE `action` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `theme` varchar(255) NOT NULL DEFAULT '' COMMENT '活动主题',
  `publishtime` date NOT NULL DEFAULT '0000-00-00' COMMENT '发布时间',
  `startTime` date NOT NULL DEFAULT '0000-00-00' COMMENT '开始时间',
  `startarea` varchar(255) NOT NULL DEFAULT '' COMMENT '活动开始的地点',
  `intentarea` varchar(255) NOT NULL DEFAULT '' COMMENT '目的地',
  `content` varchar(255) NOT NULL DEFAULT '' COMMENT '活动内容',
  `number` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '报名人数',
  `initiator` varchar(255) NOT NULL DEFAULT '' COMMENT '发起人',
  `maxnumber` int(11) NOT NULL DEFAULT '0' COMMENT '最多多少人参加',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  `status` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '活动的状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

#
# Data for table "action"
#

INSERT INTO `action` VALUES (1,'asdfs','0000-00-00','0000-00-00','adfgdsf','agadfg','wqerqwer',0,'yulang',0,'dfsasdf',0),(2,'dsfasd','0000-00-00','2015-06-02','dd','sdfgsd','最多34字dassad',0,'ds',1,'sdsdsdsd',0),(3,'dsfadsf','0000-00-00','2015-06-05','sad','sd','最多34字asdasdasd',0,'22sd',213,'asdasdasdasdadasd',0),(4,'sdfas','0000-00-00','2015-06-05','www','www','最多34字',0,'2a',1,'asdfasd',0),(5,'adsfasd','2015-06-01','2015-06-05','www','www','最多34字',0,'2a',1,'asdfadf',0),(6,'adsfasd','2015-06-02','0000-00-00','dfgsdfg','adfasdf','最多34字',0,'ewrqwe',0,'asdfasdf',0),(7,'adsfa','2015-06-02','0000-00-00','sfdgsd','sfdg','最多34字',0,'sdfas',0,'AFSDsafd',0);

#
# Source for table "actionuser"
#

DROP TABLE IF EXISTS `actionuser`;
CREATE TABLE `actionuser` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL DEFAULT '' COMMENT '用户名',
  `actionId` int(11) NOT NULL DEFAULT '0',
  `phone` varchar(255) NOT NULL DEFAULT '' COMMENT '活动发起者电话',
  `email` varchar(255) NOT NULL DEFAULT '' COMMENT '邮箱',
  `image` varchar(255) NOT NULL DEFAULT '' COMMENT '图片',
  PRIMARY KEY (`id`),
  KEY `actionId` (`actionId`),
  CONSTRAINT `actionuser_ibfk_1` FOREIGN KEY (`actionId`) REFERENCES `action` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='活动发起者';

#
# Data for table "actionuser"
#


#
# Source for table "amusement"
#

DROP TABLE IF EXISTS `amusement`;
CREATE TABLE `amusement` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `destination` varchar(255) NOT NULL DEFAULT '' COMMENT '目的地',
  `way` varchar(255) NOT NULL DEFAULT '' COMMENT '娱乐方式',
  `price` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '价位',
  `area` varchar(255) NOT NULL DEFAULT '' COMMENT '所在城市的的位置',
  `image` varchar(255) DEFAULT '' COMMENT '图片',
  `name` varchar(255) DEFAULT '' COMMENT '店的名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='娱乐';

#
# Data for table "amusement"
#

INSERT INTO `amusement` VALUES (1,'trt','wer',12,'12','./Public/uploads/amuse/554f5fb45d7fd.jpg','121212'),(2,'1231','123',13,'23123','./Public/uploads/amuse/554f5ff382189.jpg','23412312'),(3,'323','3123',1232,'123123','./Public/uploads/amuse/554f6004366b0.jpg','23412312');

#
# Source for table "food"
#

DROP TABLE IF EXISTS `food`;
CREATE TABLE `food` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `destination` varchar(255) NOT NULL DEFAULT '' COMMENT '目的地',
  `storeName` varchar(255) NOT NULL DEFAULT '' COMMENT '店名',
  `price` varchar(255) NOT NULL DEFAULT '' COMMENT '吃饭大概花多少钱',
  `area` varchar(255) NOT NULL DEFAULT '' COMMENT '店大概的位置',
  `image` varchar(255) DEFAULT '' COMMENT '店的图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='美食';

#
# Data for table "food"
#


#
# Source for table "hotel"
#

DROP TABLE IF EXISTS `hotel`;
CREATE TABLE `hotel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `destination` varchar(255) NOT NULL DEFAULT '' COMMENT '目的地',
  `price` int(11) NOT NULL DEFAULT '0' COMMENT '价格',
  `area` varchar(255) NOT NULL DEFAULT '' COMMENT '居住的地区',
  `hotelName` varchar(255) NOT NULL DEFAULT '' COMMENT '酒店名称',
  `image` varchar(255) NOT NULL DEFAULT '' COMMENT '酒店图片',
  `comment` varchar(255) NOT NULL DEFAULT '' COMMENT '酒店的描述',
  `hotelBrand` varchar(255) NOT NULL DEFAULT '' COMMENT '酒店品牌',
  `startTime` date DEFAULT NULL COMMENT '开始入住酒店时间',
  `endTime` date DEFAULT NULL COMMENT '离开酒店时间',
  `status` varchar(25) NOT NULL DEFAULT '' COMMENT '酒店的状态，是否打折',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='宾馆住';

#
# Data for table "hotel"
#

INSERT INTO `hotel` VALUES (1,'重庆',123,'沙坪坝','喜来登','./Public/uploads/hotel/554c07f5193a1.jpg','酒店设施齐全','2星','1999-03-03','2003-03-03','1'),(2,'成都',123,'成华区','喜来登','./Public/uploads/hotel/554c08ceb31c2.jpg','酒店设施齐全','2星','1999-03-03','2003-03-03','1'),(3,'成都',1333,'豪华区','家乐福','./Public/uploads/hotel/554c0af5114bb.jpg','放大法','2星','1999-03-03','0000-00-00','2');

#
# Source for table "moving"
#

DROP TABLE IF EXISTS `moving`;
CREATE TABLE `moving` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `destination` varchar(255) NOT NULL DEFAULT '' COMMENT '飞机的目的地',
  `departure` varchar(255) NOT NULL DEFAULT '' COMMENT '始发地',
  `airline` varchar(255) NOT NULL DEFAULT '' COMMENT '航空公司名',
  `airType` varchar(255) DEFAULT NULL COMMENT '机型',
  `landAirport` varchar(255) NOT NULL DEFAULT '' COMMENT '降落机场',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='飞机';

#
# Data for table "moving"
#


#
# Source for table "travelscency"
#

DROP TABLE IF EXISTS `travelscency`;
CREATE TABLE `travelscency` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '景点的名字',
  `location` varchar(255) NOT NULL DEFAULT '' COMMENT '景点的位置',
  `description` varchar(2550) NOT NULL DEFAULT '' COMMENT '景点的描述',
  `image` varchar(255) DEFAULT '' COMMENT '景点的图片',
  `price` int(11) NOT NULL DEFAULT '0' COMMENT '价格',
  `status` varchar(50) DEFAULT '' COMMENT '景点的状态,是否打折，是否在优惠季，等多个状态',
  `descriptionPrice` varchar(255) DEFAULT '' COMMENT '价格描述',
  `discountAction` varchar(2550) DEFAULT NULL COMMENT '优惠活动',
  `characteristics` varchar(2550) DEFAULT NULL COMMENT '特色',
  `routeDescription` varchar(2550) DEFAULT NULL COMMENT '路线介绍',
  `bookInformation` varchar(2550) DEFAULT NULL COMMENT '预定须知',
  `startTime` date NOT NULL DEFAULT '0000-00-00',
  `endTime` date NOT NULL DEFAULT '0000-00-00',
  `startPos` varchar(255) NOT NULL DEFAULT '' COMMENT '起点位子',
  `endPos` varchar(255) NOT NULL DEFAULT '' COMMENT '终点位置',
  `ifdiscount` int(10) DEFAULT '0' COMMENT '0表示不打折',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='景点表';

#
# Data for table "travelscency"
#

INSERT INTO `travelscency` VALUES (1,'城市三日游','重庆','风景很好','',99,'城市之间','',NULL,NULL,NULL,NULL,'2015-05-13','2015-05-20','成都','重庆',NULL),(2,'称重收到了快解放啦','长寿 ','打发似的','',100,'城市之间','',NULL,NULL,NULL,NULL,'0000-00-00','0000-00-00','北京','田径',NULL),(3,'双方三房','阿斯顿发生','阿斯顿发斯蒂芬啊','',13232,'城市之间','',NULL,NULL,NULL,NULL,'0000-00-00','0000-00-00','是的发生','重庆',NULL),(4,'阿斯顿发','斯蒂芬撒','','',0,'学子游','',NULL,NULL,NULL,NULL,'0000-00-00','0000-00-00','天津','长寿地方',NULL);

#
# Source for table "usertable"
#

DROP TABLE IF EXISTS `usertable`;
CREATE TABLE `usertable` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户ID号',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '用户名',
  `password` varchar(50) NOT NULL DEFAULT '' COMMENT '密码',
  `phone` varchar(30) NOT NULL DEFAULT '' COMMENT '电话号码',
  `email` varchar(50) NOT NULL DEFAULT '' COMMENT '邮箱',
  `sex` varchar(255) DEFAULT NULL COMMENT '性别',
  `birthday` date DEFAULT NULL COMMENT '出生日期',
  `comment` varchar(2550) DEFAULT NULL COMMENT '自我介绍',
  `qq` varchar(255) DEFAULT NULL COMMENT 'qq号',
  `address` varchar(255) DEFAULT NULL COMMENT '现居住地址',
  `image` varchar(255) DEFAULT NULL COMMENT '用户的头像',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COMMENT='用户信息表';

#
# Data for table "usertable"
#

INSERT INTO `usertable` VALUES (1,'yulang','202cb962ac59075b964b07152d234b70','13548199570','2327542415@qq.com','男','2015-09-01','沃尔特维尔特是打发斯蒂芬阿打发斯蒂芬adgadf d adfadfwrsadfsdfsdfsd','sdfsdf','是打发似的','Public/uploads/hotel/55792d4e51d41.PNG'),(2,'233','fcea920f7412b5da7be0cf42b8c93759','15928932693','2327542415@qq.com',NULL,NULL,NULL,NULL,NULL,''),(3,'23we','fcea920f7412b5da7be0cf42b8c93759','15928932693','2327542415@qq.com',NULL,NULL,NULL,NULL,NULL,''),(4,'23222','25f9e794323b453885f5181f1b624d0b','15928932693','2327542415@qq.com',NULL,NULL,NULL,NULL,NULL,''),(5,'111','25d55ad283aa400af464c76d713c07ad','13548199570','2327542415@qq.com',NULL,NULL,NULL,NULL,NULL,''),(6,'2322','fcea920f7412b5da7be0cf42b8c93759','15928932693','2327542415@qq.com',NULL,NULL,NULL,NULL,NULL,''),(7,'12212','fcea920f7412b5da7be0cf42b8c93759','15928932693','2327542415@qq.com',NULL,NULL,NULL,NULL,NULL,''),(8,'1221344','fcea920f7412b5da7be0cf42b8c93759','15928932693','2327542415@qq.com',NULL,NULL,NULL,NULL,NULL,''),(9,'1221344121','fcea920f7412b5da7be0cf42b8c93759','15928932693','2327542415@qq.com',NULL,NULL,NULL,NULL,NULL,''),(10,'2321','e10adc3949ba59abbe56e057f20f883e','15928932693','2327542415@qq.com',NULL,NULL,NULL,NULL,NULL,''),(11,'232123','e10adc3949ba59abbe56e057f20f883e','15928932693','2327542415@qq.com',NULL,NULL,NULL,NULL,NULL,''),(12,'232123','e10adc3949ba59abbe56e057f20f883e','15928932693','2327542415@qq.com',NULL,NULL,NULL,NULL,NULL,''),(13,'121212','fcea920f7412b5da7be0cf42b8c93759','15928932693','2327542415@qq.com',NULL,NULL,NULL,NULL,NULL,''),(14,'12212121','fcea920f7412b5da7be0cf42b8c93759','15928932693','2327542415@qq.com',NULL,NULL,NULL,NULL,NULL,''),(15,'122121213232','fcea920f7412b5da7be0cf42b8c93759','15928932693','2327542415@qq.com',NULL,NULL,NULL,NULL,NULL,''),(16,'1212122','e10adc3949ba59abbe56e057f20f883e','15928932693','2327542415@qq.com',NULL,NULL,NULL,NULL,NULL,''),(17,'1212','e10adc3949ba59abbe56e057f20f883e','15928932693','2327542415@qq.com',NULL,NULL,NULL,NULL,NULL,''),(18,'1111','e10adc3949ba59abbe56e057f20f883e','15928932693','2327542415@qq.com',NULL,NULL,NULL,NULL,NULL,''),(19,'1','e10adc3949ba59abbe56e057f20f883e','15928932693','2327542415@qq.com',NULL,NULL,NULL,NULL,NULL,'');

#
# Source for table "travelnote"
#

DROP TABLE IF EXISTS `travelnote`;
CREATE TABLE `travelnote` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) DEFAULT '' COMMENT '旅游志的图片',
  `note` text NOT NULL COMMENT '旅游感想',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '旅游志的描述',
  `time` date NOT NULL DEFAULT '0000-00-00' COMMENT '发表的日期',
  `likeNumber` int(11) unsigned NOT NULL DEFAULT '0',
  `readNumber` int(11) unsigned NOT NULL DEFAULT '0',
  `userId` int(11) unsigned NOT NULL DEFAULT '0',
  `checkStatus` int(11) DEFAULT '0' COMMENT '用于管理员审核',
  PRIMARY KEY (`id`),
  KEY `userId` (`userId`),
  CONSTRAINT `travelnote_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `usertable` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='旅游志';

#
# Data for table "travelnote"
#

INSERT INTO `travelnote` VALUES (4,'1.png','yulang shi dfadfasdf ','yulang','0000-00-00',3,18,1,0),(5,'2.png','从今天开始我要开开心心，\r\n也是','希望从今天开始','1999-03-03',2,2,1,0),(7,'3.png','本来是一件幸福的事情，却这样了','的法定','0000-00-00',0,5,1,0),(8,'4.png','adfadsflkjllkj sldjflk','dfadf','0000-00-00',6,50,1,0),(9,'5.png','dafdfasdf阿斯顿发生的发生的发生','打发斯蒂芬','0000-00-00',12,80,1,0);

#
# Source for table "score"
#

DROP TABLE IF EXISTS `score`;
CREATE TABLE `score` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) unsigned DEFAULT NULL COMMENT 'user表的id号',
  `piont` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '积分的分数',
  `source` varchar(255) NOT NULL DEFAULT '' COMMENT '积分来源',
  `time` varchar(255) NOT NULL DEFAULT '' COMMENT '过期时间',
  `getDate` date DEFAULT NULL COMMENT '获得积分日期',
  `way` int(11) DEFAULT '0' COMMENT '如果为就是用户上传头像的到的，下次就不用再给积分了',
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`),
  CONSTRAINT `score_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `usertable` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='用户的积分表';

#
# Data for table "score"
#

INSERT INTO `score` VALUES (1,1,23,'','2015-09-11',NULL,0),(8,1,10,'','2017-06-11','2015-06-11',1);

#
# Source for table "order"
#

DROP TABLE IF EXISTS `order`;
CREATE TABLE `order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `time` varchar(255) NOT NULL DEFAULT '' COMMENT '预定的时间',
  `content` varchar(255) DEFAULT '' COMMENT '订单的内容',
  `scencyId` int(11) NOT NULL DEFAULT '0' COMMENT '对应travelscency的东西的id',
  `userId` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '对应用户usertable的信息id',
  `status` varchar(20) NOT NULL DEFAULT '评价' COMMENT '订单的状态',
  `price` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '订单的价格',
  PRIMARY KEY (`id`),
  KEY `userId` (`userId`),
  KEY `scencyId` (`scencyId`),
  CONSTRAINT `order_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `usertable` (`id`),
  CONSTRAINT `order_ibfk_2` FOREIGN KEY (`scencyId`) REFERENCES `travelscency` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='用户的订单';

#
# Data for table "order"
#

INSERT INTO `order` VALUES (1,'2015-09-09','dsdfsdf',4,1,'评价',0),(2,'2015-08-11','类容',1,1,'评价',121),(3,'2015-09-09','dsdfsdf',4,1,'评价',0),(4,'2015-09-09','dsdfsdf',4,1,'评价',0);

#
# Source for table "notecomment"
#

DROP TABLE IF EXISTS `notecomment`;
CREATE TABLE `notecomment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) unsigned DEFAULT '0',
  `content` varchar(2550) NOT NULL DEFAULT '' COMMENT '评论内容',
  `time` date NOT NULL DEFAULT '0000-00-00' COMMENT '评论时间',
  `noteId` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `userId` (`userId`),
  KEY `noteId` (`noteId`),
  CONSTRAINT `notecomment_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `usertable` (`id`),
  CONSTRAINT `notecomment_ibfk_2` FOREIGN KEY (`noteId`) REFERENCES `travelnote` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 COMMENT='旅游志评论表';

#
# Data for table "notecomment"
#

INSERT INTO `notecomment` VALUES (1,4,'二打的发顺丰','2014-02-03',5),(2,2,'风景还是不错','0000-00-00',5),(3,2,'热热热','0000-00-00',5),(4,1,'额外儿童','1996-09-09',5),(6,4,'阿斯顿发得分 ','2015-02-01',5),(10,1,'玩儿跳舞','2015-05-15',8),(11,1,'是打发斯蒂芬','2015-05-15',8),(12,1,'我觉得那个你写的横不错，给你一个站','2015-05-15',8),(13,1,'啥地方还是打工','2015-05-15',8),(27,1,'啥地方还是打工还让他','2015-05-15',8),(28,1,'啥地方还是打工还让他哥哥哥哥哥哥哥的','2015-05-15',8),(29,1,'啥地方还是打工还让他哥哥哥哥哥哥哥3retro的','2015-05-15',8),(30,1,'我发觉这是最美的一片了在我看到过的文章中','2015-05-15',4),(31,1,'是吗，我也是这么觉得的也','2015-05-15',4),(32,1,'读后感','2015-05-15',4),(33,2,'ertwegf','2015-05-15',9),(34,2,'ratgadgs ','2015-05-15',8),(35,2,'文章写的挺好的','2015-05-15',8),(36,2,'分公司代购','2015-05-15',9),(37,2,'dfad f','2015-05-25',7),(38,2,'afadf ','2015-05-25',7);

#
# Source for table "letter"
#

DROP TABLE IF EXISTS `letter`;
CREATE TABLE `letter` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '用户的id号',
  `email` varchar(255) NOT NULL DEFAULT '' COMMENT '邮箱',
  `theme` varchar(255) NOT NULL DEFAULT '' COMMENT '信得主题',
  `content` text COMMENT '信得内容',
  `time` date NOT NULL DEFAULT '0000-00-00' COMMENT '发送的时间',
  `image` varchar(255) NOT NULL DEFAULT '' COMMENT '图片',
  `status` int(11) NOT NULL DEFAULT '1',
  `date` date DEFAULT NULL COMMENT '写信日期',
  `checkStatus` int(11) DEFAULT '0' COMMENT '用于管理员是否审核过',
  PRIMARY KEY (`id`),
  KEY `userId` (`userId`),
  CONSTRAINT `letter_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `usertable` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='写个未来的信';

#
# Data for table "letter"
#

INSERT INTO `letter` VALUES (1,1,'2327542415@qq.com','未来','速度发发呆是打发商店佛挡杀佛按时dfasdfasdfasdfsadfbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb','1994-09-09','',1,NULL,0),(2,1,'2327542415@qq.com','十多个发斯蒂芬','阿双方大是大非阿斯顿','0000-00-00','',1,NULL,0),(3,2,'2327542415@qq.com','阿斯顿发斯蒂芬','dfasdfasdf adf','0000-00-00','',1,NULL,0),(4,1,'','asfas','safsdfa','2015-06-11','./Public/uploads/hotel/55767ab84fe44.PNG',1,NULL,0),(5,1,'','asfas','safsdfa','2015-06-03','./Public/uploads/hotel/55767b1d6d392.PNG',1,NULL,0),(6,1,'','yulang shige hao ren ','niren 号人就一定会有好报的','2015-06-10','./Public/uploads/hotel/5576807aac228.PNG',1,'0000-00-00',0),(7,1,'','adsfadfa','fasdfasdfasdf','2015-06-16','./Public/uploads/hotel/557819ca54a77.PNG',1,'2015-06-10',0),(8,1,'','yuladfn','jia tian hou kai xing','2015-06-11','./Public/uploads/hotel/55785b19a9d9d.PNG',1,'2015-06-10',0),(9,1,'','hjkdfaslkdfj','kasjdflajsdfjasldkfasdfsdafasd','2015-06-19','./Public/uploads/hotel/557932a080a36.PNG',1,'2015-06-11',0);

#
# Source for table "comment"
#

DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(2550) NOT NULL DEFAULT '' COMMENT '评论的内容',
  `image` varchar(255) DEFAULT '' COMMENT '图片',
  `time` date NOT NULL DEFAULT '0000-00-00',
  `userId` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'user表的用户id号',
  `travelId` int(11) DEFAULT '0' COMMENT '评论的旅游景点的id',
  `level` varchar(255) DEFAULT NULL COMMENT '满意度',
  PRIMARY KEY (`id`),
  KEY `userid` (`userId`),
  KEY `travelid` (`travelId`),
  CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `usertable` (`id`),
  CONSTRAINT `comment_ibfk_2` FOREIGN KEY (`travelid`) REFERENCES `travelscency` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='旅游点评';

#
# Data for table "comment"
#

INSERT INTO `comment` VALUES (1,'etqwetrqwe','./Public/uploads/hotel/5576a9210d0ca.PNG','2015-06-09',1,4,'满意'),(2,'adfasdf','./Public/uploads/hotel/5576a93942c4c.PNG','2015-06-09',1,4,'满意'),(3,'是打发斯蒂芬','./Public/uploads/hotel/5576ab6ed6fa7.PNG','2015-06-09',1,4,'满意'),(4,'是打发斯蒂芬','./Public/uploads/hotel/5576ab938f782.PNG','2015-06-09',1,4,'满意'),(5,'你是傻逼','./Public/uploads/hotel/5576abae1f890.PNG','2015-06-09',1,4,'满意'),(6,'俺的沙发所发生的','./Public/uploads/hotel/5576ac421b7f9.PNG','2015-06-09',1,4,'满意');

#
# Source for view "commentuser"
#

DROP VIEW IF EXISTS `commentuser`;
CREATE VIEW `commentuser` AS 
  select `v`.`id` AS `id`,`v`.`content` AS `content`,`v`.`image` AS `image`,`v`.`time` AS `time`,`v`.`userId` AS `userId`,`v`.`travelId` AS `travelId`,`t`.`name` AS `name`,`t`.`image` AS `userImage` from (`steptu`.`comment` `v` join `steptu`.`usertable` `t`) where (`v`.`userId` = `t`.`id`);

#
# Source for view "letterlist"
#

DROP VIEW IF EXISTS `letterlist`;
CREATE VIEW `letterlist` AS 
  select `v`.`id` AS `id`,`v`.`theme` AS `theme`,`v`.`time` AS `time`,`v`.`checkStatus` AS `checkStatus`,`v`.`image` AS `image`,`t`.`name` AS `name`,`t`.`image` AS `userImage` from (`steptu`.`letter` `v` join `steptu`.`usertable` `t`) where ((`v`.`userId` = `t`.`id`) and (`v`.`status` = 1));

#
# Source for view "notecommentview"
#

DROP VIEW IF EXISTS `notecommentview`;
CREATE VIEW `notecommentview` AS 
  select `t`.`content` AS `content`,`t`.`id` AS `id`,`t`.`time` AS `time`,`t`.`noteId` AS `noteId`,`u`.`name` AS `name`,`u`.`image` AS `image` from (`steptu`.`usertable` `u` join `steptu`.`notecomment` `t`) where (`u`.`id` = `t`.`userId`);

#
# Source for view "travelbook"
#

DROP VIEW IF EXISTS `travelbook`;
CREATE VIEW `travelbook` AS 
  select `t`.`id` AS `id`,`t`.`name` AS `name`,`t`.`image` AS `image`,`t`.`checkStatus` AS `checkStatus`,`t`.`time` AS `time`,`t`.`likeNumber` AS `likeNumber`,`t`.`readNumber` AS `readNumber`,`v`.`image` AS `userImage`,`v`.`name` AS `userName` from (`steptu`.`usertable` `v` join `steptu`.`travelnote` `t`) where (`v`.`id` = `t`.`userId`);
