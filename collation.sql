-- collationの比較

DROP DATABASE IF EXISTS `collation_test`;
CREATE DATABASE `collation_test` CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `collation_test`;
CREATE TABLE `cities` (`name` VARCHAR(10) PRIMARY KEY);

-- ラテン文字の大文字・小文字は区別されるか
-- ダイアクリティカルマークの有無は区別されるか
INSERT INTO `cities` (`name`) VALUES ('Tokyo');
INSERT INTO `cities` (`name`) VALUES ('Tokyo');
INSERT INTO `cities` (`name`) VALUES ('T?ky?');
INSERT INTO `cities` (`name`) VALUES ('TOKYO');
INSERT INTO `cities` (`name`) VALUES ('TOKYO');
INSERT INTO `cities` (`name`) VALUES ('T?KY?');

-- ひらがな・カタカナは区別されるか
-- 拗音は区別されるか
INSERT INTO `cities` (`name`) VALUES ('とうきょう');
INSERT INTO `cities` (`name`) VALUES ('とうきよう');
INSERT INTO `cities` (`name`) VALUES ('トウキョウ');
INSERT INTO `cities` (`name`) VALUES ('トウキヨウ');
-- 濁音は区別されるか
INSERT INTO `cities` (`name`) VALUES ('なごや');
INSERT INTO `cities` (`name`) VALUES ('なこや');
-- 半濁音・促音は区別されるか
INSERT INTO `cities` (`name`) VALUES ('さっぽろ');
INSERT INTO `cities` (`name`) VALUES ('さつぽろ');
INSERT INTO `cities` (`name`) VALUES ('さっほろ');
INSERT INTO `cities` (`name`) VALUES ('さつほろ');

-- 漢字の整列順はどうか
INSERT INTO `cities` (`name`) VALUES ('東京');
INSERT INTO `cities` (`name`) VALUES ('名古屋');
INSERT INTO `cities` (`name`) VALUES ('札幌');

SELECT `name` FROM `cities` ORDER BY `name`;
