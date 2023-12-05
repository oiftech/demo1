/*
SQLyog Ultimate v11.11 (64 bit)
MySQL - 8.0.30 : Database - dump_career
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*Table structure for table `job_applications` */

DROP TABLE IF EXISTS `job_applications`;

CREATE TABLE `job_applications` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(25) DEFAULT NULL,
  `mobile_no` bigint DEFAULT NULL,
  `applied_for` varchar(100) DEFAULT NULL,
  `current_location` varchar(100) DEFAULT NULL,
  `work_exp` varchar(30) DEFAULT NULL,
  `resume` varchar(500) DEFAULT NULL,
  `sent_date` datetime DEFAULT NULL,
  `mail_status` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=116 DEFAULT CHARSET=latin1;

/*Data for the table `job_applications` */

/*Table structure for table `tech_career` */

DROP TABLE IF EXISTS `tech_career`;

CREATE TABLE `tech_career` (
  `id` int NOT NULL AUTO_INCREMENT,
  `company` varchar(20) DEFAULT NULL,
  `position` varchar(200) DEFAULT NULL,
  `no_of_vacanci` tinyint DEFAULT NULL,
  `work_exprience` varchar(6) DEFAULT NULL,
  `location` varchar(200) DEFAULT NULL,
  `job_description` text,
  `application_process` varchar(200) DEFAULT NULL,
  `is_active` enum('1','0') DEFAULT '1',
  `created_on` datetime DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

/*Data for the table `tech_career` */

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `user_code` int NOT NULL,
  `is_active` enum('Y','N') NOT NULL DEFAULT 'N',
  `parent_user_code` int DEFAULT '0',
  `associate_code` int DEFAULT '0',
  `affiliate_code` varchar(50) DEFAULT NULL,
  `source_value` varchar(50) DEFAULT NULL,
  `qr_code` int DEFAULT NULL,
  `role_type` tinyint NOT NULL DEFAULT '0',
  `wm_code` int DEFAULT '0',
  `user_name` varchar(50) DEFAULT NULL,
  `user_email` varchar(50) DEFAULT NULL,
  `user_pwd` varchar(50) DEFAULT NULL,
  `hierarchy` tinyint DEFAULT NULL,
  `dispname` varchar(50) DEFAULT NULL,
  `user_fname` varchar(50) DEFAULT NULL,
  `user_lname` varchar(50) DEFAULT NULL,
  `user_title` enum('1','2','3') DEFAULT NULL COMMENT '(1=>''mr'',2=>ms,3=>mrs)',
  `user_dob` date DEFAULT NULL,
  `marital_status` enum('1','2','3','4') DEFAULT NULL COMMENT '(1=>''Married'',2=>''Single,''3''=>divorce,4=>''widow'')''',
  `aadhaar_no` varchar(50) NOT NULL,
  `dialer_code` int DEFAULT '0',
  `user_state` int DEFAULT '0',
  `user_city` int DEFAULT '0',
  `user_zip` varchar(7) DEFAULT NULL,
  `contact_no` varchar(15) DEFAULT NULL,
  `otp_txt` varchar(10) DEFAULT NULL,
  `otp_code` varchar(10) DEFAULT NULL,
  `otp_verified` tinyint DEFAULT '0',
  `entry_date` datetime DEFAULT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `email_pwd` varchar(20) DEFAULT NULL,
  `private_lead` tinyint DEFAULT '0' COMMENT '0=>public, 1=>private',
  `white_label` tinyint DEFAULT '0' COMMENT '0=>White label not required, 1=>White label required',
  `user_ref_code` varchar(50) DEFAULT NULL,
  `is_mail_sent` enum('Y','N') NOT NULL DEFAULT 'N',
  `shop_name` varchar(255) DEFAULT NULL,
  `user_note` text,
  `is_interested_associate` tinyint DEFAULT NULL,
  `relevant_exp` tinyint DEFAULT NULL,
  `user_industry` tinyint DEFAULT NULL,
  `has_wallet` tinyint DEFAULT '0' COMMENT '0=>NA, 1=>GIBL Wallet, 2=>3-rd Party Wallet',
  `associate_type` tinyint DEFAULT '0' COMMENT '1=>Master, 2=>Distributor, 3=>Retailer',
  `direct_associate` tinyint DEFAULT '0' COMMENT '1=>Direct GIBL Associate, 2=>3-rd Party Associate',
  `user_call_status` tinyint(1) DEFAULT '0' COMMENT '0=>Not yet call,1=>Call already',
  `created_by` int DEFAULT '0' COMMENT 'User Code',
  `agent_code` varchar(20) DEFAULT NULL,
  `user_pan` varchar(13) DEFAULT NULL,
  `alt_phone` bigint DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_code` (`user_code`),
  UNIQUE KEY `user_code_2` (`user_code`),
  UNIQUE KEY `user_name` (`user_name`),
  UNIQUE KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=15637 DEFAULT CHARSET=latin1;

/*Data for the table `users` */

insert  into `users`(`user_id`,`user_code`,`is_active`,`parent_user_code`,`associate_code`,`affiliate_code`,`source_value`,`qr_code`,`role_type`,`wm_code`,`user_name`,`user_email`,`user_pwd`,`hierarchy`,`dispname`,`user_fname`,`user_lname`,`user_title`,`user_dob`,`marital_status`,`aadhaar_no`,`dialer_code`,`user_state`,`user_city`,`user_zip`,`contact_no`,`otp_txt`,`otp_code`,`otp_verified`,`entry_date`,`last_update`,`email_pwd`,`private_lead`,`white_label`,`user_ref_code`,`is_mail_sent`,`shop_name`,`user_note`,`is_interested_associate`,`relevant_exp`,`user_industry`,`has_wallet`,`associate_type`,`direct_associate`,`user_call_status`,`created_by`,`agent_code`,`user_pan`,`alt_phone`) values (15636,100025,'Y',0,0,NULL,NULL,NULL,0,0,'career','hr@test.ie','career',NULL,'Career Admin','Career','Admin',NULL,NULL,NULL,'',0,0,0,NULL,NULL,NULL,NULL,0,NULL,'2023-10-07 17:24:34',NULL,0,0,NULL,'N',NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,NULL,NULL,NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
