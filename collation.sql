-- collation�̔�r

DROP DATABASE IF EXISTS `collation_test`;
CREATE DATABASE `collation_test` CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `collation_test`;
CREATE TABLE `cities` (`name` VARCHAR(10) PRIMARY KEY);

-- ���e�������̑啶���E�������͋�ʂ���邩
-- �_�C�A�N���e�B�J���}�[�N�̗L���͋�ʂ���邩
INSERT INTO `cities` (`name`) VALUES ('Tokyo');
INSERT INTO `cities` (`name`) VALUES ('Tokyo');
INSERT INTO `cities` (`name`) VALUES ('T?ky?');
INSERT INTO `cities` (`name`) VALUES ('TOKYO');
INSERT INTO `cities` (`name`) VALUES ('TOKYO');
INSERT INTO `cities` (`name`) VALUES ('T?KY?');

-- �Ђ炪�ȁE�J�^�J�i�͋�ʂ���邩
-- �X���͋�ʂ���邩
INSERT INTO `cities` (`name`) VALUES ('�Ƃ����傤');
INSERT INTO `cities` (`name`) VALUES ('�Ƃ����悤');
INSERT INTO `cities` (`name`) VALUES ('�g�E�L���E');
INSERT INTO `cities` (`name`) VALUES ('�g�E�L���E');
-- �����͋�ʂ���邩
INSERT INTO `cities` (`name`) VALUES ('�Ȃ���');
INSERT INTO `cities` (`name`) VALUES ('�Ȃ���');
-- �������E�����͋�ʂ���邩
INSERT INTO `cities` (`name`) VALUES ('�����ۂ�');
INSERT INTO `cities` (`name`) VALUES ('���ۂ�');
INSERT INTO `cities` (`name`) VALUES ('�����ق�');
INSERT INTO `cities` (`name`) VALUES ('���ق�');

-- �����̐��񏇂͂ǂ���
INSERT INTO `cities` (`name`) VALUES ('����');
INSERT INTO `cities` (`name`) VALUES ('���É�');
INSERT INTO `cities` (`name`) VALUES ('�D�y');

SELECT `name` FROM `cities` ORDER BY `name`;
