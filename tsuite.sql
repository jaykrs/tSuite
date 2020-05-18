/*
SQLyog Community v13.1.5  (64 bit)
MySQL - 5.7.28-log : Database - tsuite
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`tsuite` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `tsuite`;

/*Table structure for table `tutorials` */

DROP TABLE IF EXISTS `tutorials`;

CREATE TABLE `tutorials` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `published` tinyint(1) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `tutorials` */

insert  into `tutorials`(`id`,`title`,`description`,`published`,`createdAt`,`updatedAt`) values 
(1,'node js','this is node js',0,NULL,NULL);

/*Table structure for table `tutorialssss` */

DROP TABLE IF EXISTS `tutorialssss`;

CREATE TABLE `tutorialssss` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `published` tinyint(1) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tutorialssss` */

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `encrypted_password` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  `password_salt` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `sign_in_count` int(11) NOT NULL DEFAULT '0',
  `failed_attempts` int(11) NOT NULL DEFAULT '0',
  `last_request_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` longtext COLLATE utf8_bin,
  `ship_address_id` int(11) DEFAULT NULL,
  `bill_address_id` int(11) DEFAULT NULL,
  `authentication_token` longtext COLLATE utf8_bin,
  `unlock_token` longtext COLLATE utf8_bin,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `confirmation_token` longtext COLLATE utf8_bin,
  `confirmed_at` datetime DEFAULT NULL,
  `f_name` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `l_name` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `phone_no` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `active_ind` tinyint(4) DEFAULT '0',
  `deleted_ind` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email_idx_unique` (`email`),
  KEY `index_eshop_users_on_ship_address_id` (`ship_address_id`),
  KEY `index_eshop_users_on_bill_address_id` (`bill_address_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `user` */

insert  into `user`(`id`,`encrypted_password`,`password_salt`,`email`,`sign_in_count`,`failed_attempts`,`last_request_at`,`last_sign_in_at`,`current_sign_in_ip`,`ship_address_id`,`bill_address_id`,`authentication_token`,`unlock_token`,`reset_password_sent_at`,`created_at`,`updated_at`,`confirmation_token`,`confirmed_at`,`f_name`,`l_name`,`phone_no`,`active_ind`,`deleted_ind`) values 
(1,'cde216bda624c0ecc3812abe7ce538647b3f32d8fbb88b66b02abfae042822506a3996ad0a73f603665a1b6402abee443e90b791553de106b48986719bb8e437','XCMi2-6ek-mnSqYAyJFU','spree@example.com',2,0,NULL,'2018-10-13 12:41:25','165.225.104.66',NULL,NULL,NULL,NULL,NULL,'2018-10-13 12:36:32','2018-10-26 09:27:40',NULL,NULL,'jayant','kumar','9911039294',0,0);

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `encrypted_password` varchar(255) DEFAULT NULL,
  `password_salt` varchar(255) DEFAULT NULL,
  `sign_in_count` int(11) DEFAULT NULL,
  `failed_attempts` int(11) DEFAULT NULL,
  `phone_no` varchar(255) DEFAULT NULL,
  `f_name` varchar(255) DEFAULT NULL,
  `l_name` varchar(255) DEFAULT NULL,
  `active_ind` tinyint(1) DEFAULT NULL,
  `deleted_ind` tinyint(1) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `auth_token` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `users` */

insert  into `users`(`id`,`email`,`encrypted_password`,`password_salt`,`sign_in_count`,`failed_attempts`,`phone_no`,`f_name`,`l_name`,`active_ind`,`deleted_ind`,`createdAt`,`updatedAt`,`auth_token`) values 
(1,'jaykrs@gmail.com','Welcome@0','welcome@0',0,0,'9911039294','jayant','kumar',0,0,NULL,'2020-05-12 20:09:20','6H7Tj3qkTupFgqGc2sKhTIOFYmb7lmsREGq1');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
