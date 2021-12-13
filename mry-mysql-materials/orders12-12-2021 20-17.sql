#
# TABLE STRUCTURE FOR: orders
#

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `order_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `order_status` int(11) NOT NULL DEFAULT 1,
  `comments` varchar(2000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipped_date` timestamp NULL DEFAULT NULL,
  `vendor_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_orders_users` (`user_id`),
  KEY `fk_orders_order_statuses` (`order_status`),
  KEY `fk_orders_vendors` (`vendor_id`),
  CONSTRAINT `fk_orders_order_statuses` FOREIGN KEY (`order_status`) REFERENCES `order_statuses` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_orders_users` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_orders_vendors` FOREIGN KEY (`vendor_id`) REFERENCES `vendors` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `orders` (`id`, `user_id`, `order_date`, `order_status`, `comments`, `shipped_date`, `vendor_id`) VALUES (11, 6, '1989-08-05 18:06:30', 0, 'Cum vel fugit possimus molestiae dolor.', '2001-02-01 12:44:34', 12);
INSERT INTO `orders` (`id`, `user_id`, `order_date`, `order_status`, `comments`, `shipped_date`, `vendor_id`) VALUES (12, 7, '1972-01-10 13:40:46', 0, 'Quo nemo enim ut veniam aut.', '1971-09-02 19:38:25', 13);
INSERT INTO `orders` (`id`, `user_id`, `order_date`, `order_status`, `comments`, `shipped_date`, `vendor_id`) VALUES (13, 6, '2010-02-12 18:19:29', 0, 'Iste blanditiis dolor corporis et excepturi.', '1981-05-30 19:12:52', 14);
INSERT INTO `orders` (`id`, `user_id`, `order_date`, `order_status`, `comments`, `shipped_date`, `vendor_id`) VALUES (14, 7, '1987-11-26 01:34:53', 0, 'Et voluptatem et omnis ut vel doloribus et.', '2010-12-26 01:01:39', 15);
INSERT INTO `orders` (`id`, `user_id`, `order_date`, `order_status`, `comments`, `shipped_date`, `vendor_id`) VALUES (15, 6, '1972-08-04 09:49:02', 0, 'Ullam velit quibusdam ipsum neque.', '1982-12-31 10:15:50', 16);
INSERT INTO `orders` (`id`, `user_id`, `order_date`, `order_status`, `comments`, `shipped_date`, `vendor_id`) VALUES (16, 7, '1991-11-28 01:33:14', 0, 'Omnis et ut velit quis nam.', '1991-04-23 13:42:04', 17);
INSERT INTO `orders` (`id`, `user_id`, `order_date`, `order_status`, `comments`, `shipped_date`, `vendor_id`) VALUES (17, 6, '1997-08-28 10:45:20', 0, 'Illum rerum consequatur exercitationem quidem sed sint libero.', '1995-07-27 00:39:35', 18);
INSERT INTO `orders` (`id`, `user_id`, `order_date`, `order_status`, `comments`, `shipped_date`, `vendor_id`) VALUES (18, 7, '1988-02-18 07:13:45', 0, 'Qui autem ducimus quod ut.', '2009-01-12 03:25:15', 19);
INSERT INTO `orders` (`id`, `user_id`, `order_date`, `order_status`, `comments`, `shipped_date`, `vendor_id`) VALUES (19, 6, '2013-09-12 11:54:04', 0, 'Aut et at eos qui nesciunt totam.', '1992-06-25 00:07:02', 20);
INSERT INTO `orders` (`id`, `user_id`, `order_date`, `order_status`, `comments`, `shipped_date`, `vendor_id`) VALUES (20, 7, '1981-12-29 23:17:26', 0, 'Autem error ratione dolor nostrum aut.', '1970-03-19 23:51:46', 21);
INSERT INTO `orders` (`id`, `user_id`, `order_date`, `order_status`, `comments`, `shipped_date`, `vendor_id`) VALUES (21, 6, '1987-12-21 02:08:12', 0, 'Vel nesciunt eius aliquam qui.', '2002-08-02 09:03:11', 12);
INSERT INTO `orders` (`id`, `user_id`, `order_date`, `order_status`, `comments`, `shipped_date`, `vendor_id`) VALUES (22, 7, '1972-02-24 23:24:27', 0, 'Velit ut aut quis qui esse voluptatem atque.', '1993-09-25 03:22:55', 13);
INSERT INTO `orders` (`id`, `user_id`, `order_date`, `order_status`, `comments`, `shipped_date`, `vendor_id`) VALUES (23, 6, '1977-05-24 17:57:09', 0, 'Eveniet voluptas qui a quo rerum et.', '1980-10-20 22:51:53', 14);
INSERT INTO `orders` (`id`, `user_id`, `order_date`, `order_status`, `comments`, `shipped_date`, `vendor_id`) VALUES (24, 7, '2019-03-03 08:44:04', 0, 'Consequatur autem eius numquam dolores culpa.', '1992-07-25 11:16:37', 15);
INSERT INTO `orders` (`id`, `user_id`, `order_date`, `order_status`, `comments`, `shipped_date`, `vendor_id`) VALUES (25, 6, '1981-07-29 23:44:36', 0, 'A et id inventore molestias distinctio minima deserunt.', '1982-08-25 20:23:02', 16);


