CREATE TABLE parish
(
    `id`     	 int NOT NULL AUTO_INCREMENT,
    `name`    	 varchar(255),
    `address` 	 varchar(255),
    `city`       varchar(50),
    `state`      varchar(50),
    `zip`        varchar(50),
    `country_id` smallint,
    `date_created`   timestamp DEFAULT CURRENT_TIMESTAMP,
    `date_updated`   timestamp ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (id),
    FOREIGN KEY (country_id) REFERENCES country (id)
);