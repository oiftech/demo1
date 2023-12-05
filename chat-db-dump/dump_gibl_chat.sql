/*
SQLyog Ultimate v11.11 (64 bit)
MySQL - 8.0.30 : Database - dump_chat
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*Table structure for table `chat` */

DROP TABLE IF EXISTS `chat`;

CREATE TABLE `chat` (
  `chatid` int NOT NULL AUTO_INCREMENT,
  `userid` int NOT NULL,
  `chatroomid` int NOT NULL,
  `message` text NOT NULL,
  `attachment_org_name` varchar(255) DEFAULT NULL,
  `attachment_name` varchar(255) DEFAULT NULL,
  `attachment_size` varchar(50) DEFAULT NULL,
  `is_seen` int NOT NULL DEFAULT '0',
  `is_user_seen` int NOT NULL DEFAULT '0',
  `chat_date` datetime NOT NULL,
  PRIMARY KEY (`chatid`)
) ENGINE=InnoDB AUTO_INCREMENT=12041 DEFAULT CHARSET=latin1;

/*Data for the table `chat` */

/*Table structure for table `chat_member` */

DROP TABLE IF EXISTS `chat_member`;

CREATE TABLE `chat_member` (
  `chat_memberid` int NOT NULL AUTO_INCREMENT,
  `chatroomid` int NOT NULL,
  `userid` int NOT NULL,
  PRIMARY KEY (`chat_memberid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `chat_member` */

/*Table structure for table `chatroom` */

DROP TABLE IF EXISTS `chatroom`;

CREATE TABLE `chatroom` (
  `chatroomid` int NOT NULL AUTO_INCREMENT,
  `chat_name` varchar(60) NOT NULL,
  `date_created` datetime NOT NULL,
  `chat_password` varchar(30) NOT NULL,
  `userid` int NOT NULL,
  `assist_by` varchar(50) DEFAULT NULL,
  `ip_address` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`chatroomid`)
) ENGINE=InnoDB AUTO_INCREMENT=95313 DEFAULT CHARSET=latin1;

/*Data for the table `chatroom` */

/*Table structure for table `health_chat_response` */

DROP TABLE IF EXISTS `health_chat_response`;

CREATE TABLE `health_chat_response` (
  `id` int NOT NULL AUTO_INCREMENT,
  `intent` varchar(255) DEFAULT NULL,
  `answer` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `health_chat_response` */

/*Table structure for table `renewal_quotes` */

DROP TABLE IF EXISTS `renewal_quotes`;

CREATE TABLE `renewal_quotes` (
  `quote_id` int NOT NULL,
  `exp_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `renewal_quotes` */

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `userid` int NOT NULL AUTO_INCREMENT,
  `quote_id` int DEFAULT '0',
  `email` varchar(150) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(150) NOT NULL,
  `uname` varchar(60) DEFAULT NULL,
  `photo` varchar(200) DEFAULT NULL,
  `phone_no` varchar(15) DEFAULT NULL,
  `access` int NOT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=91161 DEFAULT CHARSET=latin1;

/*Data for the table `user` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
