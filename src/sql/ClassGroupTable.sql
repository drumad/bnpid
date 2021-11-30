DROP TABLE IF EXISTS `class_group`;

CREATE TABLE `class_group`
(
    `id`   tinyint NOT NULL AUTO_INCREMENT,
    `name` varchar(50) DEFAULT NULL,
    PRIMARY KEY (id)
);

INSERT INTO `class_group` (`name`) VALUES ('Young Men');
INSERT INTO `class_group` (`name`) VALUES ('Young Women');
INSERT INTO `class_group` (`name`) VALUES ('Youth (Mixed)');
INSERT INTO `class_group` (`name`) VALUES ('Senior Men');
INSERT INTO `class_group` (`name`) VALUES ('Senior Women');
INSERT INTO `class_group` (`name`) VALUES ('Seniors (Mixed)');
INSERT INTO `class_group` (`name`) VALUES ('Junior Boys');
INSERT INTO `class_group` (`name`) VALUES ('Junior Girls');