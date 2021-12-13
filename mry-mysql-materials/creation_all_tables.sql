-- DROP DATABASE IF EXISTS `mry`;
USE  `mry`;

-- DROP TABLE IF EXISTS `vendors`;
CREATE TABLE `vendors` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `item` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_vendors_name` (`name`),
  KEY `idx_vendors_address` (`address`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
INSERT INTO `vendors` (`id`, `name`, `item`, `phone`, `address`, `created_at`) VALUES (12, 'vel', 'sunt', '(249)666-0440', '4615 Molly Camp\nParisianberg, NH 95705-0660', '1989-05-18 00:00:00');
INSERT INTO `vendors` (`id`, `name`, `item`, `phone`, `address`, `created_at`) VALUES (13, 'amet', 'expedita', '719.111.7533', '283 Walton River\nYostberg, RI 76562-8466', '1971-10-12 00:00:00');
INSERT INTO `vendors` (`id`, `name`, `item`, `phone`, `address`, `created_at`) VALUES (14, 'adipisci', 'blanditiis', '(988)247-8576x0', '31573 Cole Skyway Suite 347\nWarrenview, IN 59414', '1974-06-15 00:00:00');
INSERT INTO `vendors` (`id`, `name`, `item`, `phone`, `address`, `created_at`) VALUES (15, 'reprehenderit', 'voluptates', '(071)394-4968x8', '869 O\'Hara Shore\nLake Sydneefurt, LA 53704-8879', '1977-07-23 00:00:00');
INSERT INTO `vendors` (`id`, `name`, `item`, `phone`, `address`, `created_at`) VALUES (16, 'quis', 'et', '(149)051-1490x3', '045 Hettinger Summit Apt. 618\nHicklemouth, NY 34445-3203', '2006-01-08 00:00:00');
INSERT INTO `vendors` (`id`, `name`, `item`, `phone`, `address`, `created_at`) VALUES (17, 'adipisci', 'id', '03196675376', '89328 Bogan Shores Suite 993\nJamaalfurt, GA 16358', '1995-07-05 00:00:00');
INSERT INTO `vendors` (`id`, `name`, `item`, `phone`, `address`, `created_at`) VALUES (18, 'in', 'qui', '780.809.4308x22', '07714 Kohler Brooks\nYundtstad, ND 84779-0029', '2015-08-25 00:00:00');
INSERT INTO `vendors` (`id`, `name`, `item`, `phone`, `address`, `created_at`) VALUES (19, 'eos', 'qui', '1-143-510-1568x', '804 Mateo Coves Apt. 467\nSouth Anyaville, DE 22200-2741', '1980-02-07 00:00:00');
INSERT INTO `vendors` (`id`, `name`, `item`, `phone`, `address`, `created_at`) VALUES (20, 'quo', 'ab', '521.969.8603', '984 Klocko Island\nWest Jamar, WY 31067-3347', '1975-03-24 00:00:00');
INSERT INTO `vendors` (`id`, `name`, `item`, `phone`, `address`, `created_at`) VALUES (21, 'sed', 'aut', '1-507-400-0717', '642 Blair Valley Suite 175\nNew Kaleighshire, AR 02756-6033', '1984-01-04 00:00:00');

-- DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `uc_users_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
INSERT INTO `users` (`id`, `name`, `password`, `created_at`) VALUES (6, 'ut', 'deaa20d66e02c5f020d41f2ad56edcf2d163246e', '1982-03-13 23:07:51');
INSERT INTO `users` (`id`, `name`, `password`, `created_at`) VALUES (7, 'quibusdam', '88660ba11ee513b6ea76fc1cc88f43af5693c9d8', '1971-02-20 19:40:57');

-- DROP TABLE IF EXISTS `storage`;
CREATE TABLE `storage` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `uc_storage_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
INSERT INTO `storage` (`id`, `name`, `created_at`) VALUES (3, 'labore', '2010-12-13 13:13:44');
INSERT INTO `storage` (`id`, `name`, `created_at`) VALUES (4, 'rem', '2018-12-16 11:18:54');
INSERT INTO `storage` (`id`, `name`, `created_at`) VALUES (5, 'consequatur', '2019-06-22 12:37:21');
INSERT INTO `storage` (`id`, `name`, `created_at`) VALUES (6, 'facilis', '1975-07-26 18:04:29');

-- DROP TABLE IF EXISTS `order_statuses`;
CREATE TABLE `order_statuses` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
INSERT INTO `order_statuses` (`id`, `name`) VALUES (1,'Processed');
INSERT INTO `order_statuses` (`id`, `name`) VALUES (2,'Shipped');
INSERT INTO `order_statuses` (`id`, `name`) VALUES (3,'Delivered');

-- DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `uc_categories_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
INSERT INTO `categories` (`id`, `name`, `created_at`) VALUES (8, 'assumenda', '1970-11-12 12:15:24');
INSERT INTO `categories` (`id`, `name`, `created_at`) VALUES (9, 'explicabo', '2019-08-23 08:52:14');
INSERT INTO `categories` (`id`, `name`, `created_at`) VALUES (10, 'numquam', '1998-11-10 18:26:04');

-- DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `order_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `order_status` int NOT NULL DEFAULT 1,
  `comments` varchar(2000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipped_date` timestamp NULL DEFAULT NULL,
  `vendor_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_orders_users` (`user_id`),
  KEY `fk_orders_order_statuses` (`order_status`),
  KEY `fk_orders_vendors` (`vendor_id`),
  CONSTRAINT `fk_orders_order_statuses` FOREIGN KEY (`order_status`) REFERENCES `order_statuses` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_orders_users` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_orders_vendors` FOREIGN KEY (`vendor_id`) REFERENCES `vendors` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
-- INSERT INTO `orders` (`id`, `user_id`, `order_date`, `order_status`, `comments`, `shipped_date`, `vendor_id`) VALUES (11, 6, '1989-08-05 18:06:30', 0, 'Cum vel fugit possimus molestiae dolor.', '2001-02-01 12:44:34', 12);
-- INSERT INTO `orders` (`id`, `user_id`, `order_date`, `order_status`, `comments`, `shipped_date`, `vendor_id`) VALUES (12, 7, '1972-01-10 13:40:46', 0, 'Quo nemo enim ut veniam aut.', '1971-09-02 19:38:25', 13);
-- INSERT INTO `orders` (`id`, `user_id`, `order_date`, `order_status`, `comments`, `shipped_date`, `vendor_id`) VALUES (13, 6, '2010-02-12 18:19:29', 0, 'Iste blanditiis dolor corporis et excepturi.', '1981-05-30 19:12:52', 14);
-- INSERT INTO `orders` (`id`, `user_id`, `order_date`, `order_status`, `comments`, `shipped_date`, `vendor_id`) VALUES (14, 7, '1987-11-26 01:34:53', 0, 'Et voluptatem et omnis ut vel doloribus et.', '2010-12-26 01:01:39', 15);
-- INSERT INTO `orders` (`id`, `user_id`, `order_date`, `order_status`, `comments`, `shipped_date`, `vendor_id`) VALUES (15, 6, '1972-08-04 09:49:02', 0, 'Ullam velit quibusdam ipsum neque.', '1982-12-31 10:15:50', 16);
-- INSERT INTO `orders` (`id`, `user_id`, `order_date`, `order_status`, `comments`, `shipped_date`, `vendor_id`) VALUES (16, 7, '1991-11-28 01:33:14', 0, 'Omnis et ut velit quis nam.', '1991-04-23 13:42:04', 17);
-- INSERT INTO `orders` (`id`, `user_id`, `order_date`, `order_status`, `comments`, `shipped_date`, `vendor_id`) VALUES (17, 6, '1997-08-28 10:45:20', 0, 'Illum rerum consequatur exercitationem quidem sed sint libero.', '1995-07-27 00:39:35', 18);
-- INSERT INTO `orders` (`id`, `user_id`, `order_date`, `order_status`, `comments`, `shipped_date`, `vendor_id`) VALUES (18, 7, '1988-02-18 07:13:45', 0, 'Qui autem ducimus quod ut.', '2009-01-12 03:25:15', 19);
-- INSERT INTO `orders` (`id`, `user_id`, `order_date`, `order_status`, `comments`, `shipped_date`, `vendor_id`) VALUES (19, 6, '2013-09-12 11:54:04', 0, 'Aut et at eos qui nesciunt totam.', '1992-06-25 00:07:02', 20);
-- INSERT INTO `orders` (`id`, `user_id`, `order_date`, `order_status`, `comments`, `shipped_date`, `vendor_id`) VALUES (20, 7, '1981-12-29 23:17:26', 0, 'Autem error ratione dolor nostrum aut.', '1970-03-19 23:51:46', 21);
-- INSERT INTO `orders` (`id`, `user_id`, `order_date`, `order_status`, `comments`, `shipped_date`, `vendor_id`) VALUES (21, 6, '1987-12-21 02:08:12', 0, 'Vel nesciunt eius aliquam qui.', '2002-08-02 09:03:11', 12);
-- INSERT INTO `orders` (`id`, `user_id`, `order_date`, `order_status`, `comments`, `shipped_date`, `vendor_id`) VALUES (22, 7, '1972-02-24 23:24:27', 0, 'Velit ut aut quis qui esse voluptatem atque.', '1993-09-25 03:22:55', 13);
-- INSERT INTO `orders` (`id`, `user_id`, `order_date`, `order_status`, `comments`, `shipped_date`, `vendor_id`) VALUES (23, 6, '1977-05-24 17:57:09', 0, 'Eveniet voluptas qui a quo rerum et.', '1980-10-20 22:51:53', 14);
-- INSERT INTO `orders` (`id`, `user_id`, `order_date`, `order_status`, `comments`, `shipped_date`, `vendor_id`) VALUES (24, 7, '2019-03-03 08:44:04', 0, 'Consequatur autem eius numquam dolores culpa.', '1992-07-25 11:16:37', 15);
-- INSERT INTO `orders` (`id`, `user_id`, `order_date`, `order_status`, `comments`, `shipped_date`, `vendor_id`) VALUES (25, 6, '1981-07-29 23:44:36', 0, 'A et id inventore molestias distinctio minima deserunt.', '1982-08-25 20:23:02', 16);

-- DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `vendor_id` int NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `qty` int NOT NULL,
  `description` varchar(2000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` decimal(4,2) NOT NULL,
  `unit_measure` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `storage_id` int NOT NULL,
  `categorie_id` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `fk_products_vendors` (`vendor_id`),
  KEY `fk_products_storage` (`storage_id`),
  KEY `fk_products_categories` (`categorie_id`),
  KEY `idx_products_name` (`name`),
  KEY `idx_products_price` (`price`),
  KEY `idx_products_unit_measure` (`unit_measure`),
  CONSTRAINT `fk_products_categories` FOREIGN KEY (`categorie_id`) REFERENCES `categories` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_products_storage` FOREIGN KEY (`storage_id`) REFERENCES `storage` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_products_vendors` FOREIGN KEY (`vendor_id`) REFERENCES `vendors` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
INSERT INTO `products` (`id`, `vendor_id`, `name`, `qty`, `description`, `price`, `unit_measure`, `storage_id`, `categorie_id`, `created_at`) VALUES (26, 12, 'necessitatibus', 0, 'Accusantium hic mollitia animi beatae magni ea. Est aut non et. Voluptatem et mollitia et. Iure sed odit veritatis laboriosam consectetur autem.', '46.19', 'dolor', 3, 8, '1970-07-18 10:47:27');
INSERT INTO `products` (`id`, `vendor_id`, `name`, `qty`, `description`, `price`, `unit_measure`, `storage_id`, `categorie_id`, `created_at`) VALUES (27, 13, 'fugiat', 3397570, 'Consequatur officiis recusandae totam quo aut. Totam quae quae sunt officiis magni doloremque. Neque nam alias esse voluptas iste. Ratione rerum dignissimos veritatis.', '99.99', 'volup', 4, 9, '2008-11-21 09:49:50');
INSERT INTO `products` (`id`, `vendor_id`, `name`, `qty`, `description`, `price`, `unit_measure`, `storage_id`, `categorie_id`, `created_at`) VALUES (28, 14, 'corporis', 208, 'Qui repudiandae illum veniam eius. Non et perferendis repellat quo. Soluta cum et quibusdam doloribus iure. Cumque labore vel quae et qui libero. Quo rerum quia perferendis libero nisi distinctio.', '99.99', 'commo', 5, 10, '1985-04-22 19:27:45');
INSERT INTO `products` (`id`, `vendor_id`, `name`, `qty`, `description`, `price`, `unit_measure`, `storage_id`, `categorie_id`, `created_at`) VALUES (29, 15, 'dolor', 89, 'Est cum similique impedit ea vitae pariatur dolore. Porro non sunt sit iure. Non vero doloribus dignissimos sunt est nesciunt.', '1.97', 'maxim', 6, 8, '2019-08-13 19:46:56');
INSERT INTO `products` (`id`, `vendor_id`, `name`, `qty`, `description`, `price`, `unit_measure`, `storage_id`, `categorie_id`, `created_at`) VALUES (30, 16, 'commodi', 9920834, 'Animi sint nulla quod illum architecto veniam voluptas. Ut id possimus quia. Similique dolores nihil voluptatem est debitis et. Omnis quia dolorem vel accusantium sint.', '99.99', 'et', 3, 9, '1971-10-03 22:49:20');
INSERT INTO `products` (`id`, `vendor_id`, `name`, `qty`, `description`, `price`, `unit_measure`, `storage_id`, `categorie_id`, `created_at`) VALUES (31, 17, 'ut', 1171652, 'Omnis culpa aut occaecati accusamus. Sit ut enim eligendi. Recusandae quo recusandae consequuntur voluptatibus id eos sapiente.', '0.00', 'dolor', 4, 10, '1986-08-11 10:28:02');
INSERT INTO `products` (`id`, `vendor_id`, `name`, `qty`, `description`, `price`, `unit_measure`, `storage_id`, `categorie_id`, `created_at`) VALUES (32, 18, 'temporibus', 387904768, 'Omnis quis maxime qui eos omnis illum. Est dolorem officiis eaque exercitationem omnis non quae. Blanditiis ab debitis vitae delectus animi qui rem eveniet.', '99.99', 'rerum', 5, 8, '2007-04-09 18:35:02');
INSERT INTO `products` (`id`, `vendor_id`, `name`, `qty`, `description`, `price`, `unit_measure`, `storage_id`, `categorie_id`, `created_at`) VALUES (33, 19, 'minus', 9, 'Placeat possimus autem ipsam enim velit minus velit deleniti. Et vel voluptatem nobis rerum. Aut enim blanditiis tempora aperiam non reprehenderit voluptatem.', '99.99', 'quod', 6, 9, '1990-12-21 17:16:38');
INSERT INTO `products` (`id`, `vendor_id`, `name`, `qty`, `description`, `price`, `unit_measure`, `storage_id`, `categorie_id`, `created_at`) VALUES (34, 20, 'et', 814910, 'Perferendis sit aspernatur pariatur omnis. Consequuntur dolore sint nihil odit tempore tenetur. Exercitationem sed et est reprehenderit aut necessitatibus neque. Et dolorem aperiam quia.', '0.00', 'porro', 3, 10, '1981-05-20 08:20:30');
INSERT INTO `products` (`id`, `vendor_id`, `name`, `qty`, `description`, `price`, `unit_measure`, `storage_id`, `categorie_id`, `created_at`) VALUES (35, 21, 'qui', 434, 'Nemo sint aut et quo. Temporibus maxime aliquid totam et optio voluptate aspernatur dolores.', '1.30', 'excep', 4, 8, '2012-02-13 13:31:28');
INSERT INTO `products` (`id`, `vendor_id`, `name`, `qty`, `description`, `price`, `unit_measure`, `storage_id`, `categorie_id`, `created_at`) VALUES (36, 12, 'dolore', 374, 'Unde et quisquam blanditiis. Cumque quis harum aut cum ut commodi et. Placeat adipisci eligendi necessitatibus consequatur dicta qui sunt. Sint dignissimos voluptatem et consequatur aut laboriosam quam.', '0.00', 'volup', 5, 9, '1988-05-22 08:30:27');
INSERT INTO `products` (`id`, `vendor_id`, `name`, `qty`, `description`, `price`, `unit_measure`, `storage_id`, `categorie_id`, `created_at`) VALUES (37, 13, 'ut', 968218, 'Vel debitis nemo et magni omnis est. Vel ratione in ut laborum. Voluptatem soluta vel commodi nulla perspiciatis. Et occaecati officiis ut cupiditate excepturi recusandae.', '99.99', 'eveni', 6, 10, '1991-02-28 12:35:05');
INSERT INTO `products` (`id`, `vendor_id`, `name`, `qty`, `description`, `price`, `unit_measure`, `storage_id`, `categorie_id`, `created_at`) VALUES (38, 14, 'corporis', 8, 'Blanditiis officiis nesciunt in illo cupiditate ut vero. Earum aut nobis non. Cum ab nesciunt corporis est. Odio quam minima ut et numquam. Deleniti vel non velit quo aut.', '99.99', 'incid', 3, 8, '1998-05-25 12:06:42');
INSERT INTO `products` (`id`, `vendor_id`, `name`, `qty`, `description`, `price`, `unit_measure`, `storage_id`, `categorie_id`, `created_at`) VALUES (39, 15, 'occaecati', 6395, 'Nobis ea optio possimus quia ipsam qui molestias voluptate. Est sint et cupiditate ad minima architecto mollitia. Voluptatem et ea nulla eos modi est.', '99.99', 'porro', 4, 9, '2008-12-15 11:51:06');
INSERT INTO `products` (`id`, `vendor_id`, `name`, `qty`, `description`, `price`, `unit_measure`, `storage_id`, `categorie_id`, `created_at`) VALUES (40, 16, 'harum', 86795934, 'Pariatur sequi reiciendis voluptates voluptatem sed. Rem nihil aliquam non aut id. Quaerat non optio voluptatem id doloremque. In rerum ea nisi similique dolor est rerum.', '77.60', 'bland', 5, 10, '1993-05-19 07:52:48');
INSERT INTO `products` (`id`, `vendor_id`, `name`, `qty`, `description`, `price`, `unit_measure`, `storage_id`, `categorie_id`, `created_at`) VALUES (41, 17, 'sit', 636314805, 'Expedita laudantium quae consequatur modi repellat labore dolores quia. Asperiores veritatis consequatur odio. Pariatur aut quae autem animi esse et praesentium. Facilis occaecati commodi voluptas expedita.', '99.99', 'saepe', 6, 8, '1985-01-21 23:40:29');
INSERT INTO `products` (`id`, `vendor_id`, `name`, `qty`, `description`, `price`, `unit_measure`, `storage_id`, `categorie_id`, `created_at`) VALUES (42, 18, 'omnis', 619263867, 'Qui id optio cupiditate nobis. Ducimus quia et et. Quo magni adipisci sit iusto enim ut recusandae. Quia cum deleniti repellendus qui.', '99.99', 'volup', 3, 9, '1990-01-22 15:25:23');
INSERT INTO `products` (`id`, `vendor_id`, `name`, `qty`, `description`, `price`, `unit_measure`, `storage_id`, `categorie_id`, `created_at`) VALUES (43, 19, 'cupiditate', 2635997, 'Sit tempora dolores aut accusantium deleniti. Nihil ea tempora id. Autem perferendis ut aut qui maxime deserunt hic fugiat.', '99.99', 'offic', 4, 10, '1997-08-13 22:52:22');
INSERT INTO `products` (`id`, `vendor_id`, `name`, `qty`, `description`, `price`, `unit_measure`, `storage_id`, `categorie_id`, `created_at`) VALUES (44, 20, 'cumque', 9, 'Quisquam ut repellendus qui sunt nostrum vero eligendi. Qui nam harum quaerat quisquam eos recusandae ut sed. Officia sapiente quo iure rerum cum.', '99.99', 'labor', 5, 8, '1992-04-04 15:10:50');
INSERT INTO `products` (`id`, `vendor_id`, `name`, `qty`, `description`, `price`, `unit_measure`, `storage_id`, `categorie_id`, `created_at`) VALUES (45, 21, 'saepe', 580, 'Ratione quisquam quo nihil ut dolore sed aliquam. Esse repudiandae officia dolorum. Nostrum dolorum alias ducimus vel rem quia consectetur quasi.', '42.53', 'et', 6, 9, '2019-08-08 03:45:50');
INSERT INTO `products` (`id`, `vendor_id`, `name`, `qty`, `description`, `price`, `unit_measure`, `storage_id`, `categorie_id`, `created_at`) VALUES (46, 12, 'est', 7412, 'Odio autem sapiente iste. Pariatur maxime sed aut voluptas enim est minus. Magnam facilis et sint nobis accusamus qui. Consequatur consequatur sit repudiandae vel occaecati.', '99.99', 'vitae', 3, 10, '2000-02-11 20:00:21');
INSERT INTO `products` (`id`, `vendor_id`, `name`, `qty`, `description`, `price`, `unit_measure`, `storage_id`, `categorie_id`, `created_at`) VALUES (47, 13, 'incidunt', 8617045, 'Officia ipsa vitae fugit eum sint reprehenderit repellendus. Nulla est placeat quam. Qui maxime temporibus debitis quis sunt.', '99.99', 'eum', 4, 8, '2015-11-12 04:45:22');
INSERT INTO `products` (`id`, `vendor_id`, `name`, `qty`, `description`, `price`, `unit_measure`, `storage_id`, `categorie_id`, `created_at`) VALUES (48, 14, 'quam', 7744, 'Ab atque accusamus maxime. Cum est et qui cum incidunt. Aut vitae sed saepe eos eos quia.', '99.99', 'cupid', 5, 9, '2016-12-12 04:04:33');
INSERT INTO `products` (`id`, `vendor_id`, `name`, `qty`, `description`, `price`, `unit_measure`, `storage_id`, `categorie_id`, `created_at`) VALUES (49, 15, 'hic', 0, 'Consectetur at beatae ea voluptas iste at. Error numquam ut animi voluptas voluptatem. Dolor et praesentium corrupti autem modi eos. Exercitationem quae est optio ex illo necessitatibus velit. Ipsum earum qui impedit.', '0.00', 'omnis', 6, 10, '2004-03-31 10:54:19');
INSERT INTO `products` (`id`, `vendor_id`, `name`, `qty`, `description`, `price`, `unit_measure`, `storage_id`, `categorie_id`, `created_at`) VALUES (50, 16, 'vero', 9837, 'Autem minus dolore ut voluptatem unde molestiae sit. Vero dolor harum enim modi quia maiores voluptates est. Voluptatem harum aspernatur perspiciatis magni ipsum aut. Perspiciatis sint delectus rerum consequatur voluptates omnis.', '99.99', 'sed', 3, 8, '1988-02-06 10:55:53');
INSERT INTO `products` (`id`, `vendor_id`, `name`, `qty`, `description`, `price`, `unit_measure`, `storage_id`, `categorie_id`, `created_at`) VALUES (51, 17, 'et', 77876470, 'Ipsa qui dolores vero atque a. Minus possimus est ea accusamus qui qui. Qui voluptatum minima molestiae maxime magni rerum dolorem. Eum quia dolores impedit quo corrupti repellat.', '8.25', 'nam', 4, 9, '1985-02-17 00:59:54');
INSERT INTO `products` (`id`, `vendor_id`, `name`, `qty`, `description`, `price`, `unit_measure`, `storage_id`, `categorie_id`, `created_at`) VALUES (52, 18, 'doloremque', 65280591, 'Soluta sint culpa est minus reprehenderit aliquam. Dolorem fugit provident consectetur earum. Dolore aut explicabo repudiandae et dignissimos dolore. Laborum velit suscipit voluptas.', '99.99', 'magna', 5, 10, '1983-01-05 13:26:26');
INSERT INTO `products` (`id`, `vendor_id`, `name`, `qty`, `description`, `price`, `unit_measure`, `storage_id`, `categorie_id`, `created_at`) VALUES (53, 19, 'illo', 4195, 'Vitae debitis ab non enim sit voluptas provident. Perspiciatis molestiae inventore facilis officiis molestias. Nobis autem quia quo velit ratione. Minima quisquam quo occaecati.', '1.40', 'quia', 6, 8, '2014-01-21 17:17:29');
INSERT INTO `products` (`id`, `vendor_id`, `name`, `qty`, `description`, `price`, `unit_measure`, `storage_id`, `categorie_id`, `created_at`) VALUES (54, 20, 'praesentium', 2370, 'Est blanditiis recusandae nobis ut illo amet. Quis fuga et fugit vel. Est quisquam delectus libero. Cum vitae itaque provident temporibus autem in. Dolorum tempore et est blanditiis sint culpa non.', '99.99', 'moles', 3, 9, '1980-01-18 23:21:04');
INSERT INTO `products` (`id`, `vendor_id`, `name`, `qty`, `description`, `price`, `unit_measure`, `storage_id`, `categorie_id`, `created_at`) VALUES (55, 21, 'ratione', 833, 'Rerum impedit dolor molestiae et aspernatur aut. Incidunt quidem blanditiis non architecto sunt eligendi ipsum. Facere possimus deleniti est. Et sequi commodi ipsam quibusdam eligendi nihil.', '99.99', 'accus', 4, 10, '1996-05-14 06:03:25');
INSERT INTO `products` (`id`, `vendor_id`, `name`, `qty`, `description`, `price`, `unit_measure`, `storage_id`, `categorie_id`, `created_at`) VALUES (56, 12, 'in', 3, 'Dolorem dicta odit nobis minima porro fugit. Quae id est et et facere porro. Nemo et nulla autem doloremque exercitationem. A facere error libero beatae.', '99.99', 'aut', 5, 8, '1999-09-08 05:50:15');
INSERT INTO `products` (`id`, `vendor_id`, `name`, `qty`, `description`, `price`, `unit_measure`, `storage_id`, `categorie_id`, `created_at`) VALUES (57, 13, 'dolor', 3805, 'Ut beatae nihil et officia iusto natus. Velit et harum modi eos ab nihil laudantium.', '99.99', 'place', 6, 9, '2003-08-05 20:48:01');
INSERT INTO `products` (`id`, `vendor_id`, `name`, `qty`, `description`, `price`, `unit_measure`, `storage_id`, `categorie_id`, `created_at`) VALUES (58, 14, 'et', 5435112, 'Earum dolores ex aliquid in placeat nemo molestiae voluptas. Harum sit sint quae consequatur exercitationem. Sed accusantium dolorem voluptatem et rerum.', '99.99', 'corpo', 3, 10, '1986-04-10 01:28:41');
INSERT INTO `products` (`id`, `vendor_id`, `name`, `qty`, `description`, `price`, `unit_measure`, `storage_id`, `categorie_id`, `created_at`) VALUES (59, 15, 'doloremque', 95, 'Fuga voluptatem assumenda pariatur ullam consequatur veritatis fugiat. Quos aut beatae provident ipsum. Perferendis ea qui a quis mollitia. Eum aut reprehenderit quam fuga.', '99.99', 'simil', 4, 8, '1973-10-07 13:55:05');
INSERT INTO `products` (`id`, `vendor_id`, `name`, `qty`, `description`, `price`, `unit_measure`, `storage_id`, `categorie_id`, `created_at`) VALUES (60, 16, 'sed', 0, 'Nobis aliquid et saepe voluptatem sed ut nesciunt. Maxime non doloribus rerum magnam. Nemo qui quisquam dolorem velit et vitae.', '0.00', 'et', 5, 9, '2016-04-14 01:13:43');
INSERT INTO `products` (`id`, `vendor_id`, `name`, `qty`, `description`, `price`, `unit_measure`, `storage_id`, `categorie_id`, `created_at`) VALUES (61, 17, 'autem', 98410575, 'Temporibus occaecati impedit architecto deleniti iure ut nihil omnis. Labore eos rerum officiis. Ut asperiores quas minus neque voluptates corrupti.', '71.23', 'velit', 6, 10, '1991-11-01 11:33:44');
INSERT INTO `products` (`id`, `vendor_id`, `name`, `qty`, `description`, `price`, `unit_measure`, `storage_id`, `categorie_id`, `created_at`) VALUES (62, 18, 'ullam', 0, 'Earum cupiditate recusandae porro commodi maxime quam quas. Non animi quas doloribus omnis fugit aut voluptatem. Deserunt qui voluptatem harum enim nesciunt cum aut. Facere harum amet et voluptates dignissimos odio quae corporis.', '0.00', 'id', 3, 8, '2020-07-11 09:04:22');
INSERT INTO `products` (`id`, `vendor_id`, `name`, `qty`, `description`, `price`, `unit_measure`, `storage_id`, `categorie_id`, `created_at`) VALUES (63, 19, 'molestiae', 75, 'Et debitis ducimus eum itaque voluptatem. Ullam aut quo nisi molestiae quas saepe sed aut. Maxime reiciendis ducimus temporibus sint. Quis culpa adipisci sit magni temporibus maxime ut nihil.', '51.97', 'aperi', 4, 9, '2006-07-21 10:30:38');
INSERT INTO `products` (`id`, `vendor_id`, `name`, `qty`, `description`, `price`, `unit_measure`, `storage_id`, `categorie_id`, `created_at`) VALUES (64, 20, 'architecto', 85, 'Voluptatem voluptate et voluptatem ipsa dicta ut. Laudantium at eveniet impedit numquam aut. Quia dignissimos ut facere dolorem. Qui cumque hic nihil repudiandae et tempore.', '99.99', 'velit', 5, 10, '2015-02-09 11:43:48');
INSERT INTO `products` (`id`, `vendor_id`, `name`, `qty`, `description`, `price`, `unit_measure`, `storage_id`, `categorie_id`, `created_at`) VALUES (65, 21, 'eos', 34536129, 'Vel quo est ut modi. Consequuntur qui assumenda asperiores. Cupiditate sed qui voluptas temporibus aperiam numquam.', '99.99', 'repud', 6, 8, '2002-07-08 11:29:12');
INSERT INTO `products` (`id`, `vendor_id`, `name`, `qty`, `description`, `price`, `unit_measure`, `storage_id`, `categorie_id`, `created_at`) VALUES (66, 12, 'rem', 972062, 'Doloremque delectus laudantium error deleniti ipsam eius. Totam doloremque rerum at commodi minima nobis asperiores. Sed accusamus ea provident.', '8.74', 'assum', 3, 9, '2005-06-25 07:08:18');
INSERT INTO `products` (`id`, `vendor_id`, `name`, `qty`, `description`, `price`, `unit_measure`, `storage_id`, `categorie_id`, `created_at`) VALUES (67, 13, 'eos', 5, 'Nihil sint praesentium vero autem. Et facilis rerum nihil sit enim totam. Laboriosam aliquam repellendus repellat quia numquam non. A eum ea ut eum.', '99.99', 'volup', 4, 10, '2010-05-15 00:11:07');
INSERT INTO `products` (`id`, `vendor_id`, `name`, `qty`, `description`, `price`, `unit_measure`, `storage_id`, `categorie_id`, `created_at`) VALUES (68, 14, 'voluptates', 2402, 'Eum asperiores sint porro et officia ut. Atque quia porro fugit aut hic.', '99.99', 'eaque', 5, 8, '2009-06-11 05:58:24');
INSERT INTO `products` (`id`, `vendor_id`, `name`, `qty`, `description`, `price`, `unit_measure`, `storage_id`, `categorie_id`, `created_at`) VALUES (69, 15, 'accusamus', 180878, 'Nihil occaecati tempore sint repellendus reiciendis non quisquam. Eaque quas non deleniti libero omnis molestiae ullam. Facilis eaque impedit et. Ducimus earum cum accusamus totam eveniet ipsam.', '99.99', 'minus', 6, 9, '2008-06-26 11:34:33');
INSERT INTO `products` (`id`, `vendor_id`, `name`, `qty`, `description`, `price`, `unit_measure`, `storage_id`, `categorie_id`, `created_at`) VALUES (70, 16, 'blanditiis', 762, 'Qui consequatur asperiores est qui. Et nesciunt eos laudantium itaque omnis iusto. Impedit facere perferendis atque ipsa nostrum.', '99.99', 'tenet', 3, 10, '2004-12-02 06:09:48');
INSERT INTO `products` (`id`, `vendor_id`, `name`, `qty`, `description`, `price`, `unit_measure`, `storage_id`, `categorie_id`, `created_at`) VALUES (71, 17, 'alias', 5593, 'Voluptas deleniti quia sed alias voluptatibus. Eum neque et sit dolor totam velit. Molestiae et a facilis voluptates officiis.', '0.00', 'et', 4, 8, '2010-05-23 06:39:42');
INSERT INTO `products` (`id`, `vendor_id`, `name`, `qty`, `description`, `price`, `unit_measure`, `storage_id`, `categorie_id`, `created_at`) VALUES (72, 18, 'eum', 3542, 'Iusto at autem sequi. Iste maxime omnis veritatis quo molestias aut adipisci. Esse impedit sapiente aut harum doloribus ratione. Consequatur est recusandae temporibus omnis.', '0.00', 'corru', 5, 9, '1981-06-24 16:15:20');
INSERT INTO `products` (`id`, `vendor_id`, `name`, `qty`, `description`, `price`, `unit_measure`, `storage_id`, `categorie_id`, `created_at`) VALUES (73, 19, 'aliquam', 33175, 'Sint possimus beatae rem tempora non at. Ipsum voluptatem non sit dolore quia totam labore. Expedita aperiam id velit quia praesentium sit nobis.', '99.99', 'dolor', 6, 10, '2017-12-25 19:29:56');
INSERT INTO `products` (`id`, `vendor_id`, `name`, `qty`, `description`, `price`, `unit_measure`, `storage_id`, `categorie_id`, `created_at`) VALUES (74, 20, 'ipsum', 546443439, 'Veritatis ut corrupti officiis sunt ut placeat. Veritatis iusto molestias nesciunt qui. Nam rerum sint debitis animi praesentium.', '99.99', 'corru', 3, 8, '2001-06-04 00:15:19');
INSERT INTO `products` (`id`, `vendor_id`, `name`, `qty`, `description`, `price`, `unit_measure`, `storage_id`, `categorie_id`, `created_at`) VALUES (75, 21, 'impedit', 712342355, 'Voluptatibus tempora ipsum et ut ut accusamus. Numquam sunt quia occaecati est. Soluta neque magnam repudiandae qui quia quo.', '99.99', 'qui', 4, 9, '1991-08-18 22:30:48');

-- DROP TABLE IF EXISTS `order_items`;
CREATE TABLE `order_items` (
  `order_id` int NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `qty` int NOT NULL,
  `unit_price` decimal(4,2) NOT NULL,
  `total_price` decimal(4,2) NULL,
  CONSTRAINT `fk_order_items_orders` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_order_items_products` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
INSERT INTO `order_items` VALUES (1,26,4,3.74,14.96);
INSERT INTO `order_items` VALUES (1,28,8,3.74,29.92);