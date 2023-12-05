/*
SQLyog Ultimate v11.11 (64 bit)
MySQL - 8.0.34-0ubuntu0.20.04.1 : Database - gibl_crm
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`gibl_crm` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `gibl_crm`;

/*Table structure for table `departments` */

DROP TABLE IF EXISTS `departments`;

CREATE TABLE `departments` (
  `dept_id` int NOT NULL AUTO_INCREMENT,
  `dept_name` varchar(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1' COMMENT '1=>active,0=>inactive',
  `hod` varchar(10) DEFAULT NULL,
  KEY `dept_id` (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=latin1;

/*Data for the table `departments` */

insert  into `departments`(`dept_id`,`dept_name`,`status`,`hod`) values (38,'QA&PM',1,'100002'),(39,'SysAdmin',1,'100002'),(40,'Development',1,'100003'),(43,'Telecalling ',1,'231462'),(44,'POS',1,'100101'),(47,'Digital Marketing',1,'100002'),(48,'Tele Team-Team Manager',1,'100002'),(49,'POS Team - Team Manager_',1,'--Select--'),(50,'RetailTeam- Team Manager',1,'100002'),(54,'HR',1,'100002'),(55,'Digital Team- Team Manager',1,'--Select--'),(56,'POS Team- Gautam - BDM',1,'100002'),(57,'Operation Team- Ritu',1,'101603'),(58,'operation team- Manoj',1,'101603'),(59,'operation team- ayan',1,'101603'),(60,'operation team- saddam',1,'101603'),(62,'Renewal Team',1,'101603'),(63,'Retail Team- Sayantani',1,'101603'),(64,'UNASSIGNED',1,'100002'),(65,'Accounts',1,'229900');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
