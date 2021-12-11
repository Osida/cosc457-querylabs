#
# TABLE STRUCTURE FOR: categories
#

DROP TABLE IF EXISTS `categories`;

CREATE TABLE `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `uc_categories_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `categories` (`id`, `name`, `created_at`) VALUES (1, 'eos', '1989-04-06 17:17:56');
INSERT INTO `categories` (`id`, `name`, `created_at`) VALUES (2, 'ut', '1979-12-12 03:32:42');
INSERT INTO `categories` (`id`, `name`, `created_at`) VALUES (3, 'ea', '2012-10-12 18:18:36');


