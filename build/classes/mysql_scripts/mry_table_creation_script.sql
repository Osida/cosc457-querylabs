DROP DATABASE IF EXISTS `mrY`;
CREATE DATABASE `mrY`;
USE `mrY`;

CREATE TABLE `storage` (
    `id` int AUTO_INCREMENT NOT NULL ,
    `name` varchar(50)  NOT NULL ,
    `created_at` timestamp  NOT NULL DEFAULT now(),
    PRIMARY KEY (`id`),
    CONSTRAINT `uc_storage_name` UNIQUE (`name`)
);

CREATE TABLE `categories` (
    `id` int AUTO_INCREMENT NOT NULL ,
    `name` varchar(50)  NOT NULL ,
    `created_at` timestamp  NOT NULL DEFAULT now(),
    PRIMARY KEY (`id`),
    CONSTRAINT `uc_categories_name` UNIQUE (`name`)
);

CREATE TABLE `vendors` (
    `id` int AUTO_INCREMENT NOT NULL ,
    `name` varchar(50)  NOT NULL ,
    `item` varchar(50)  NOT NULL ,
    `phone` varchar(15)  NULL ,
    `address` varchar(150)  NOT NULL ,
    `created_at` timestamp  NOT NULL DEFAULT now(),
    PRIMARY KEY (`id`)
);

CREATE TABLE `users` (
    `id` int AUTO_INCREMENT NOT NULL ,
    `name` varchar(50)  NOT NULL ,
    `password` varchar(50)  NOT NULL ,
    `created_at` timestamp  NOT NULL DEFAULT now(),
    PRIMARY KEY (`id`),
    CONSTRAINT `uc_users_name` UNIQUE (`name`)
);

CREATE TABLE `products` (
    `id` int AUTO_INCREMENT NOT NULL ,
    `vendor_id` int  NOT NULL ,
    `name` varchar(50)  NOT NULL ,
    `qty` int  NOT NULL ,
    `description` varchar(2000)  NULL ,
    `price` decimal(4,2)  NOT NULL ,
    `unit_measure` varchar(5)  NULL ,
    `storage_id` int  NOT NULL ,
    `categorie_id` int  NOT NULL ,
    `created_at` timestamp  NOT NULL DEFAULT now(),
    PRIMARY KEY (`id`),
    CONSTRAINT `fk_products_vendors` FOREIGN KEY (`vendor_id`) REFERENCES `vendors` (`id`) ON UPDATE CASCADE,
	CONSTRAINT `fk_products_storage` FOREIGN KEY (`storage_id`) REFERENCES `storage` (`id`) ON UPDATE CASCADE,
	CONSTRAINT `fk_products_categories` FOREIGN KEY (`categorie_id`) REFERENCES `categories` (`id`) ON UPDATE CASCADE
);

CREATE INDEX `idx_products_name`
ON `products` (`name`);

CREATE INDEX `idx_products_price`
ON `products` (`price`);

CREATE INDEX `idx_products_unit_measure`
ON `products` (`unit_measure`);

CREATE INDEX `idx_vendors_name`
ON `vendors` (`name`);

CREATE INDEX `idx_vendors_address`
ON `vendors` (`address`);

