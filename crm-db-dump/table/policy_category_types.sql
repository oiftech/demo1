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
/*Table structure for table `policy_category_types` */

DROP TABLE IF EXISTS `policy_category_types`;

CREATE TABLE `policy_category_types` (
  `cat_id` int NOT NULL AUTO_INCREMENT,
  `cat_title` varchar(255) NOT NULL,
  `cat_code` varchar(255) NOT NULL,
  `cat_code2` varchar(5) DEFAULT NULL,
  `cat_parent` smallint DEFAULT '0',
  `entry_date` datetime NOT NULL,
  `applicable_for` enum('B','H') NOT NULL DEFAULT 'B',
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=latin1;

/*Data for the table `policy_category_types` */

insert  into `policy_category_types`(`cat_id`,`cat_title`,`cat_code`,`cat_code2`,`cat_parent`,`entry_date`,`applicable_for`) values (1,'HEALTH','HEALTH','HLT',0,'2016-02-17 08:24:29','H');
insert  into `policy_category_types`(`cat_id`,`cat_title`,`cat_code`,`cat_code2`,`cat_parent`,`entry_date`,`applicable_for`) values (2,'HOME','HOME','HOM',0,'2016-02-17 08:24:29','H');
insert  into `policy_category_types`(`cat_id`,`cat_title`,`cat_code`,`cat_code2`,`cat_parent`,`entry_date`,`applicable_for`) values (3,'MOTOR','MOTOR','FWH',0,'2016-02-17 08:24:29','H');
insert  into `policy_category_types`(`cat_id`,`cat_title`,`cat_code`,`cat_code2`,`cat_parent`,`entry_date`,`applicable_for`) values (4,'PA','PA','PAC',0,'2016-02-17 08:24:29','H');
insert  into `policy_category_types`(`cat_id`,`cat_title`,`cat_code`,`cat_code2`,`cat_parent`,`entry_date`,`applicable_for`) values (5,'TRAVEL','TRAVEL','TR',0,'2016-02-17 08:24:29','H');
insert  into `policy_category_types`(`cat_id`,`cat_title`,`cat_code`,`cat_code2`,`cat_parent`,`entry_date`,`applicable_for`) values (6,'TWO WHEELER','TWOWHEELER','TW',0,'2016-02-17 08:24:29','H');
insert  into `policy_category_types`(`cat_id`,`cat_title`,`cat_code`,`cat_code2`,`cat_parent`,`entry_date`,`applicable_for`) values (7,'FAMILY(EXTENDED)','EXTFAMILY','EF',0,'2016-02-17 08:24:29','H');
insert  into `policy_category_types`(`cat_id`,`cat_title`,`cat_code`,`cat_code2`,`cat_parent`,`entry_date`,`applicable_for`) values (8,'COMMERCIAL VEHICLE','CV','CV',0,'2016-02-17 08:24:29','B');
insert  into `policy_category_types`(`cat_id`,`cat_title`,`cat_code`,`cat_code2`,`cat_parent`,`entry_date`,`applicable_for`) values (9,'BUSINESS','BUSINESS',NULL,0,'2018-08-27 14:27:32','B');
insert  into `policy_category_types`(`cat_id`,`cat_title`,`cat_code`,`cat_code2`,`cat_parent`,`entry_date`,`applicable_for`) values (10,'BURGLARY INSURANCE','BURGLARY',NULL,16,'2016-02-17 08:24:29','B');
insert  into `policy_category_types`(`cat_id`,`cat_title`,`cat_code`,`cat_code2`,`cat_parent`,`entry_date`,`applicable_for`) values (11,'PACKAGE INSURANCE','COMBINED_PACKAGE',NULL,0,'2016-02-17 08:24:29','B');
insert  into `policy_category_types`(`cat_id`,`cat_title`,`cat_code`,`cat_code2`,`cat_parent`,`entry_date`,`applicable_for`) values (12,'CREDIT INSURANCE','CREDIT',NULL,9,'2016-02-17 08:24:29','B');
insert  into `policy_category_types`(`cat_id`,`cat_title`,`cat_code`,`cat_code2`,`cat_parent`,`entry_date`,`applicable_for`) values (13,'EARTHQUAKE INSURANCE','EARTHQUAKE',NULL,9,'2016-02-17 08:24:29','B');
insert  into `policy_category_types`(`cat_id`,`cat_title`,`cat_code`,`cat_code2`,`cat_parent`,`entry_date`,`applicable_for`) values (14,'ENGINEERING INSURANCE','ENGINEERING',NULL,0,'2016-02-17 08:24:29','B');
insert  into `policy_category_types`(`cat_id`,`cat_title`,`cat_code`,`cat_code2`,`cat_parent`,`entry_date`,`applicable_for`) values (15,'ERRORS & OMISSIONS INSURANCE','ERRORS_OMISSIONS',NULL,9,'2016-02-17 08:24:29','B');
insert  into `policy_category_types`(`cat_id`,`cat_title`,`cat_code`,`cat_code2`,`cat_parent`,`entry_date`,`applicable_for`) values (16,'FIRE INSURANCE','FIRE',NULL,0,'2016-02-17 08:24:29','B');
insert  into `policy_category_types`(`cat_id`,`cat_title`,`cat_code`,`cat_code2`,`cat_parent`,`entry_date`,`applicable_for`) values (17,'FIRE LOSS OF PROFIT INSURANCE','FIRE_LOSS_OF_PROFIT',NULL,16,'2016-02-17 08:24:29','B');
insert  into `policy_category_types`(`cat_id`,`cat_title`,`cat_code`,`cat_code2`,`cat_parent`,`entry_date`,`applicable_for`) values (19,'INDUSTRIAL ALL RISKS INSURANCE','INDUSTRIAL_ALL_RISKS',NULL,9,'2016-02-17 08:24:29','B');
insert  into `policy_category_types`(`cat_id`,`cat_title`,`cat_code`,`cat_code2`,`cat_parent`,`entry_date`,`applicable_for`) values (20,'IT OFFICE LIABILITY INSURANCE','IT_OFFICE_LIABILITY',NULL,9,'2016-02-17 08:24:29','B');
insert  into `policy_category_types`(`cat_id`,`cat_title`,`cat_code`,`cat_code2`,`cat_parent`,`entry_date`,`applicable_for`) values (21,'KIDNAP & RANSOM INSURANCE','KIDNAP_RANSOM',NULL,22,'2016-02-17 08:24:29','B');
insert  into `policy_category_types`(`cat_id`,`cat_title`,`cat_code`,`cat_code2`,`cat_parent`,`entry_date`,`applicable_for`) values (22,'LIABILITY INSURANCE','LIABILITY',NULL,0,'2016-02-17 08:24:29','B');
insert  into `policy_category_types`(`cat_id`,`cat_title`,`cat_code`,`cat_code2`,`cat_parent`,`entry_date`,`applicable_for`) values (23,'MARINE INSURANCE','MARINE',NULL,0,'2016-02-17 08:24:29','B');
insert  into `policy_category_types`(`cat_id`,`cat_title`,`cat_code`,`cat_code2`,`cat_parent`,`entry_date`,`applicable_for`) values (24,'MONEY INSURANCE','MONEY',NULL,25,'2016-02-17 08:24:29','B');
insert  into `policy_category_types`(`cat_id`,`cat_title`,`cat_code`,`cat_code2`,`cat_parent`,`entry_date`,`applicable_for`) values (25,'MISCELLANEOUS INSURANCE','MISCELLANEOUS',NULL,0,'2016-02-17 08:24:29','B');
insert  into `policy_category_types`(`cat_id`,`cat_title`,`cat_code`,`cat_code2`,`cat_parent`,`entry_date`,`applicable_for`) values (26,'LIFE INSURANCE','LIFEINSURANCE','LI',0,'2020-03-06 10:53:50','B');
insert  into `policy_category_types`(`cat_id`,`cat_title`,`cat_code`,`cat_code2`,`cat_parent`,`entry_date`,`applicable_for`) values (27,'CYBER INSURANCE','CYBER',NULL,0,'2020-03-06 10:53:54','B');
insert  into `policy_category_types`(`cat_id`,`cat_title`,`cat_code`,`cat_code2`,`cat_parent`,`entry_date`,`applicable_for`) values (28,'CORONA INSURANCE','CORONA','COV',0,'2020-08-14 15:57:35','B');
insert  into `policy_category_types`(`cat_id`,`cat_title`,`cat_code`,`cat_code2`,`cat_parent`,`entry_date`,`applicable_for`) values (30,'SMART CASH','SMARTCASH','SMART',0,'0000-00-00 00:00:00','B');
insert  into `policy_category_types`(`cat_id`,`cat_title`,`cat_code`,`cat_code2`,`cat_parent`,`entry_date`,`applicable_for`) values (31,'FACTORY WAREHOUSE INSURANCE','PROPERTY-FACTORY',NULL,0,'0000-00-00 00:00:00','B');
insert  into `policy_category_types`(`cat_id`,`cat_title`,`cat_code`,`cat_code2`,`cat_parent`,`entry_date`,`applicable_for`) values (32,'CONSTRUCTION ALL RISK INSURANCE','PROPERTY-CONSTRACTION',NULL,0,'0000-00-00 00:00:00','B');
insert  into `policy_category_types`(`cat_id`,`cat_title`,`cat_code`,`cat_code2`,`cat_parent`,`entry_date`,`applicable_for`) values (33,'OFFICE INSURANCE','PROPERTY-OFFICE',NULL,0,'0000-00-00 00:00:00','B');
insert  into `policy_category_types`(`cat_id`,`cat_title`,`cat_code`,`cat_code2`,`cat_parent`,`entry_date`,`applicable_for`) values (34,'EXPORT IMPORT INSURANCE','MARINE-EXPORT',NULL,0,'0000-00-00 00:00:00','B');
insert  into `policy_category_types`(`cat_id`,`cat_title`,`cat_code`,`cat_code2`,`cat_parent`,`entry_date`,`applicable_for`) values (35,'FIRE AND SPECIAL PERIL POLICY','FIRE-SPECIAL-PERIL','',16,'0000-00-00 00:00:00','B');
insert  into `policy_category_types`(`cat_id`,`cat_title`,`cat_code`,`cat_code2`,`cat_parent`,`entry_date`,`applicable_for`) values (36,'MARINE CARGO','MARINE-CARGO',NULL,23,'0000-00-00 00:00:00','B');
insert  into `policy_category_types`(`cat_id`,`cat_title`,`cat_code`,`cat_code2`,`cat_parent`,`entry_date`,`applicable_for`) values (37,'SPECIFIC MARINE','SPECIFIC-MARINE',NULL,23,'0000-00-00 00:00:00','B');
insert  into `policy_category_types`(`cat_id`,`cat_title`,`cat_code`,`cat_code2`,`cat_parent`,`entry_date`,`applicable_for`) values (38,'SALES TURN OVER POLICY','SALES-TURN-OVER',NULL,23,'0000-00-00 00:00:00','B');
insert  into `policy_category_types`(`cat_id`,`cat_title`,`cat_code`,`cat_code2`,`cat_parent`,`entry_date`,`applicable_for`) values (39,'MARINE HULL','MARINE-HULL',NULL,23,'0000-00-00 00:00:00','B');
insert  into `policy_category_types`(`cat_id`,`cat_title`,`cat_code`,`cat_code2`,`cat_parent`,`entry_date`,`applicable_for`) values (40,'HULL & MACHINERY','HULL-MACHINERY',NULL,23,'0000-00-00 00:00:00','B');
insert  into `policy_category_types`(`cat_id`,`cat_title`,`cat_code`,`cat_code2`,`cat_parent`,`entry_date`,`applicable_for`) values (41,'CONTRACTORS ALL RISK','CONTRACTORS-ALL-RISK',NULL,14,'0000-00-00 00:00:00','B');
insert  into `policy_category_types`(`cat_id`,`cat_title`,`cat_code`,`cat_code2`,`cat_parent`,`entry_date`,`applicable_for`) values (42,'CONTRACTORS PLANT & MACHINERY','CONTRACTORS-PLANT-MACHINERY',NULL,14,'0000-00-00 00:00:00','B');
insert  into `policy_category_types`(`cat_id`,`cat_title`,`cat_code`,`cat_code2`,`cat_parent`,`entry_date`,`applicable_for`) values (43,'ERECTION ALL RISK','ERECTION-ALL-RISK',NULL,14,'0000-00-00 00:00:00','B');
insert  into `policy_category_types`(`cat_id`,`cat_title`,`cat_code`,`cat_code2`,`cat_parent`,`entry_date`,`applicable_for`) values (44,'EMPLOYERS COMPENSATION','EMPLOYERS-COMPENSATION',NULL,14,'0000-00-00 00:00:00','B');
insert  into `policy_category_types`(`cat_id`,`cat_title`,`cat_code`,`cat_code2`,`cat_parent`,`entry_date`,`applicable_for`) values (45,'MACHINERY BREAK DOWN','MACHINERY-BREAK-DOWN',NULL,14,'0000-00-00 00:00:00','B');
insert  into `policy_category_types`(`cat_id`,`cat_title`,`cat_code`,`cat_code2`,`cat_parent`,`entry_date`,`applicable_for`) values (46,'ELECTRONIC ALL RISK','ELECTRONIC-ALL-RISK',NULL,14,'0000-00-00 00:00:00','B');
insert  into `policy_category_types`(`cat_id`,`cat_title`,`cat_code`,`cat_code2`,`cat_parent`,`entry_date`,`applicable_for`) values (47,'PUBLIC LIABILITY','PUBLIC-LIABILITY',NULL,22,'0000-00-00 00:00:00','B');
insert  into `policy_category_types`(`cat_id`,`cat_title`,`cat_code`,`cat_code2`,`cat_parent`,`entry_date`,`applicable_for`) values (48,'PUBLIC LIABILITY ACT','PUBLIC-LIABILITY-ACT',NULL,22,'2021-11-15 15:22:52','B');
insert  into `policy_category_types`(`cat_id`,`cat_title`,`cat_code`,`cat_code2`,`cat_parent`,`entry_date`,`applicable_for`) values (49,'PRODUCT LIABILITY','PRODUCT-LIABILITY',NULL,22,'0000-00-00 00:00:00','B');
insert  into `policy_category_types`(`cat_id`,`cat_title`,`cat_code`,`cat_code2`,`cat_parent`,`entry_date`,`applicable_for`) values (50,'COMMERCIAL GENERAL LIABILITY','COMMERCIAL-GENERAL-LIABILITY',NULL,22,'0000-00-00 00:00:00','B');
insert  into `policy_category_types`(`cat_id`,`cat_title`,`cat_code`,`cat_code2`,`cat_parent`,`entry_date`,`applicable_for`) values (51,'EMPLOYERS LIABILITY','EMPLOYERS-LIABILITY',NULL,22,'0000-00-00 00:00:00','B');
insert  into `policy_category_types`(`cat_id`,`cat_title`,`cat_code`,`cat_code2`,`cat_parent`,`entry_date`,`applicable_for`) values (52,'DIRECTORS & OFFICERS LIABILITY','DIRECTORS-OFFICERS-LIABILITY',NULL,22,'0000-00-00 00:00:00','B');
insert  into `policy_category_types`(`cat_id`,`cat_title`,`cat_code`,`cat_code2`,`cat_parent`,`entry_date`,`applicable_for`) values (53,'PROFESSIONAL INDEMNITY','PROFESSIONAL-INDEMNITY',NULL,22,'0000-00-00 00:00:00','B');
insert  into `policy_category_types`(`cat_id`,`cat_title`,`cat_code`,`cat_code2`,`cat_parent`,`entry_date`,`applicable_for`) values (54,'BANKER S INDEMNITY','BANKERS-INDEMNITY',NULL,22,'0000-00-00 00:00:00','B');
insert  into `policy_category_types`(`cat_id`,`cat_title`,`cat_code`,`cat_code2`,`cat_parent`,`entry_date`,`applicable_for`) values (55,'CYBER CRIME','CYBER-CRIME',NULL,22,'0000-00-00 00:00:00','B');
insert  into `policy_category_types`(`cat_id`,`cat_title`,`cat_code`,`cat_code2`,`cat_parent`,`entry_date`,`applicable_for`) values (56,'CYBER LIABILITY','CYBER-LIABILITY',NULL,22,'0000-00-00 00:00:00','B');
insert  into `policy_category_types`(`cat_id`,`cat_title`,`cat_code`,`cat_code2`,`cat_parent`,`entry_date`,`applicable_for`) values (57,'COMMERCIAL CRIME','COMMERCIAL-CRIME',NULL,22,'0000-00-00 00:00:00','B');
insert  into `policy_category_types`(`cat_id`,`cat_title`,`cat_code`,`cat_code2`,`cat_parent`,`entry_date`,`applicable_for`) values (58,'POLLUTION LIABILITY','POLLUTION-LIABILITY',NULL,22,'0000-00-00 00:00:00','B');
insert  into `policy_category_types`(`cat_id`,`cat_title`,`cat_code`,`cat_code2`,`cat_parent`,`entry_date`,`applicable_for`) values (59,'PUBLIC OFFER SECURITY INSURANCE','PUBLIC-OFFER-SECURITY-INSURANCE',NULL,22,'0000-00-00 00:00:00','B');
insert  into `policy_category_types`(`cat_id`,`cat_title`,`cat_code`,`cat_code2`,`cat_parent`,`entry_date`,`applicable_for`) values (60,'EXTENDED WARRANTY','EXTENDED-WARRANTY',NULL,22,'0000-00-00 00:00:00','B');
insert  into `policy_category_types`(`cat_id`,`cat_title`,`cat_code`,`cat_code2`,`cat_parent`,`entry_date`,`applicable_for`) values (61,'FIDELITY GUARANTY','FIDELITY-GUARANTY',NULL,25,'0000-00-00 00:00:00','B');
insert  into `policy_category_types`(`cat_id`,`cat_title`,`cat_code`,`cat_code2`,`cat_parent`,`entry_date`,`applicable_for`) values (62,'FIXED PLATE GLASS','FIXED-PLATE-GLASS',NULL,25,'0000-00-00 00:00:00','B');
insert  into `policy_category_types`(`cat_id`,`cat_title`,`cat_code`,`cat_code2`,`cat_parent`,`entry_date`,`applicable_for`) values (63,'PORTABLE ALL RISK INSURANCE','PORTABLE-ALL-RISK-INSURANCE',NULL,25,'0000-00-00 00:00:00','B');
insert  into `policy_category_types`(`cat_id`,`cat_title`,`cat_code`,`cat_code2`,`cat_parent`,`entry_date`,`applicable_for`) values (64,'FARM & CROP INSURANCE','FARM-CROP-INSURANCE',NULL,25,'0000-00-00 00:00:00','B');
insert  into `policy_category_types`(`cat_id`,`cat_title`,`cat_code`,`cat_code2`,`cat_parent`,`entry_date`,`applicable_for`) values (65,'CATTLE INSURANCE','CATTLE-INSURANCE',NULL,25,'0000-00-00 00:00:00','B');
insert  into `policy_category_types`(`cat_id`,`cat_title`,`cat_code`,`cat_code2`,`cat_parent`,`entry_date`,`applicable_for`) values (66,'PEDAL CYCLE INSURANCE','PEDAL-CYCLE-INSURANCE',NULL,25,'0000-00-00 00:00:00','B');
insert  into `policy_category_types`(`cat_id`,`cat_title`,`cat_code`,`cat_code2`,`cat_parent`,`entry_date`,`applicable_for`) values (67,'SIGH BOARD INSURANCE','SIGH-BOARD-INSURANCE',NULL,25,'0000-00-00 00:00:00','B');
insert  into `policy_category_types`(`cat_id`,`cat_title`,`cat_code`,`cat_code2`,`cat_parent`,`entry_date`,`applicable_for`) values (68,'OFFICE PACKAGE','OFFICE-PACKAGE',NULL,11,'0000-00-00 00:00:00','B');
insert  into `policy_category_types`(`cat_id`,`cat_title`,`cat_code`,`cat_code2`,`cat_parent`,`entry_date`,`applicable_for`) values (69,'HOTEL & RESTAURANT','HOTEL-RESTAURANT',NULL,11,'0000-00-00 00:00:00','B');
insert  into `policy_category_types`(`cat_id`,`cat_title`,`cat_code`,`cat_code2`,`cat_parent`,`entry_date`,`applicable_for`) values (70,'SHOPKEEPERS ','SHOPKEEPERS ',NULL,11,'0000-00-00 00:00:00','B');
insert  into `policy_category_types`(`cat_id`,`cat_title`,`cat_code`,`cat_code2`,`cat_parent`,`entry_date`,`applicable_for`) values (71,'COMMERCIAL PACKAGE','COMMERCIAL-PACKAGE',NULL,11,'0000-00-00 00:00:00','B');
insert  into `policy_category_types`(`cat_id`,`cat_title`,`cat_code`,`cat_code2`,`cat_parent`,`entry_date`,`applicable_for`) values (72,'JEWELLERS BLOCK','JEWELLERS-BLOCK',NULL,11,'0000-00-00 00:00:00','B');
insert  into `policy_category_types`(`cat_id`,`cat_title`,`cat_code`,`cat_code2`,`cat_parent`,`entry_date`,`applicable_for`) values (73,'GROUP MEDICLAIM','HL-GMC',NULL,0,'0000-00-00 00:00:00','B');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
