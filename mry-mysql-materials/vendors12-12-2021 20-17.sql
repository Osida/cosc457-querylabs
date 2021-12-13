#
# TABLE STRUCTURE FOR: vendors
#

DROP TABLE IF EXISTS `vendors`;

CREATE TABLE `vendors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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


