# Host: localhost  (Version: 5.6.17)
# Date: 2015-05-10 21:24:51
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "action"
#


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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='娱乐';

#
# Data for table "amusement"
#


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
  `status` varchar(25) DEFAULT '' COMMENT '景点的状态,是否打折，是否在优惠季，等多个状态',
  `descriptionPrice` varchar(255) DEFAULT '' COMMENT '价格描述',
  `discountAction` varchar(2550) DEFAULT NULL COMMENT '优惠活动',
  `characteristics` varchar(2550) DEFAULT NULL COMMENT '特色',
  `routeDescription` varchar(2550) DEFAULT NULL COMMENT '路线介绍',
  `bookInformation` varchar(2550) DEFAULT NULL COMMENT '预定须知',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='景点表';

#
# Data for table "travelscency"
#


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

INSERT INTO `usertable` VALUES (1,'23','e10adc3949ba59abbe56e057f20f883e','13548199570','2327542415@qq.com',NULL,NULL,NULL,NULL,NULL,''),(2,'233','fcea920f7412b5da7be0cf42b8c93759','15928932693','2327542415@qq.com',NULL,NULL,NULL,NULL,NULL,''),(3,'23we','fcea920f7412b5da7be0cf42b8c93759','15928932693','2327542415@qq.com',NULL,NULL,NULL,NULL,NULL,''),(4,'23222','25f9e794323b453885f5181f1b624d0b','15928932693','2327542415@qq.com',NULL,NULL,NULL,NULL,NULL,''),(5,'111','25d55ad283aa400af464c76d713c07ad','13548199570','2327542415@qq.com',NULL,NULL,NULL,NULL,NULL,''),(6,'2322','fcea920f7412b5da7be0cf42b8c93759','15928932693','2327542415@qq.com',NULL,NULL,NULL,NULL,NULL,''),(7,'12212','fcea920f7412b5da7be0cf42b8c93759','15928932693','2327542415@qq.com',NULL,NULL,NULL,NULL,NULL,''),(8,'1221344','fcea920f7412b5da7be0cf42b8c93759','15928932693','2327542415@qq.com',NULL,NULL,NULL,NULL,NULL,''),(9,'1221344121','fcea920f7412b5da7be0cf42b8c93759','15928932693','2327542415@qq.com',NULL,NULL,NULL,NULL,NULL,''),(10,'2321','e10adc3949ba59abbe56e057f20f883e','15928932693','2327542415@qq.com',NULL,NULL,NULL,NULL,NULL,''),(11,'232123','e10adc3949ba59abbe56e057f20f883e','15928932693','2327542415@qq.com',NULL,NULL,NULL,NULL,NULL,''),(12,'232123','e10adc3949ba59abbe56e057f20f883e','15928932693','2327542415@qq.com',NULL,NULL,NULL,NULL,NULL,''),(13,'121212','fcea920f7412b5da7be0cf42b8c93759','15928932693','2327542415@qq.com',NULL,NULL,NULL,NULL,NULL,''),(14,'12212121','fcea920f7412b5da7be0cf42b8c93759','15928932693','2327542415@qq.com',NULL,NULL,NULL,NULL,NULL,''),(15,'122121213232','fcea920f7412b5da7be0cf42b8c93759','15928932693','2327542415@qq.com',NULL,NULL,NULL,NULL,NULL,''),(16,'1212122','e10adc3949ba59abbe56e057f20f883e','15928932693','2327542415@qq.com',NULL,NULL,NULL,NULL,NULL,''),(17,'1212','e10adc3949ba59abbe56e057f20f883e','15928932693','2327542415@qq.com',NULL,NULL,NULL,NULL,NULL,''),(18,'1111','e10adc3949ba59abbe56e057f20f883e','15928932693','2327542415@qq.com',NULL,NULL,NULL,NULL,NULL,''),(19,'1','e10adc3949ba59abbe56e057f20f883e','15928932693','2327542415@qq.com',NULL,NULL,NULL,NULL,NULL,'');

#
# Source for table "travelnote"
#

DROP TABLE IF EXISTS `travelnote`;
CREATE TABLE `travelnote` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) NOT NULL DEFAULT '' COMMENT '旅游志的图片',
  `note` varchar(255) NOT NULL DEFAULT '' COMMENT '旅游感想',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '旅游志的描述',
  `time` date NOT NULL DEFAULT '0000-00-00' COMMENT '发表的日期',
  `likeNumber` int(11) unsigned NOT NULL DEFAULT '0',
  `readNumber` int(11) unsigned NOT NULL DEFAULT '0',
  `userId` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `userId` (`userId`),
  CONSTRAINT `travelnote_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `usertable` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='旅游志';

#
# Data for table "travelnote"
#


#
# Source for table "score"
#

DROP TABLE IF EXISTS `score`;
CREATE TABLE `score` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) unsigned DEFAULT NULL COMMENT 'user表的id号',
  `piont` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '积分的分数',
  `source` varchar(255) NOT NULL DEFAULT '' COMMENT '积分来源',
  `time` varchar(255) NOT NULL DEFAULT '' COMMENT '有效日期',
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`),
  CONSTRAINT `score_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `usertable` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户的积分表';

#
# Data for table "score"
#


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
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '订单的状态',
  `price` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '订单的价格',
  PRIMARY KEY (`id`),
  KEY `userId` (`userId`),
  KEY `scencyId` (`scencyId`),
  CONSTRAINT `order_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `usertable` (`id`),
  CONSTRAINT `order_ibfk_2` FOREIGN KEY (`scencyId`) REFERENCES `travelscency` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户的订单';

#
# Data for table "order"
#


#
# Source for table "notecomment"
#

DROP TABLE IF EXISTS `notecomment`;
CREATE TABLE `notecomment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) unsigned DEFAULT '0',
  `content` varchar(2550) NOT NULL DEFAULT '' COMMENT '评论内容',
  `time` date NOT NULL DEFAULT '0000-00-00' COMMENT '评论时间',
  PRIMARY KEY (`id`),
  KEY `userId` (`userId`),
  CONSTRAINT `notecomment_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `usertable` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='旅游志评论表';

#
# Data for table "notecomment"
#


#
# Source for table "letter"
#

DROP TABLE IF EXISTS `letter`;
CREATE TABLE `letter` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '用户的id号',
  `email` varchar(255) NOT NULL DEFAULT '' COMMENT '邮箱',
  `theme` varchar(255) NOT NULL DEFAULT '' COMMENT '信得主题',
  `content` varchar(2550) DEFAULT NULL COMMENT '信得内容',
  `time` date NOT NULL DEFAULT '0000-00-00' COMMENT '发送的时间',
  `image` varchar(255) NOT NULL DEFAULT '' COMMENT '图片',
  PRIMARY KEY (`id`),
  KEY `userId` (`userId`),
  CONSTRAINT `letter_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `usertable` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='写个未来的信';

#
# Data for table "letter"
#


#
# Source for table "comment"
#

DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) NOT NULL DEFAULT '' COMMENT '评论的内容',
  `image` varchar(255) NOT NULL DEFAULT '' COMMENT '图片',
  `userid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'user表的用户id号',
  `travelid` int(11) DEFAULT '0' COMMENT '评论的旅游景点的id',
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`),
  KEY `travelid` (`travelid`),
  CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `usertable` (`id`),
  CONSTRAINT `comment_ibfk_2` FOREIGN KEY (`travelid`) REFERENCES `travelscency` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='旅游点评';

#
# Data for table "comment"
#

