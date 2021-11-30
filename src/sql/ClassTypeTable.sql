DROP TABLE IF EXISTS `class_type`;

CREATE TABLE `class_type`
(
    `id`   tinyint NOT NULL AUTO_INCREMENT,
    `name` varchar(50) DEFAULT NULL,
    PRIMARY KEY (id)
);

INSERT INTO `class_type` (`name`) VALUES ('Panawagan');
INSERT INTO `class_type` (`name`) VALUES ('Marian');
INSERT INTO `class_type` (`name`) VALUES ('Special');
INSERT INTO `class_type` (`name`) VALUES ('Little Lambs');
INSERT INTO `class_type` (`name`) VALUES ('Mission');
INSERT INTO `class_type` (`name`) VALUES ('Apostolic');
INSERT INTO `class_type` (`name`) VALUES ('Regular');
INSERT INTO `class_type` (`name`) VALUES ('Spiritual Workshop');
INSERT INTO `class_type` (`name`) VALUES ('Munting Pagsasanay');
INSERT INTO `class_type` (`name`) VALUES ('Virtual');