/* USER information */

CREATE TABLE `users.Dev_Glasslinkdb` (
  `id` INT64 NOT NULL AUTO_INCREMENT,
  `name` STRING NOT NULL,
  `email` STRING NOT NULL,
  `phone_number` STRING,
  `shipping_address` STRING,
  PRIMARY KEY (`id`)
);

CREATE TABLE `user_settings.Dev_Glasslinkdb` (
  `id` INT64 NOT NULL AUTO_INCREMENT,
  `user_id` INT64 NOT NULL,
  `profile_image` BYTES,
  `language` STRING,
  `industries` STRING,
  `occupations` STRING,
  `is_dark_mode` STRING,
  `bio` STRING,
  PRIMARY KEY (`id`)
);

CREATE TABLE `user_subscription.Dev_Glasslinkdb` (
  `id` INT64 NOT NULL AUTO_INCREMENT,
  `user_id` INT64 NOT NULL,
  `pricing_plan_id` INT64 NOT NULL,
  `is_active` STRING NOT NULL,
  PRIMARY KEY (`id`)
);

CREATE TABLE `user_notification.Dev_Glasslinkdb` (
  `id` INT64 NOT NULL AUTO_INCREMENT,
  `user_id` INT64 NOT NULL,
  `is_user_activity` STRING NOT NULL,
  `is_promotion_offer` STRING NOT NULL,
  `is_product_update` STRING NOT NULL,
  `is_regulatory` STRING NOT NULL,
  PRIMARY KEY (`id`)
);

CREATE TABLE `Location.Dev_Glasslinkdb` (
  `address_id` INT64 NOT NULL AUTO_INCREMENT,
  `address1` VARCHAR(255) NOT NULL,
  `city` VARCHAR(255) NOT NULL,
  `state` VARCHAR(255) NOT NULL,
  `country` VARCHAR(255) NOT NULL,
  `zipcode` VARCHAR(255) NOT NULL,
  `county` VARCHAR(255) NOT NULL,
  `latitude` DOUBLE NOT NULL,
  `longitude` DOUBLE NOT NULL,
  PRIMARY KEY (`address_id`)
);



















