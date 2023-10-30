/* CONTENT AND CONTENT_TO_NFT */

CREATE TABLE `Content.Dev_Glasslinkdb` (
  `content_id` INT64 NOT NULL AUTO_INCREMENT,
  `content_type` STRING NOT NULL,
  `content_size` FLOAT64 NOT NULL,
  `content_location` STRING NOT NULL,
  PRIMARY KEY (`content_id`)
);


CREATE TABLE `NFT.Dev_Glasslinkdb` (
  `nft_id` INT64 NOT NULL AUTO_INCREMENT,
  `metadata_id` INT64 NOT NULL,
  `nft` STRING NOT NULL,
  `market_place` STRING NOT NULL,
  `platform` STRING NOT NULL,
  `wallet` STRING NOT NULL,
  `name` STRING NOT NULL,
  `symbol` STRING NOT NULL,
  PRIMARY KEY (`nft_id`)
);