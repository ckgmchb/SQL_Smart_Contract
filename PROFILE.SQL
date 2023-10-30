/* PROFILE AND RISK_PROFILE */

CREATE TABLE `Profile.Dev_Glasslinkdb` (
  `profile_id` INT64 NOT NULL AUTO_INCREMENT,
  `user_id` INT64 NOT NULL,
  `name` STRING NOT NULL,
  `bio` STRING NOT NULL,
  `image` BYTES,
  `language` STRING NOT NULL,
  `industry` STRING NOT NULL,
  `occupation` STRING NOT NULL,
  `default_pricing_plan` STRING NOT NULL,
  PRIMARY KEY (`profile_id`)
);


CREATE TABLE `Risk_Profile.Dev_Glasslinkdb` (
  `risk_profile_id` INT64 NOT NULL AUTO_INCREMENT,
  `social_media_rating` FLOAT64 NOT NULL,
  `internal_rating` FLOAT64 NOT NULL,
  PRIMARY KEY (`risk_profile_id`)
);