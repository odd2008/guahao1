

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

insert  into `doctor`(`id`,`name`,`type`,`phone`,`introduction`,`sex`,`age`,`workyear`) values (1,'����','����','1234567','�ܺ�','��',30,1);
insert  into `doctor`(`id`,`name`,`type`,`phone`,`introduction`,`sex`,`age`,`workyear`) values (2,'����','����','2345678','�ǳ���','��',35,5);
insert  into `doctor`(`id`,`name`,`type`,`phone`,`introduction`,`sex`,`age`,`workyear`) values (3,'����','�����','3456789','����','Ů',40,10);
insert  into `doctor`(`id`,`name`,`type`,`phone`,`introduction`,`sex`,`age`,`workyear`) values (4,'����','���','4567890','����','��',46,18);
insert  into `doctor`(`id`,`name`,`type`,`phone`,`introduction`,`sex`,`age`,`workyear`) values (5,'����','��ҽ��','5678901','��','Ů',55,35);

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

insert  into `orders`(`id`,`tureName`,`name`,`time`,`type`,`age`,`workyear`,`phone`) values (1,'222','����','2011-12-05 10:23:24','aaa',30,1,'1234567');

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

insert  into `users`(`id`,`trueName`,`number`,`phone`,`address`,`sex`,`age`) values (1,'111','111','110','q@163.com','��',21);
insert  into `users`(`id`,`trueName`,`number`,`phone`,`address`,`sex`,`age`) values (2,'222','222','120','qq@163.com','Ů',22);
insert  into `users`(`id`,`trueName`,`number`,`phone`,`address`,`sex`,`age`) values (3,'333','333','130','qqq@163.com','Ů',23);
insert  into `users`(`id`,`trueName`,`number`,`phone`,`address`,`sex`,`age`) values (4,'444','333','140','qqqq@163.com','��',24);
UNLOCK TABLES;

