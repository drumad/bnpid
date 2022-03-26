CREATE TABLE `members_class_info`
(
    `members_id`   bigint NOT NULL,
    `class_info_id` bigint NOT NULL,
    PRIMARY KEY (members_id, class_info_id),
    FOREIGN KEY (members_id) REFERENCES members (id),
    FOREIGN KEY (class_info_id) REFERENCES class_info (id)
);