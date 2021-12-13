#
# TABLE STRUCTURE FOR: users
#

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `uc_users_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `users` (`id`, `name`, `password`, `created_at`) VALUES (6, 'ut', 'deaa20d66e02c5f020d41f2ad56edcf2d163246e', '1982-03-13 23:07:51');
INSERT INTO `users` (`id`, `name`, `password`, `created_at`) VALUES (7, 'quibusdam', '88660ba11ee513b6ea76fc1cc88f43af5693c9d8', '1971-02-20 19:40:57');


