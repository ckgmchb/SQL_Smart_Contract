/* User Login and Action */

CREATE TABLE `Login_Credentials.Dev_Glasslinkdb` (
  `user_id` INT64 NOT NULL AUTO_INCREMENT,
  `password` STRING NOT NULL,
  `token_key` STRING NOT NULL,
  PRIMARY KEY (`user_id`)
);


CREATE TABLE `Action.Dev_Glasslinkdb` (
  `action_id` INT64 NOT NULL AUTO_INCREMENT,
  `action_type` STRING NOT NULL,
  `action_date` DATE NOT NULL,
  `name` STRING NOT NULL,
  `location` STRING NOT NULL,
  PRIMARY KEY (`action_id`)
);