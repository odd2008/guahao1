

SET FOREIGN_KEY_CHECKS=0;

DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `name` varchar(255) NOT NULL,
  `password` varchar(255) default NULL,
  PRIMARY KEY  (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;


LOCK TABLES `admin` WRITE;

insert  into `admin`(`name`,`password`) values ('1234','1234');

UNLOCK TABLES;

DROP TABLE IF EXISTS `doctor`;
CREATE TABLE `doctor` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `introduction` varchar(255) NOT NULL,
  `sex` varchar(255) NOT NULL,
  `age` int(11) default NULL,
  `workyear` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

LOCK TABLES `doctor` WRITE;

insert  into `doctor`(`id`,`name`,`type`,`phone`,`introduction`,`sex`,`age`,`workyear`) values (1,'张三','儿科','1234567','很好','男',30,1);
insert  into `doctor`(`id`,`name`,`type`,`phone`,`introduction`,`sex`,`age`,`workyear`) values (2,'李四','妇科','2345678','非常好','男',35,5);
insert  into `doctor`(`id`,`name`,`type`,`phone`,`introduction`,`sex`,`age`,`workyear`) values (3,'王五','精神科','3456789','还行','女',40,10);
insert  into `doctor`(`id`,`name`,`type`,`phone`,`introduction`,`sex`,`age`,`workyear`) values (4,'赵六','外科','4567890','不错','男',46,18);
insert  into `doctor`(`id`,`name`,`type`,`phone`,`introduction`,`sex`,`age`,`workyear`) values (5,'冯七','中医科','5678901','好','女',55,35);

UNLOCK TABLES;


DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id` int(11) NOT NULL auto_increment,
  `tureName` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `time` date NOT NULL,
  `type` varchar(255) default NULL,
  `age` int(11) default NULL,
  `workyear` int(11) default NULL,
  `phone` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

LOCK TABLES `orders` WRITE;

insert  into `orders`(`id`,`tureName`,`name`,`time`,`type`,`age`,`workyear`,`phone`) values (1,'222','张三','2011-12-05 10:23:24','aaa',30,1,'1234567');

UNLOCK TABLES;


DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL auto_increment,
  `trueName` varchar(255) NOT NULL,
  `number` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `sex` varchar(255) NOT NULL,
  `age` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

LOCK TABLES `users` WRITE;

insert  into `users`(`id`,`trueName`,`number`,`phone`,`address`,`sex`,`age`) values (1,'111','111','110','q@163.com','男',21);
insert  into `users`(`id`,`trueName`,`number`,`phone`,`address`,`sex`,`age`) values (2,'222','222','120','qq@163.com','女',22);
insert  into `users`(`id`,`trueName`,`number`,`phone`,`address`,`sex`,`age`) values (3,'333','333','130','qqq@163.com','女',23);
insert  into `users`(`id`,`trueName`,`number`,`phone`,`address`,`sex`,`age`) values (4,'444','333','140','qqqq@163.com','男',24);
UNLOCK TABLES;

