CREATE TABLE class_info
(
    `id`         int NOT NULL AUTO_INCREMENT,
    `classno`    varchar(10)  DEFAULT NULL,
    `location`   varchar(255) DEFAULT NULL,
    `begindate`  datetime     DEFAULT NULL,
    `enddate`    datetime     DEFAULT NULL,
    `classtype`  tinyint,
    `classgroup` tinyint,
    PRIMARY KEY (id),
    FOREIGN KEY (classtype) REFERENCES `class_type` (id),
    FOREIGN KEY (classgroup) REFERENCES `class_group` (id)
);