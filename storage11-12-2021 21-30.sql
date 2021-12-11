#
# TABLE STRUCTURE FOR: storage
#

DROP TABLE IF EXISTS `storage`;

CREATE TABLE `storage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `uc_storage_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `storage` (`id`, `name`, `created_at`) VALUES (1, 'tempore', '1991-05-18 20:05:31');
INSERT INTO `storage` (`id`, `name`, `created_at`) VALUES (2, 'aperiam', '1988-04-12 11:55:11');


