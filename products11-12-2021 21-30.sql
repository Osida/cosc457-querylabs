#
# TABLE STRUCTURE FOR: products
#

DROP TABLE IF EXISTS `products`;

CREATE TABLE `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vendor_id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` int(11) NOT NULL,
  `description` varchar(2000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` decimal(4,2) NOT NULL,
  `unit_measure` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `storage_id` int(11) NOT NULL,
  `categorie_id` int(11) NOT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `products` (`id`, `vendor_id`, `name`, `qty`, `description`, `price`, `unit_measure`, `storage_id`, `categorie_id`, `created_at`) VALUES (1, 1, 'vel', 8206, 'Eum ut a sit et. Repudiandae reiciendis officia deleniti. Reprehenderit quas et consequatur nostrum est sed. Quia laudantium aut eligendi aut sed aut. Aut minus qui debitis.', '0.44', 'in', 1, 1, '1995-11-02 00:53:57');
INSERT INTO `products` (`id`, `vendor_id`, `name`, `qty`, `description`, `price`, `unit_measure`, `storage_id`, `categorie_id`, `created_at`) VALUES (2, 2, 'autem', 448, 'Et ut molestiae corrupti eum aut. Quo iure quae laudantium distinctio harum voluptatem. Dolor vel et recusandae corporis nihil rerum dolor. Commodi quis autem impedit neque.', '0.00', 'et', 2, 2, '2009-09-02 04:57:58');
INSERT INTO `products` (`id`, `vendor_id`, `name`, `qty`, `description`, `price`, `unit_measure`, `storage_id`, `categorie_id`, `created_at`) VALUES (3, 3, 'et', 67, 'Ab praesentium fuga est perspiciatis et ducimus. Et dignissimos nisi error iste dolor. Rerum fugiat hic deleniti officia alias. Quibusdam velit et sunt sunt.', '29.04', 'imped', 1, 3, '2011-07-11 22:55:56');
INSERT INTO `products` (`id`, `vendor_id`, `name`, `qty`, `description`, `price`, `unit_measure`, `storage_id`, `categorie_id`, `created_at`) VALUES (4, 4, 'et', 95759371, 'Ad ut rerum mollitia et quis. Qui atque aperiam quis dicta. Iusto autem consequuntur unde sequi. Et fugiat eum nulla et magni magnam.', '99.99', 'est', 2, 1, '2007-06-04 09:43:40');
INSERT INTO `products` (`id`, `vendor_id`, `name`, `qty`, `description`, `price`, `unit_measure`, `storage_id`, `categorie_id`, `created_at`) VALUES (5, 5, 'in', 11, 'Quam optio illo aut officiis nostrum reiciendis iusto alias. Delectus molestiae dolores sint iure voluptas. Dolore placeat tempore corrupti. Qui sit qui illo eos nisi suscipit commodi. Eos aut suscipit et enim.', '1.14', 'omnis', 1, 2, '2021-01-23 05:47:35');
INSERT INTO `products` (`id`, `vendor_id`, `name`, `qty`, `description`, `price`, `unit_measure`, `storage_id`, `categorie_id`, `created_at`) VALUES (6, 6, 'et', 78118, 'Aliquid vel ut et. Id ullam non fugit labore eos. Et voluptate et aut ut qui id eaque aut. Adipisci iure sit voluptate non. Assumenda illum ducimus suscipit nihil expedita.', '99.99', 'qui', 2, 3, '2014-10-24 04:23:58');
INSERT INTO `products` (`id`, `vendor_id`, `name`, `qty`, `description`, `price`, `unit_measure`, `storage_id`, `categorie_id`, `created_at`) VALUES (7, 7, 'voluptatem', 1, 'Fuga rerum modi sed libero velit accusamus ipsa. Sed minus molestiae dolorum ut incidunt quas. Aut qui quibusdam porro rerum sunt optio ut. Voluptatem temporibus vero expedita aut dignissimos magnam.', '99.99', 'nisi', 1, 1, '1997-03-16 15:42:23');
INSERT INTO `products` (`id`, `vendor_id`, `name`, `qty`, `description`, `price`, `unit_measure`, `storage_id`, `categorie_id`, `created_at`) VALUES (8, 8, 'optio', 467, 'Et et rerum assumenda incidunt. Dolor dicta commodi quasi in quo aperiam molestiae quidem. Quia sint expedita dolorum accusamus ut eaque enim voluptas. Aliquam quisquam doloremque qui aut vel velit excepturi.', '99.99', 'omnis', 2, 2, '2015-01-18 01:22:00');
INSERT INTO `products` (`id`, `vendor_id`, `name`, `qty`, `description`, `price`, `unit_measure`, `storage_id`, `categorie_id`, `created_at`) VALUES (9, 9, 'vel', 6595956, 'Suscipit omnis in incidunt tempora tenetur quaerat odio. Tempora quas in itaque optio.', '99.99', 'et', 1, 3, '1985-09-17 09:22:10');
INSERT INTO `products` (`id`, `vendor_id`, `name`, `qty`, `description`, `price`, `unit_measure`, `storage_id`, `categorie_id`, `created_at`) VALUES (10, 10, 'aperiam', 832, 'Dolore odio quo quod provident. Consectetur non autem officia illum. Explicabo deleniti consequatur vel cum culpa molestiae culpa. Unde culpa perferendis ut molestiae alias ut.', '99.99', 'inven', 2, 1, '1995-03-09 23:49:43');
INSERT INTO `products` (`id`, `vendor_id`, `name`, `qty`, `description`, `price`, `unit_measure`, `storage_id`, `categorie_id`, `created_at`) VALUES (11, 1, 'distinctio', 53, 'Nostrum expedita dignissimos aperiam id aperiam. Sed repellat sapiente aliquam est. Deleniti aut voluptatem reiciendis.', '99.99', 'tempo', 1, 2, '2012-01-14 18:54:43');
INSERT INTO `products` (`id`, `vendor_id`, `name`, `qty`, `description`, `price`, `unit_measure`, `storage_id`, `categorie_id`, `created_at`) VALUES (12, 2, 'nemo', 40, 'Magnam dolor minima eaque et illo. Accusantium eveniet qui et provident natus. Omnis sapiente molestiae voluptates rerum qui. Totam eius labore sunt facilis a.', '99.99', 'ut', 2, 3, '2010-08-31 09:05:15');
INSERT INTO `products` (`id`, `vendor_id`, `name`, `qty`, `description`, `price`, `unit_measure`, `storage_id`, `categorie_id`, `created_at`) VALUES (13, 3, 'quia', 761996, 'Ut neque est praesentium rerum dignissimos. Est omnis beatae quisquam. Vel nostrum a ipsam officia veniam. Sed facere officiis nulla saepe quis debitis.', '60.59', 'minus', 1, 1, '2019-01-12 18:01:23');
INSERT INTO `products` (`id`, `vendor_id`, `name`, `qty`, `description`, `price`, `unit_measure`, `storage_id`, `categorie_id`, `created_at`) VALUES (14, 4, 'dolorum', 3882, 'Earum atque delectus similique corporis officiis in. Deserunt voluptatem commodi et deserunt tempore suscipit odit sit. Non corporis et voluptatem laboriosam voluptatem.', '99.99', 'ex', 2, 2, '1990-05-16 03:26:09');
INSERT INTO `products` (`id`, `vendor_id`, `name`, `qty`, `description`, `price`, `unit_measure`, `storage_id`, `categorie_id`, `created_at`) VALUES (15, 5, 'occaecati', 714191, 'Dignissimos assumenda at consequatur excepturi. Laudantium laboriosam ut dolores iste rem aspernatur ex. Quidem eius culpa est sed. Quia laborum tempore adipisci repellendus distinctio et. Labore ratione at reprehenderit repudiandae non.', '99.99', 'dolor', 1, 3, '1973-06-02 12:22:21');
INSERT INTO `products` (`id`, `vendor_id`, `name`, `qty`, `description`, `price`, `unit_measure`, `storage_id`, `categorie_id`, `created_at`) VALUES (16, 6, 'a', 785, 'Labore porro sint quibusdam reiciendis quis fugit cum ipsam. Velit tempora magni praesentium. Totam dolores dolor asperiores dolore cumque dolorem. Commodi optio voluptatum quo adipisci facere aliquid.', '99.99', 'ut', 2, 1, '1991-08-04 00:04:10');
INSERT INTO `products` (`id`, `vendor_id`, `name`, `qty`, `description`, `price`, `unit_measure`, `storage_id`, `categorie_id`, `created_at`) VALUES (17, 7, 'dolorem', 54, 'Sit qui sint explicabo placeat illo pariatur maiores. Ab aut qui qui qui quasi quos. Saepe non saepe qui quod omnis. Quisquam nihil aspernatur officiis pariatur sit minima sunt.', '99.99', 'inven', 1, 2, '1997-04-03 13:43:02');
INSERT INTO `products` (`id`, `vendor_id`, `name`, `qty`, `description`, `price`, `unit_measure`, `storage_id`, `categorie_id`, `created_at`) VALUES (18, 8, 'beatae', 663892783, 'Ut illum quaerat quibusdam ut quisquam quae. Quis sit sint consectetur aliquid. Sunt asperiores ut commodi est rem enim amet. Itaque ut quo deserunt eligendi aperiam aut.', '1.59', 'delen', 2, 3, '1981-10-06 15:23:49');
INSERT INTO `products` (`id`, `vendor_id`, `name`, `qty`, `description`, `price`, `unit_measure`, `storage_id`, `categorie_id`, `created_at`) VALUES (19, 9, 'ut', 81505437, 'Nihil provident dolores eos. Omnis hic non pariatur aperiam. Maxime quis reprehenderit quo. Molestiae est nam voluptas at veniam iusto voluptate.', '0.00', 'ex', 1, 1, '1983-08-01 10:15:26');
INSERT INTO `products` (`id`, `vendor_id`, `name`, `qty`, `description`, `price`, `unit_measure`, `storage_id`, `categorie_id`, `created_at`) VALUES (20, 10, 'sit', 94607233, 'Quo praesentium eum dolor iure in voluptas provident. Tenetur reiciendis ut qui laudantium et est enim. Id ea sed ut. Occaecati asperiores repellat velit corrupti sunt.', '99.99', 'qui', 2, 2, '1979-11-09 08:11:53');
INSERT INTO `products` (`id`, `vendor_id`, `name`, `qty`, `description`, `price`, `unit_measure`, `storage_id`, `categorie_id`, `created_at`) VALUES (21, 1, 'molestiae', 69665644, 'Facilis consequatur quia consequuntur placeat. Quo fugit id repudiandae. Eum autem sed ad facere libero eos eius. Et suscipit sit sit reiciendis.', '99.99', 'et', 1, 3, '2004-07-06 11:43:19');
INSERT INTO `products` (`id`, `vendor_id`, `name`, `qty`, `description`, `price`, `unit_measure`, `storage_id`, `categorie_id`, `created_at`) VALUES (22, 2, 'veniam', 68437178, 'Aut illo quisquam et quo voluptatibus fugit tenetur. Et sint odit asperiores non est quia.', '0.00', 'rerum', 2, 1, '2005-09-03 03:18:46');
INSERT INTO `products` (`id`, `vendor_id`, `name`, `qty`, `description`, `price`, `unit_measure`, `storage_id`, `categorie_id`, `created_at`) VALUES (23, 3, 'non', 10687, 'Aperiam a quo iure quia. Doloribus sit rerum distinctio qui sint molestias.', '99.99', 'disti', 1, 2, '2020-01-15 12:42:03');
INSERT INTO `products` (`id`, `vendor_id`, `name`, `qty`, `description`, `price`, `unit_measure`, `storage_id`, `categorie_id`, `created_at`) VALUES (24, 4, 'rerum', 115, 'Est molestias aut aspernatur deleniti doloribus quis cupiditate. Sint assumenda ea nihil nihil itaque incidunt esse. Inventore ipsam necessitatibus error illum. Voluptates ratione voluptatibus sint culpa.', '99.99', 'eaque', 2, 3, '1974-03-22 18:15:39');
INSERT INTO `products` (`id`, `vendor_id`, `name`, `qty`, `description`, `price`, `unit_measure`, `storage_id`, `categorie_id`, `created_at`) VALUES (25, 5, 'earum', 0, 'Harum totam rerum et ad dolorem. Alias quam autem non maiores quia ex quaerat. Optio sed reiciendis harum quis soluta voluptatem illo asperiores.', '99.99', 'ea', 1, 1, '2016-06-13 12:13:04');


