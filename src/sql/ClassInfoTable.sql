CREATE TABLE class_info
(
    `id`         bigint NOT NULL AUTO_INCREMENT,
    `classno`    varchar(12)  DEFAULT NULL,
    `location`   varchar(255) DEFAULT NULL,
    `begindate`  datetime     DEFAULT NULL,
    `enddate`    datetime     DEFAULT NULL,
    `classtype`  tinyint,
    `classgroup` tinyint,
    `notes`      text,
    PRIMARY KEY (id),
    FOREIGN KEY (classtype) REFERENCES `class_type` (id),
    FOREIGN KEY (classgroup) REFERENCES `class_group` (id)
);