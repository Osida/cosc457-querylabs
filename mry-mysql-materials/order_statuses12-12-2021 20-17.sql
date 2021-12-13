#
# TABLE STRUCTURE FOR: order_statuses
#

DROP TABLE IF EXISTS `order_statuses`;

CREATE TABLE `order_statuses` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `order_statuses` (`id`, `name`) VALUES (0, 'iure');
INSERT INTO `order_statuses` (`id`, `name`) VALUES (2, 'nesciunt');
INSERT INTO `order_statuses` (`id`, `name`) VALUES (3, 'eum');


