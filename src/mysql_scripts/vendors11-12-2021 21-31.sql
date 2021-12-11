#
# TABLE STRUCTURE FOR: vendors
#

DROP TABLE IF EXISTS `vendors`;

CREATE TABLE `vendors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_vendors_name` (`name`),
  KEY `idx_vendors_address` (`address`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `vendors` (`id`, `name`, `item`, `phone`, `address`, `created_at`) VALUES (1, 'Beier-Ortiz', 'harum', '1-915-021-0407', '5280 Maggio Forge Suite 320\nKulaston, GA 65650-9478', '1996-08-13 08:50:27');
INSERT INTO `vendors` (`id`, `name`, `item`, `phone`, `address`, `created_at`) VALUES (2, 'Christiansen, Padberg and Sauer', 'et', '1-726-105-1840x', '36940 Elody Hill Suite 744\nWest Barney, NJ 13515-9813', '2001-03-16 00:48:30');
INSERT INTO `vendors` (`id`, `name`, `item`, `phone`, `address`, `created_at`) VALUES (3, 'Stiedemann-Franecki', 'mollitia', '1-059-711-5356', '2881 Sonny Radial Apt. 172\nNorth Bennieburgh, CT 55789', '2005-02-24 17:42:03');
INSERT INTO `vendors` (`id`, `name`, `item`, `phone`, `address`, `created_at`) VALUES (4, 'Klein LLC', 'aut', '(680)257-7505', '141 Kavon Locks Apt. 288\nJorgeview, WY 57128', '1978-10-20 17:02:19');
INSERT INTO `vendors` (`id`, `name`, `item`, `phone`, `address`, `created_at`) VALUES (5, 'Dibbert Ltd', 'reiciendis', '165-348-9034x52', '956 Maxwell Crescent\nDavisstad, ME 28167-3377', '1973-06-26 16:21:58');
INSERT INTO `vendors` (`id`, `name`, `item`, `phone`, `address`, `created_at`) VALUES (6, 'Hettinger-Green', 'debitis', '1-217-426-8262', '0094 Goyette Divide Apt. 020\nMathewburgh, WA 59439-4793', '1998-04-15 06:05:56');
INSERT INTO `vendors` (`id`, `name`, `item`, `phone`, `address`, `created_at`) VALUES (7, 'Halvorson-Runolfsson', 'voluptas', '667.539.5861x29', '00425 Ernesto Drive Suite 731\nBrodyport, TN 90703-6713', '1979-10-26 02:02:38');
INSERT INTO `vendors` (`id`, `name`, `item`, `phone`, `address`, `created_at`) VALUES (8, 'Frami-Wilderman', 'dolorem', '1-802-458-8962x', '3794 Tillman Extensions Apt. 103\nEast Selmer, MT 23015', '2013-04-30 22:22:15');
INSERT INTO `vendors` (`id`, `name`, `item`, `phone`, `address`, `created_at`) VALUES (9, 'Raynor-Rippin', 'quo', '(869)989-7211x3', '5096 Herman Route Apt. 926\nPort Flossie, WY 83367', '1972-12-19 14:21:04');
INSERT INTO `vendors` (`id`, `name`, `item`, `phone`, `address`, `created_at`) VALUES (10, 'Ratke, Kuvalis and Harvey', 'id', '(804)172-0387x0', '648 Rosenbaum Streets\nPort Christop, TN 81134-8306', '2004-06-23 00:38:35');


