/*
SQLyog Ultimate v11.11 (64 bit)
MySQL - 8.0.30 : Database - dump_gibl_wallet
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*Table structure for table `pos_transaction_requests` */

DROP TABLE IF EXISTS `pos_transaction_requests`;

CREATE TABLE `pos_transaction_requests` (
  `request_id` int NOT NULL AUTO_INCREMENT,
  `txn_id` int DEFAULT '0',
  `txn_refno` int DEFAULT NULL,
  `txn_desc` text,
  `quote_id` int DEFAULT NULL,
  `premium_id` int DEFAULT NULL,
  `wallet_id` smallint DEFAULT NULL,
  `user_name` varchar(30) DEFAULT NULL,
  `user_code` int DEFAULT NULL,
  `master_code` int DEFAULT '0',
  `insurer_id` tinyint DEFAULT NULL,
  `policy_type` varchar(11) DEFAULT NULL,
  `txn_amt` decimal(10,2) DEFAULT NULL,
  `od_premium` decimal(10,2) DEFAULT '0.00',
  `tp_premium` decimal(10,2) DEFAULT '0.00',
  `service_tax` decimal(10,2) DEFAULT NULL,
  `cpa_cover` smallint DEFAULT '0',
  `gross_premium` decimal(10,2) DEFAULT NULL,
  `auth_key` varchar(255) DEFAULT NULL,
  `created_by` int DEFAULT '0',
  `created_on` datetime DEFAULT NULL,
  `request_mode` tinyint DEFAULT '0' COMMENT '1=>Online portal, 2=>Manual Request',
  `approved_by` int DEFAULT '0',
  `approved_on` datetime DEFAULT NULL,
  `txn_type` char(1) DEFAULT NULL,
  `txn_date` date DEFAULT NULL,
  `is_valid` int DEFAULT '1',
  `rejected_by` int DEFAULT '0',
  `rejected_on` datetime DEFAULT NULL,
  PRIMARY KEY (`request_id`)
) ENGINE=InnoDB AUTO_INCREMENT=809 DEFAULT CHARSET=latin1;

/*Table structure for table `pos_wallet_transactions` */

DROP TABLE IF EXISTS `pos_wallet_transactions`;

CREATE TABLE `pos_wallet_transactions` (
  `txn_id` int NOT NULL AUTO_INCREMENT,
  `wallet_id` int NOT NULL,
  `master_code` int DEFAULT '0',
  `user_code` int NOT NULL DEFAULT '0',
  `txn_pid` int NOT NULL,
  `txn_refno` varchar(255) NOT NULL,
  `txn_desc` text,
  `txn_type` char(1) NOT NULL,
  `txn_amt` decimal(10,2) NOT NULL,
  `wallet_balance` decimal(10,2) DEFAULT NULL,
  `txn_status` tinyint(1) NOT NULL DEFAULT '0',
  `created_on` datetime NOT NULL,
  `created_by` int NOT NULL,
  `api_response` text NOT NULL,
  `updated_on` datetime NOT NULL,
  `updated_by` int NOT NULL,
  `is_reconciled` tinyint(1) NOT NULL,
  `reconciled_on` datetime NOT NULL,
  `reconciled_by` int NOT NULL,
  `auth_key` varchar(255) NOT NULL,
  `sess_code` varchar(255) NOT NULL,
  `is_active` tinyint(1) DEFAULT '0',
  `test_data` text,
  `policy_type` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `od_amt` decimal(10,2) DEFAULT NULL,
  `tp_amt` decimal(10,2) DEFAULT NULL,
  `pay_mode` tinyint(1) DEFAULT NULL,
  `reffer_url` varchar(500) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT 'https://www.gibl.in/' COMMENT '1=> ONLINE 2=> OFFLINE 3=> VIA EMAIL',
  PRIMARY KEY (`txn_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1782 DEFAULT CHARSET=latin1;

/*Table structure for table `quote_wallets` */

DROP TABLE IF EXISTS `quote_wallets`;

CREATE TABLE `quote_wallets` (
  `qwallet_id` int NOT NULL AUTO_INCREMENT,
  `master_code` int NOT NULL DEFAULT '0',
  `quote_balance` double(10,2) NOT NULL DEFAULT '0.00',
  `created_on` datetime NOT NULL,
  `created_by` int DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL,
  `updated_by` int NOT NULL DEFAULT '0',
  `is_active` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`qwallet_id`),
  UNIQUE KEY `UNIQUE` (`master_code`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Table structure for table `security_bal_settings` */

DROP TABLE IF EXISTS `security_bal_settings`;

CREATE TABLE `security_bal_settings` (
  `sec_id` int NOT NULL AUTO_INCREMENT,
  `policy_type` varchar(20) DEFAULT NULL,
  `security_amount` double(10,2) DEFAULT '0.00',
  `updated_on` timestamp NULL DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT '1',
  `description` varchar(500) DEFAULT NULL,
  `maximum_val` int DEFAULT '0',
  PRIMARY KEY (`sec_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Table structure for table `txn_refs` */

DROP TABLE IF EXISTS `txn_refs`;

CREATE TABLE `txn_refs` (
  `txn_refno` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_code` int DEFAULT NULL,
  `master_code` int DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `created_by` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`txn_refno`)
) ENGINE=InnoDB AUTO_INCREMENT=1004975975 DEFAULT CHARSET=latin1;

/*Table structure for table `user_comission_details` */

DROP TABLE IF EXISTS `user_comission_details`;

CREATE TABLE `user_comission_details` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_code` int NOT NULL,
  `quote_id` int DEFAULT NULL,
  `vault_id` int DEFAULT '0',
  `comission_value` double(10,2) DEFAULT NULL,
  `entry_date` datetime DEFAULT NULL,
  `comission_status` tinyint DEFAULT NULL COMMENT '0=>Redeem Pending,1=>Redeem to Wallet, 2=>Redeem to Bank, 3=>Redeem to Policy Issuance',
  `closing_balance` double(10,2) DEFAULT '0.00',
  `transaction_type` varchar(2) DEFAULT 'C',
  `redeem_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6662 DEFAULT CHARSET=latin1;

/*Table structure for table `user_wallet_master` */

DROP TABLE IF EXISTS `user_wallet_master`;

CREATE TABLE `user_wallet_master` (
  `wallet_id` int NOT NULL AUTO_INCREMENT,
  `wallet_parent_id` int DEFAULT '0',
  `user_code` int NOT NULL DEFAULT '0',
  `wallet_code` int NOT NULL,
  `wallet_balance` double(10,2) NOT NULL DEFAULT '0.00',
  `auth_key` varchar(255) NOT NULL,
  `sess_code` varchar(255) NOT NULL,
  `created_on` datetime NOT NULL,
  `master_parent_code` int DEFAULT '0',
  `updated_on` datetime DEFAULT NULL,
  `updated_by` int NOT NULL DEFAULT '0',
  `security_balance` double(10,2) DEFAULT '0.00',
  PRIMARY KEY (`wallet_id`),
  UNIQUE KEY `UNIQUE` (`user_code`)
) ENGINE=InnoDB AUTO_INCREMENT=2207 DEFAULT CHARSET=latin1;

/*Table structure for table `wallet_otp` */

DROP TABLE IF EXISTS `wallet_otp`;

CREATE TABLE `wallet_otp` (
  `id` int NOT NULL AUTO_INCREMENT,
  `request_id` int DEFAULT NULL,
  `otp_code` int DEFAULT NULL,
  `phone_no` int DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1823 DEFAULT CHARSET=latin1;

/*Table structure for table `wallet_settings` */

DROP TABLE IF EXISTS `wallet_settings`;

CREATE TABLE `wallet_settings` (
  `id` int NOT NULL AUTO_INCREMENT,
  `min_wallet_balance` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
