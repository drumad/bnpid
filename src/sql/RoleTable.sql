DROP TABLE IF EXISTS `role`;

CREATE TABLE `role`
(
    `id`   tinyint NOT NULL AUTO_INCREMENT,
    `name` varchar(50) DEFAULT NULL,
    PRIMARY KEY (id)
);

INSERT INTO `role` (`name`) VALUES ('DA');
INSERT INTO `role` (`name`) VALUES ('DP');
INSERT INTO `role` (`name`) VALUES ('RECTOR1');
INSERT INTO `role` (`name`) VALUES ('RECTOR2');
INSERT INTO `role` (`name`) VALUES ('RECTOR3');
INSERT INTO `role` (`name`) VALUES ('BATHROOM');
INSERT INTO `role` (`name`) VALUES ('KITCHEN');
INSERT INTO `role` (`name`) VALUES ('ROLLO');
INSERT INTO `role` (`name`) VALUES ('REFECTORY');
INSERT INTO `role` (`name`) VALUES ('CHAPEL');
INSERT INTO `role` (`name`) VALUES ('VIGIL');
INSERT INTO `role` (`name`) VALUES ('DISHWASHING');
INSERT INTO `role` (`name`) VALUES ('RUNNER');
INSERT INTO `role` (`name`) VALUES ('CANDIDATE');