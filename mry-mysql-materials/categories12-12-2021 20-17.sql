#
# TABLE STRUCTURE FOR: categories
#

DROP TABLE IF EXISTS `categories`;

CREATE TABLE `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `uc_categories_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `categories` (`id`, `name`, `created_at`) VALUES (8, 'assumenda', '1970-11-12 12:15:24');
INSERT INTO `categories` (`id`, `name`, `created_at`) VALUES (9, 'explicabo', '2019-08-23 08:52:14');
INSERT INTO `categories` (`id`, `name`, `created_at`) VALUES (10, 'numquam', '1998-11-10 18:26:04');


