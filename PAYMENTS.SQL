/* PAYMENTS */

CREATE TABLE `Payment_Account.Dev_Glasslinkdb` (
  `account_id` INT64 NOT NULL AUTO_INCREMENT,
  `payment_plan_id` INT64 NOT NULL,
  `name` STRING NOT NULL,
  `billing_term` STRING NOT NULL,
  `billing_cycle` STRING NOT NULL,
  PRIMARY KEY (`account_id`)
);

CREATE TABLE `Payment_plan.Dev_Glasslinkdb` (
  `plan_id` INT64 NOT NULL AUTO_INCREMENT,
  `RAMA` STRING NOT NULL,
  `term` INT64 NOT NULL,
  `rate` FLOAT64 NOT NULL,
  `description` STRING NOT NULL,
  PRIMARY KEY (`plan_id`)
);


CREATE TABLE `Payment_mode.Dev_Glasslinkdb` (
  `payment_mode_id` INT64 NOT NULL AUTO_INCREMENT,
  `payment_mode_type` STRING NOT NULL,
  PRIMARY KEY (`payment_mode_id`)
);