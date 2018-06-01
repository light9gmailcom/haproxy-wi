CREATE TABLE IF NOT EXISTS `user` (`id`	INTEGER NOT NULL AUTO_INCREMENT,`username`	VARCHAR ( 64 ) UNIQUE,`email`	VARCHAR ( 120 ) UNIQUE,	`password`	VARCHAR ( 128 ),`role`	VARCHAR ( 128 ),`groups`	VARCHAR ( 120 ),PRIMARY KEY(`id`) );
INSERT INTO `user` (username, email, password, role, groups) VALUES ('admin','admin@localhost','admin','admin','1');
INSERT INTO `user` (username, email, password, role, groups) VALUES ('editor','editor@localhost','editor','editor','1');
INSERT INTO `user` (username, email, password, role, groups) VALUES ('guest','guest@localhost','guest','guest','1');
CREATE TABLE IF NOT EXISTS `servers` (`id`	INTEGER NOT NULL AUTO_INCREMENT,`hostname`	VARCHAR ( 64 ) UNIQUE,`ip`	VARCHAR ( 64 ) UNIQUE,`groups`	VARCHAR ( 64 ),PRIMARY KEY(`id`) );
CREATE TABLE IF NOT EXISTS `role` (`id`	INTEGER NOT NULL AUTO_INCREMENT,`name`	VARCHAR ( 80 ) UNIQUE,`description`	VARCHAR ( 255 ),PRIMARY KEY(`id`) );
INSERT INTO `role` (name, description) VALUES ('admin','Can do everything');
INSERT INTO `role` (name, description) VALUES ('editor','Can edit configs');
INSERT INTO `role` (name, description) VALUES ('guest','Read only access');
CREATE TABLE IF NOT EXISTS `groups` (`id`	INTEGER NOT NULL AUTO_INCREMENT,`name`	VARCHAR ( 80 ) UNIQUE,`description`	VARCHAR ( 255 ),PRIMARY KEY(`id`));
INSERT INTO `groups` (name, description) VALUES ('All','All servers enter in this group');	
CREATE TABLE IF NOT EXISTS `servers` (`id`	INTEGER NOT NULL AUTO_INCREMENT,`hostname`	VARCHAR ( 64 ) UNIQUE,`ip`	VARCHAR ( 64 ) UNIQUE,`groups`	VARCHAR ( 64 ),	PRIMARY KEY(`id`));
CREATE TABLE IF NOT EXISTS `uuid` (`user_id` INTEGER NOT NULL, `uuid` varchar ( 64 ) );
CREATE TABLE IF NOT EXISTS `cred` (`enable`	INTEGER NOT NULL DEFAULT 1, `username`	VARCHAR ( 64 ) NOT NULL, `password` VARCHAR ( 64 ) NOT NULL );
insert into cred('enable','username','password') values ('1', 'root','password');
CREATE TABLE IF NOT EXISTS `token` (`user_id` INTEGER, `token` varchar(64), `exp` timestamp default '0000-00-00 00:00:00');