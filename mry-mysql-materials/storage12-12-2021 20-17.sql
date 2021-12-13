#
# TABLE STRUCTURE FOR: storage
#

DROP TABLE IF EXISTS `storage`;

CREATE TABLE `storage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `uc_storage_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `storage` (`id`, `name`, `created_at`) VALUES (3, 'labore', '2010-12-13 13:13:44');
INSERT INTO `storage` (`id`, `name`, `created_at`) VALUES (4, 'rem', '2018-12-16 11:18:54');
INSERT INTO `storage` (`id`, `name`, `created_at`) VALUES (5, 'consequatur', '2019-06-22 12:37:21');
INSERT INTO `storage` (`id`, `name`, `created_at`) VALUES (6, 'facilis', '1975-07-26 18:04:29');


