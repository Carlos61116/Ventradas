-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema ventradas
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema ventradas
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `ventradas` DEFAULT CHARACTER SET utf8 ;
-- -----------------------------------------------------
-- Schema ventadas
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema ventadas
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `ventadas` ;
USE `ventradas` ;

-- -----------------------------------------------------
-- Table `ventradas`.`band`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ventradas`.`band` (
  `idband` INT(11) NOT NULL AUTO_INCREMENT,
  `band_name` VARCHAR(100) NOT NULL,
  `description` VARCHAR(200) NULL DEFAULT NULL,
  `components` VARCHAR(45) NULL DEFAULT NULL,
  `genre` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`idband`))
ENGINE = InnoDB
AUTO_INCREMENT = 1
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `ventradas`.`user`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ventradas`.`user` (
  `iduser` INT(11) NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(15) NOT NULL,
  `password` VARCHAR(45) NOT NULL,
  `first_name` VARCHAR(80) NOT NULL,
  `last_name` VARCHAR(45) NOT NULL,
  `city` VARCHAR(45) NULL DEFAULT NULL,
  `favorite_band` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`iduser`))
ENGINE = InnoDB

DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `ventradas`.`concert`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ventradas`.`concert` (
  `id_concert` INT(11) NOT NULL AUTO_INCREMENT,
  `concert_name` VARCHAR(100) NOT NULL,
  `city` VARCHAR(45) NOT NULL,
  `amount_tickets` INT(11) NULL DEFAULT NULL,
  `src` varchar(700) null,
  `date` date not null,
  `id_band` INT(11) NOT NULL,
  PRIMARY KEY (`id_concert`),
  INDEX `fk_concert_band_idx` (`id_concert` ASC),
  INDEX `fk_concert_band` (`id_band` ASC),
  CONSTRAINT `fk_concert_band`
    FOREIGN KEY (`id_band`)
    REFERENCES `ventradas`.`band` (`idband`))
ENGINE = InnoDB

DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `ventradas`.`tickets`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ventradas`.`tickets` (
  `idtickets` INT(11) NOT NULL AUTO_INCREMENT,
  `price` INT(11) NOT NULL,
  `band_id` INT(11) NOT NULL,
  PRIMARY KEY (`idtickets`),
  INDEX `fk_tickets_concert1_idx` (`band_id` ASC),
  CONSTRAINT `fk_tickets_concert1`
    FOREIGN KEY (`band_id`)
    REFERENCES `ventradas`.`concert` (`id_concert`))
ENGINE = InnoDB

DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `ventradas`.`buy`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ventradas`.`buy` (
  `id_buy` INT(11) NOT NULL AUTO_INCREMENT,
  `user_iduser` INT(11) NOT NULL,
  `tickets_idtickets` INT(11)  not NULL,
  PRIMARY KEY (`id_buy`),
  INDEX `fk_buy_user1_idx` (`user_iduser` ASC),
  INDEX `fk_buy_tickets1_idx` (`tickets_idtickets` ASC),
  CONSTRAINT `fk_buy_user1`
    FOREIGN KEY (`user_iduser`)
    REFERENCES `ventradas`.`user` (`iduser`)
    ON UPDATE no action,
  CONSTRAINT `fk_buy_tickets1`
    FOREIGN KEY (`tickets_idtickets`)
    REFERENCES `ventradas`.`tickets` (`idtickets`)
    ON DELETE cASCADE
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

USE `ventadas` ;
USE `ventradas` ;

-- -----------------------------------------------------
-- procedure myproc
-- -----------------------------------------------------

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;




SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;



insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (1, 'kbackshill0', 'Y0WVJsFJDP', 'Keen', 'Backshill', 'North Shore', false);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (2, 'hackenson1', 'Nhb55COBu', 'Herrick', 'Ackenson', 'Boston', true);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (3, 'ssauvan2', 'SLHyX4Ff', 'Shanan', 'Sauvan', 'Meishan', false);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (4, 'asprason3', 'KFJJoJC', 'Adria', 'Sprason', 'Gabahan', false);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (5, 'achoake4', 'w4U6rRC', 'Anderea', 'Choake', 'Changyŏn', false);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (6, 'bellwell5', 'mNSaSA', 'Berget', 'Ellwell', 'Cisiih', true);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (7, 'aguierre6', '71054Rlp', 'Aldus', 'Guierre', 'Sibulan', false);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (8, 'ehillan7', 'wnWGvHcuOpL', 'Elisa', 'Hillan', 'Xinpu', true);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (9, 'prisen8', '5hi1MXa4', 'Phyllida', 'Risen', 'Kamiichi', true);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (10, 'wbannerman9', 'SrMx3IGq3c', 'Wilton', 'Bannerman', 'Doudleby nad Orlicí', false);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (11, 'smidghalla', 'uAVbqvM9iZQ', 'Si', 'Midghall', 'Ueda', false);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (12, 'dlamploughb', 'ckHh74b', 'Doralynne', 'Lamplough', 'Yanyang', false);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (13, 'pbrookesc', 'MSizKpI', 'Petra', 'Brookes', 'San Isidro', false);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (14, 'csutterd', 'X1vUVFs', 'Collete', 'Sutter', 'Tafí del Valle', false);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (15, 'tczajkowskie', '8MRRyHtSghls', 'Tiffy', 'Czajkowski', 'Manutapen', true);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (16, 'mpregalf', 'IjncRq7Od8v7', 'Mathilda', 'Pregal', 'San Jose', false);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (17, 'hdymidowiczg', 'f2j48ccMj', 'Heddie', 'Dymidowicz', 'Gaocheng', false);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (18, 'gzorzih', 'siArtDu2hm', 'Giorgio', 'Zorzi', 'Bibai', false);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (19, 'pmacneillyi', 'Eege6T', 'Pennie', 'MacNeilly', 'Río', false);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (20, 'nblumj', '4FFQpNll', 'Niels', 'Blum', 'Potrerillos', false);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (21, 'ttatumk', 'f5CtcY', 'Torrance', 'Tatum', 'Sheki', false);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (22, 'jartisl', 'b94WhaYu', 'Jamesy', 'Artis', 'Zhuangbu', false);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (23, 'sbutlerm', 'pOYkRP', 'Selestina', 'Butler', 'Gornyye Klyuchi', true);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (24, 'kwaldockn', '2eDoFIU3m', 'Karissa', 'Waldock', 'Huiyi', false);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (25, 'bkaplano', 'i2HxlBK', 'Brittani', 'Kaplan', 'Opochka', true);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (26, 'mmantzp', '6ht5cv', 'Murray', 'Mantz', 'Gobernador Gálvez', false);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (27, 'emacanespieq', 'rviOnPV', 'Etti', 'MacAnespie', 'Morfovoúni', true);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (28, 'byesichevr', 'UA1CDT6R0L', 'Burlie', 'Yesichev', 'Arrabal', false);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (29, 'ktowerseys', 'Ll3WWzJKwy', 'Kara', 'Towersey', 'Kirkland Lake', false);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (30, 'cokellehert', '913JkdFAO', 'Claribel', 'O'' Kelleher', 'Landskrona', false);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (31, 'sbiswellu', 'kYLqUz5ktCku', 'Shaine', 'Biswell', 'Jacksonville', true);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (32, 'jorpinv', '0ruQDOHekCVN', 'Jeanna', 'Orpin', 'Al Ḩashwah', true);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (33, 'jpoulglaisw', 'iZqijyD6b', 'Jenn', 'Poulglais', 'Mvuma', true);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (34, 'fquaylex', 'wY2RlHuU', 'Fayre', 'Quayle', 'Vroutek', false);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (35, 'cebrally', 'NDRpBE', 'Caprice', 'Ebrall', 'Greensboro', true);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (36, 'mdahlborgz', 'POzggOvzYTEm', 'Maxie', 'Dahlborg', 'Mojorejo', true);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (37, 'dmallon10', 'JZiKQQpx8', 'Darline', 'Mallon', 'Ōmagari', true);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (38, 'mdickie11', 'pFGmY0xP', 'Misty', 'Dickie', 'El Coco', true);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (39, 'shultberg12', 'i9uOXctFOC', 'Spence', 'Hultberg', 'Chaumont', false);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (40, 'scouser13', 'x5EFO6', 'Shayne', 'Couser', 'Bungur', true);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (41, 'ddeclercq14', 'pxHxp65', 'Doy', 'de Clercq', 'Ramon Magsaysay', true);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (42, 'gcuddihy15', 'V86vXtl2cZ', 'Giffard', 'Cuddihy', 'Itō', true);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (43, 'jdulton16', 'Zd2XXBgU', 'Jennette', 'Dulton', 'Qinggis Han', true);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (44, 'sbeinisch17', 'B2Tbq19rMvy7', 'Sheridan', 'Beinisch', 'Pointe-à-Pitre', false);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (45, 'cdowner18', 'IpS3uVJ', 'Chandler', 'Downer', 'Pajak', false);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (46, 'dbray19', 'iPQhdqg6', 'Daryl', 'Bray', 'Surkhet', true);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (47, 'lsiddeley1a', 'L0cZBbrI654', 'Liliane', 'Siddeley', 'Napier', true);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (48, 'wlawther1b', '9sUxTmA', 'Waly', 'Lawther', 'Sorongan', true);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (49, 'ghadye1c', 'PxYFy32HapO', 'Gisela', 'Hadye', 'Muquiyauyo', false);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (50, 'aolland1d', '2aQsljNfzF', 'Adeline', 'Olland', 'Telangi Satu', false);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (51, 'jburrage1e', 'DP8YYL9SnLK1', 'Jedidiah', 'Burrage', 'Wichit', true);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (52, 'blandman1f', 'wKNy86gKI8C4', 'Bertie', 'Landman', 'Couto', false);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (53, 'ddecayette1g', 'Uun4na6q', 'Dacia', 'Decayette', 'Budapest', true);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (54, 'avashchenko1h', 'TmJGAvnq', 'Aurora', 'Vashchenko', 'San Clemente', false);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (55, 'mcaban1i', 'xWQTeYb6g3lK', 'Mariellen', 'Caban', 'Długosiodło', true);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (56, 'rvannuccinii1j', '2wlIqwbQxkfW', 'Roch', 'Vannuccinii', 'Nouméa', false);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (57, 'astoyle1k', 'grSZpY', 'Abbey', 'Stoyle', 'Brive-la-Gaillarde', true);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (58, 'abertelsen1l', '40Uzlh3zIxW', 'Augy', 'Bertelsen', 'Gaiyang', true);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (59, 'wmacneil1m', 'cNknqyz', 'Wally', 'MacNeil', 'General Pico', false);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (60, 'fkincla1n', 'Z2wdL7UK9F', 'Flory', 'Kincla', 'Cortes', true);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (61, 'dfilipychev1o', 'klD8sEeixda', 'Delmar', 'Filipychev', 'Cill Airne', false);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (62, 'dsquirrel1p', 'a16wmOQEw', 'Darin', 'Squirrel', 'Białołeka', true);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (63, 'tmanvell1q', 'Cp2rlGB2', 'Tristan', 'Manvell', 'Jintan', true);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (64, 'hwhapples1r', 'bCgdTTa', 'Hephzibah', 'Whapples', 'Turku', true);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (65, 'dlidgard1s', 'NdE5LUz9f', 'Dolly', 'Lidgard', 'Cairima', false);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (66, 'ngeorgiades1t', 'DnUAXECDNnA', 'Natalee', 'Georgiades', 'Lewotola', true);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (67, 'swreford1u', 'wzW1lfbAH02', 'Sallyann', 'Wreford', 'Mandalt', true);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (68, 'jcruickshanks1v', 'eq1h5RwN171', 'Janeczka', 'Cruickshanks', 'Timóteo', true);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (69, 'cbenduhn1w', 'Ia5eTBf', 'Clarie', 'Benduhn', 'Porto Salvo', false);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (70, 'ejolliffe1x', 'EtE3eUpv29', 'Eolande', 'Jolliffe', 'Jeremi', false);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (71, 'nsignorelli1y', 'osH485l', 'Nessie', 'Signorelli', 'Bačka Topola', true);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (72, 'kbastow1z', 'Nm0Hb035A', 'Karel', 'Bastow', 'Musawa', true);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (73, 'ahambelton20', '0yo2PvQLi', 'Alyce', 'Hambelton', 'Hněvotín', true);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (74, 'efairrie21', 'd7vwxcrSfGS', 'Erwin', 'Fairrie', 'Banjar Dauhpura', false);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (75, 'wbattany22', 'cn8jRPcLUh', 'Wilone', 'Battany', 'San Antonio de los Baños', false);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (76, 'hfearnsides23', 'nK159V5zp', 'Heddie', 'Fearnsides', 'Babo-Pangulo', true);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (77, 'mtiplady24', '7DNGjc', 'Miquela', 'Tiplady', 'Örebro', false);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (78, 'ccarlick25', 'KZ4SOa', 'Cornie', 'Carlick', 'Élancourt', false);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (79, 'jlardeur26', 'PUQTJ3Bk6', 'Jerald', 'Lardeur', 'Cungapmimbo', true);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (80, 'aibeson27', 'Lv02iQK', 'Anitra', 'Ibeson', 'Lyamino', true);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (81, 'ssartin28', 'RlH7E5B7px', 'Sidoney', 'Sartin', 'Homa Bay', false);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (82, 'dfitzmaurice29', '44iDBCo', 'Darrin', 'Fitzmaurice', 'Heshi', true);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (83, 'nharriskine2a', '2dJQqT42kDk', 'Nickolaus', 'Harriskine', 'Penanggapan', false);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (84, 'cgrinov2b', '5LmONXQ8', 'Claresta', 'Grinov', 'Wuli', false);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (85, 'tbrouard2c', 'KBUrwHNeCzp', 'Tallie', 'Brouard', 'Tullamore', false);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (86, 'eohannigan2d', 'dJr06b4N', 'Elysia', 'O''Hannigan', 'Berbérati', false);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (87, 'pmarl2e', 'NmhzHgOkAXx', 'Padgett', 'Marl', 'Velké Meziříčí', false);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (88, 'ldiangelo2f', 'oo5DogeGz', 'Lauri', 'Di Angelo', 'Anchorage', true);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (89, 'mleguin2g', 'Ai7ZDivYLk', 'Merle', 'Le Guin', 'Huajie', false);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (90, 'rderrett2h', 'hFTNn4E821', 'Royce', 'Derrett', 'Wangcheng', false);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (91, 'qhardiker2i', 'drcZG6ucD', 'Quinn', 'Hardiker', 'Strängnäs', true);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (92, 'lchisholm2j', 'NMFqieQRj3', 'Linus', 'Chisholm', 'Fomento', false);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (93, 'sshermar2k', 'pI80E3', 'Samantha', 'Shermar', 'Haysyn', true);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (94, 'wraddish2l', 'XSH40GWxi', 'Winonah', 'Raddish', 'Karano', true);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (95, 'kdockrill2m', 'JuGe6mVx3I9', 'Kristi', 'Dockrill', 'Pantenan', false);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (96, 'esedger2n', 'BkDqA0wBzU', 'Erin', 'Sedger', 'Albarraque', true);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (97, 'romoylan2o', 'YciLfimVNSZB', 'Reggi', 'O''Moylan', 'Dayong', true);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (98, 'mbendare2p', '10QpjH2', 'Mandy', 'Bendare', 'Nagosela', true);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (99, 'agimbart2q', 'jjCvE6F', 'Alain', 'Gimbart', 'Zebrzydowice', true);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (100, 'kaloway2r', 'hkqBZ9IUfauX', 'Kalinda', 'Aloway', 'Porto Martins', false);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (101, 'kdrover2s', 'EHi602wo', 'Kliment', 'Drover', 'Särö', false);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (102, 'gitzkovwitch2t', 'rkH6DrGnN', 'Geoffrey', 'Itzkovwitch', 'Šoštanj', true);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (103, 'dcavan2u', 'Z8fuSbaTXl', 'Donn', 'Cavan', 'Sambilawang', true);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (104, 'lbalmforth2v', 'H6nT6gZ5DUz', 'Lindsy', 'Balmforth', 'Thung Khru', true);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (105, 'aegger2w', 'axVrHo9', 'Angelita', 'Egger', 'Trzin', false);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (106, 'dstephen2x', '0ajya8kN5e', 'Desiri', 'Stephen', 'Sumeng', true);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (107, 'ajacobowits2y', 'WkR20n6DK8FB', 'Alfons', 'Jacobowits', 'Hudson Bay', false);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (108, 'escudder2z', 'ggLjqQAJjoM6', 'Elston', 'Scudder', 'Albergaria', false);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (109, 'aben30', 'oRGuDrx1pEa', 'Abby', 'Ben', 'Nice', true);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (110, 'vklageman31', 'dVfSJCfI', 'Vasilis', 'Klageman', 'Mādabā', true);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (111, 'bgillam32', 'fTTzkNH9i', 'Betteanne', 'Gillam', 'Kashirskoye', false);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (112, 'ematschuk33', 'kvyvzhO', 'Eileen', 'Matschuk', 'Granada', true);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (113, 'tdomenici34', 'U5RidgDtvn', 'Tony', 'Domenici', 'Bofuer', true);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (114, 'sbeagin35', '6D3ktlR', 'Sheree', 'Beagin', 'Koshki', true);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (115, 'goldfield36', 'y8DN7Rcd0', 'Geordie', 'Oldfield', 'Mogapinyana', false);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (116, 'mzelley37', 'HNTGALhb', 'Maryellen', 'Zelley', 'Jinyuan', true);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (117, 'hbursnoll38', 'LyIuzV2UrD', 'Heida', 'Bursnoll', 'Larnaca', true);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (118, 'saxworthy39', '8b3XTuUg5n', 'Shaylah', 'Axworthy', 'Jiahe', true);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (119, 'kaneley3a', 'HpzDggNBc', 'Kim', 'Aneley', 'Bofuer', false);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (120, 'ebagot3b', 'Xu3OM7Z17R', 'Elora', 'Bagot', 'Limbi', false);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (121, 'sthick3c', 'eP6S7VS', 'Selia', 'Thick', 'Sunne', true);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (122, 'nkelberman3d', 'bycEXTFc5F6', 'Nolie', 'Kelberman', 'Caucaguita', true);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (123, 'epountney3e', 'rC1mBzhn', 'Emlen', 'Pountney', 'Särevere', false);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (124, 'dfindlater3f', '7uqe7YxvZ94', 'Deena', 'Findlater', 'Gnosjö', false);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (125, 'bpollack3g', 'A3fL7AD9PMeI', 'Baird', 'Pollack', 'Masinloc', true);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (126, 'zelloway3h', 'kvHoPp', 'Zorine', 'Elloway', 'Tiksi', false);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (127, 'giwanczyk3i', 'Pltsnp2', 'Godfry', 'Iwanczyk', 'Krajan Langenharjo', true);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (128, 'jgettens3j', 'nqRABz69Mp', 'Jessa', 'Gettens', 'Ludwin', true);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (129, 'jgristwood3k', 'bjKSeUATFt7O', 'Janetta', 'Gristwood', 'Ban Phue', true);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (130, 'dplumbridge3l', 'OJgWgM', 'Denys', 'Plumbridge', 'Chitral', true);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (131, 'emoresby3m', 'Wd5Kqon', 'Erroll', 'Moresby', 'Pomacocha', false);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (132, 'dtollady3n', 'axYs6cy', 'Durward', 'Tollady', 'Huanipaca', true);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (133, 'fgadie3o', 'JnuZsxj63SLF', 'Freeman', 'Gadie', 'Twardogóra', false);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (134, 'tmeuse3p', 'FbhnEGa9', 'Truman', 'Meuse', 'Pompéia', true);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (135, 'cmartynov3q', 'HYCroV', 'Cordelia', 'Martynov', 'Purorejo', true);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (136, 'acamilli3r', 'fWb3mJy1', 'Anders', 'Camilli', 'Illushi', true);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (137, 'ilaverack3s', 'uClYodSdTF', 'Iain', 'Laverack', 'Alhos Vedros', false);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (138, 'ktowndrow3t', '7n8venq', 'Karisa', 'Towndrow', 'Hebian', false);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (139, 'avonnassau3u', 'yXFakbtrZE', 'Allan', 'von Nassau', 'Toulouse', true);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (140, 'bdolphin3v', 'NKH98VCWoN', 'Barret', 'Dolphin', 'Baicaogou', false);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (141, 'rhatfull3w', 'rD2C4BN8', 'Rockie', 'Hatfull', 'Mosteirô', false);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (142, 'lyukhin3x', 'ku4an2tC09', 'Liane', 'Yukhin', 'Uthai', true);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (143, 'bgossipin3y', 'GFI28Jhdr95F', 'Bibbye', 'Gossipin', 'Heba', true);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (144, 'vyuryev3z', 'uSFw80Owc', 'Vlad', 'Yuryev', 'Anh Son', false);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (145, 'cfuggles40', 'xmaanV', 'Catlaina', 'Fuggles', 'Nizhniy Lomov', false);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (146, 'pwhitloe41', 'SYWoUPadLynR', 'Peg', 'Whitloe', 'Selmes', true);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (147, 'sstallan42', 'pI5DbmzZZ', 'Sybyl', 'Stallan', 'Kalodu', false);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (148, 'ljilliss43', 'cYJxZRyQKsvf', 'Letta', 'Jilliss', 'Suru', false);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (149, 'eharvard44', 'udVIvmzh8E6', 'Emiline', 'Harvard', 'Skomielna Czarna', false);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (150, 'santuk45', 'Y3qZj3gGd4Wh', 'Sheilah', 'Antuk', 'Kirkton', true);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (151, 'nplet46', 'r7iAeP', 'Nissy', 'Plet', 'Lamas', false);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (152, 'dblondell47', 'm49YuPOMdYNN', 'Derek', 'Blondell', 'Swellendam', true);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (153, 'ndey48', 'LeihWYXLCp', 'Nicola', 'Dey', 'Jieduo', false);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (154, 'efownes49', '7FzdE5snSTm', 'Eunice', 'Fownes', 'Nueva Italia', true);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (155, 'fbaytrop4a', '6wm7JpCY', 'Felic', 'Baytrop', 'Boca Raton', false);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (156, 'cedelheit4b', 'gDtnTXS5lk', 'Cecilia', 'Edelheit', 'Gniechowice', false);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (157, 'cengledow4c', 'WAmiKeOE', 'Conni', 'Engledow', 'Águas', false);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (158, 'kstorie4d', '277ab21MnRp', 'Keelia', 'Storie', 'Kashihara-shi', true);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (159, 'dmcgaughey4e', 'Qk79lGx4trY', 'Drusy', 'McGaughey', 'København', true);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (160, 'zstringman4f', 'OIdJfkJvwqwp', 'Zelig', 'Stringman', 'Zhusha', true);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (161, 'yealles4g', 'vOMQhLOosN0U', 'Yule', 'Ealles', 'Sanligang', true);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (162, 'ktheyer4h', 'zsByDKf', 'Kelwin', 'Theyer', 'Mataguži', true);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (163, 'mwarland4i', 'HXTCzUrCV', 'Mathe', 'Warland', 'Mazeikiai', true);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (164, 'ngronw4j', 'CYGB3V4', 'Nevin', 'Gronw', 'Wakkanai', false);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (165, 'jelston4k', 'CYXbUXd2H', 'Jeri', 'Elston', 'Fangxi', false);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (166, 'abuddock4l', 'UlZgrouAs26', 'Alasteir', 'Buddock', 'Digos', true);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (167, 'cdavioud4m', 'OC2TYEpeNG', 'Clareta', 'Davioud', 'Podkumskiy', false);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (168, 'wfragino4n', 'ccxmKwbUVU', 'Wilone', 'Fragino', 'Colonias Unidas', false);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (169, 'hmacmeekan4o', '8HNKecqHkFZ', 'Hayden', 'MacMeekan', 'La Esperanza', false);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (170, 'fpaslow4p', '2zOEdU1p', 'Franchot', 'Paslow', 'Maimará', false);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (171, 'terratt4q', 'joUZX4XC', 'Towney', 'Erratt', 'Llipa', true);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (172, 'whabberjam4r', 'LCuZSUdWIO', 'Wallis', 'Habberjam', 'Fresno', false);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (173, 'mprettyman4s', '2a90pv', 'Moira', 'Prettyman', 'Siquirres', false);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (174, 'vbroinlich4t', '57nblSwK4TnJ', 'Vivienne', 'Broinlich', 'Feteira Pequena', true);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (175, 'cfritzer4u', 'AxKSOJLUU', 'Cairistiona', 'Fritzer', 'Czerwieńsk', false);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (176, 'dsedgemore4v', 'bR1ACe6R', 'Dare', 'Sedgemore', 'Kefar Yona', false);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (177, 'npeacher4w', 'En6yRED7', 'Niles', 'Peacher', 'Hedong', false);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (178, 'jroset4x', 'ZsJfuc', 'Joelly', 'Roset', 'Chenhu', true);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (179, 'anorthcote4y', 'At7FWmFJz91', 'Arty', 'Northcote', 'Bozhou', true);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (180, 'sbellson4z', 'ROfIfBx', 'Stevy', 'Bellson', 'Myrnyy', false);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (181, 'rkibel50', 'zjYvon', 'Royal', 'Kibel', 'Embalse', true);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (182, 'acumberledge51', 'lONzbJUwrlV', 'Anthony', 'Cumberledge', 'Roma', false);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (183, 'cdelacote52', 'kh4hFn', 'Cherry', 'Delacote', 'Dawa-Dawa', true);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (184, 'rwedon53', 'wBWofGexr', 'Ringo', 'Wedon', 'Siaton', true);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (185, 'thugo54', 'G16dkJE1MQ4r', 'Thekla', 'Hugo', 'Pariti', false);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (186, 'nrubberts55', 'A3CmvVNkfzV', 'Nesta', 'Rubberts', 'Arish', false);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (187, 'rvarndall56', 'Q8yxdl', 'Rodge', 'Varndall', 'Polzela', false);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (188, 'vcaslin57', 'Pp0nLMv', 'Vivienne', 'Caslin', 'Xiyuan', false);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (189, 'rrigglesford58', 'vapFaq', 'Robbie', 'Rigglesford', 'Tavira', false);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (190, 'ptownsley59', 'eA7m8XWl', 'Parrnell', 'Townsley', 'São Mateus do Maranhão', true);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (191, 'dchampion5a', 'x82nfIfchU', 'Deanna', 'Champion', 'Mawu', false);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (192, 'pbilsland5b', 'gXZu5y4UHg', 'Puff', 'Bilsland', 'Mwense', false);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (193, 'bskellorne5c', 'U7GPIK', 'Blancha', 'Skellorne', 'Buan', false);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (194, 'nbrunger5d', 'HAJD9nD4wb', 'Nerti', 'Brunger', 'Helsingborg', true);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (195, 'tcarnew5e', 'mfythUfdf', 'Torin', 'Carnew', 'Agenebode', false);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (196, 'ryarrow5f', 'tmnIT2EOdN', 'Roland', 'Yarrow', 'Ukhta', true);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (197, 'elestrange5g', 'IJ9VGcGaLM0', 'Esdras', 'Le Strange', 'Baishi', true);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (198, 'jmcgilvra5h', 'cBJ7XacY', 'Jarrad', 'McGilvra', 'Yangqiao', true);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (199, 'hbasli5i', 'ZFVbqA3ehg', 'Herculie', 'Bassilashvili', 'Smiřice', false);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (200, 'shalliburton5j', 'N6A5msLefe', 'Selestina', 'Halliburton', 'Hamilton', true);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (201, 'pcuthbertson5k', 'r7kD8W', 'Porty', 'Cuthbertson', 'Yuzui', true);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (202, 'glorente5l', 'YFKY2lRy', 'George', 'Lorente', 'Torino', true);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (203, 'cboddis5m', 'NkDLYDpHcu', 'Cecile', 'Boddis', 'Rongxing', true);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (204, 'adurand5n', 'Qs5kIXN8', 'Anallese', 'Durand', 'Samagaltay', true);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (205, 'pvell5o', 'aFzbxSc', 'Perceval', 'Vell', 'Luyang', false);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (206, 'tdrache5p', 'HRg1TlU', 'Tony', 'Drache', 'Ostroměř', false);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (207, 'nrosen5q', 'nfZtTXopc', 'Nedda', 'Rosen', 'Jonava', false);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (208, 'ihaddleston5r', 'Whq5WQtav', 'Ingeborg', 'Haddleston', 'Morteros', true);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (209, 'wchipp5s', 'z77xVVXMJ', 'Wylma', 'Chipp', 'Sasayama', false);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (210, 'sbutler5t', 'Ji6ZcU', 'Sharona', 'Butler', 'Tyresö', false);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (211, 'fdinse5u', '9C4CXpu', 'Filberte', 'Dinse', 'Hamm', true);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (212, 'rcuthbertson5v', 'tcmUp7tC5Z', 'Rosemarie', 'Cuthbertson', 'Lebedinovka', false);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (213, 'tcorwood5w', 'P6a0OQvJV', 'Tomaso', 'Corwood', 'Hetang', false);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (214, 'rwrack5x', 'L22BXCN191', 'Rolph', 'Wrack', 'Zhuhong', false);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (215, 'vnussey5y', 'zYbNXG06q', 'Vernen', 'Nussey', 'Dadianzi', false);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (216, 'lannand5z', '7MsiVqR', 'Loutitia', 'Annand', 'Dinaig', true);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (217, 'lspiteri60', 'P36zqKt', 'Lisabeth', 'Spiteri', 'Itacarambi', false);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (218, 'ogurner61', 'DlOgkex', 'Otto', 'Gurner', 'Ikeja', true);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (219, 'mmcrobert62', '9T695oVhgb', 'Marilee', 'McRobert', 'Askiz', false);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (220, 'dglaves63', 'zMuCRnT', 'Delmer', 'Glaves', 'Jawand', false);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (221, 'rtenniswood64', 'Lc1ohC', 'Raleigh', 'Tenniswood', 'Konduga', true);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (222, 'dpidon65', 'LiHhRdR', 'Dion', 'Pidon', 'Kumalarang', true);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (223, 'bcohalan66', 'BzeFtj8HlvD', 'Bobina', 'Cohalan', 'Santo Antônio do Amparo', false);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (224, 'chambleton67', '86G0Y9S', 'Charmaine', 'Hambleton', 'Tuamese', false);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (225, 'cretchless68', 'IN5k7y3', 'Carol', 'Retchless', 'Sebadelhe', false);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (226, 'smaccolm69', '1d0BzfAKej', 'Spike', 'MacColm', 'Kiangan', true);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (227, 'jmantrip6a', 'CQOsWRRBTmIl', 'Jacqueline', 'Mantrip', 'Räpina', false);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (228, 'mjerche6b', 'go6nETk', 'Monica', 'Jerche', 'Červené Pečky', true);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (229, 'ecutmere6c', 'a2ZnA3jW', 'Elbert', 'Cutmere', 'Sainyabuli', true);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (230, 'jhenighan6d', 'k49jMQHg', 'Jarred', 'Henighan', 'Sidi Moussa', true);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (231, 'aarnall6e', 'wLIkKCi', 'Ashlie', 'Arnall', 'Intipucá', false);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (232, 'jbrickstock6f', 'ZeZlPIOmKTil', 'Joni', 'Brickstock', 'Bardalah', true);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (233, 'tsommerton6g', 'dJ3bDF8', 'Tiphanie', 'Sommerton', 'Panalingaan', true);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (234, 'ajoinsey6h', 'uCAzxEO8A2r', 'Arabele', 'Joinsey', 'Tartu', true);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (235, 'gvandecastele6i', 'hn9s8FbMa', 'Gerry', 'Van de Castele', 'Tetyushi', false);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (236, 'dvink6j', 'orKP04IoLRM', 'Dolley', 'Vink', 'Banjar', true);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (237, 'nblacklawe6k', '8J0AILT', 'Ninnette', 'Blacklawe', 'Chenôve', false);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (238, 'skeeffe6l', 'mQuGyu', 'Skell', 'Keeffe', 'Tulay', true);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (239, 'aneathway6m', 'gAzcVrkvjk', 'Augy', 'Neathway', 'Salon-de-Provence', true);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (240, 'mmardy6n', 'M97KEIX', 'Marilyn', 'Mardy', 'Charlottenberg', true);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (241, 'rdanielot6o', 'f5TWj1egwxTU', 'Rudiger', 'Danielot', 'Marfino', false);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (242, 'lferentz6p', 'hgv2uwN', 'Lindy', 'Ferentz', 'La Unión', true);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (243, 'caldcorn6q', 'P3FO5Bq', 'Curr', 'Aldcorn', 'Dardhas', true);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (244, 'ppritchitt6r', 'zWOTQdsD', 'Phyllis', 'Pritchitt', 'Chojata', false);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (245, 'acapenor6s', 'mpuRE1P', 'Annamarie', 'Capenor', 'Compostela', false);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (246, 'lpitrasso6t', '519duf', 'Lanny', 'Pitrasso', 'Ibotirama', true);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (247, 'dflanigan6u', 'fRSBBiYOg', 'Dion', 'Flanigan', 'Coxim', false);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (248, 'plethbrig6v', 'c9Iwrv25C', 'Paul', 'Lethbrig', 'Myingyan', true);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (249, 'cvalerius6w', 'L1ElBDbg2wL', 'Candra', 'Valerius', 'Shangjia', true);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (250, 'ecarrivick6x', 'cVOqaYpLxA', 'Eula', 'Carrivick', 'Mamfe', true);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (251, 'kstanmore6y', 'EQpbjBw', 'Kaiser', 'Stanmore', 'Gunungmanik', true);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (252, 'tcoare6z', '7hCKjxbr', 'Tressa', 'Coare', 'Managua', true);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (253, 'tnattriss70', '8EGx9N8Mq3xE', 'Teena', 'Nattriss', 'Jaciara', true);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (254, 'bkillingback71', 'dkdGI0JXKDl', 'Burnaby', 'Killingback', 'Dushang', true);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (255, 'plesper72', '9ATeKmnS4C', 'Prinz', 'Lesper', 'Jianshe', false);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (256, 'atheunissen73', 'RCR4KjZ', 'Arther', 'Theunissen', 'Gaocang', true);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (257, 'telbourne74', 'UwWiUrF03sW8', 'Toinette', 'Elbourne', 'Jerada', false);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (258, 'lrouchy75', 'AFfs2SU', 'Leann', 'Rouchy', 'Torino', false);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (259, 'sbretherton76', 'uhz29b01dk', 'Sigrid', 'Bretherton', 'Fargo', true);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (260, 'tluty77', 'NJBI4TNiG9v', 'Timmie', 'Luty', 'Cowansville', true);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (261, 'kbarkus78', 'yzcNZ8lo', 'Karalee', 'Barkus', 'Batroûn', true);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (262, 'tpenas79', 'VhZe8kAC', 'Tabbi', 'Penas', 'Fenhe', true);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (263, 'sgoodhand7a', 'WBttyZt8LGTM', 'Stephi', 'Goodhand', 'Biguaçu', true);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (264, 'rcraw7b', '0cBFJqPCBIg', 'Rena', 'Craw', 'El Paso', true);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (265, 'ecoulsen7c', '1dOIjN', 'Ernest', 'Coulsen', 'Apaga', true);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (266, 'knoades7d', 'uNnyas', 'Kare', 'Noades', 'Quilo-quilo', false);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (267, 'rdepaepe7e', '4gdnlQ', 'Robbie', 'De Paepe', 'Thạnh Hóa', false);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (268, 'tfranscioni7f', 'ti1FYfv2Am2', 'Trixie', 'Franscioni', 'Lages', true);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (269, 'lbram7g', 'E1ugIK2lw', 'Laurent', 'Bram', 'Nowy Dwór Gdański', false);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (270, 'chawkes7h', 'eofx4ngx2T', 'Colas', 'Hawkes', 'Matinao', true);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (271, 'ljarritt7i', 'XYP5nPNs0q', 'Lyndy', 'Jarritt', 'Simpang', false);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (272, 'hshere7j', 'EfmwuC1ynC5v', 'Helge', 'Shere', 'Velikiye Borki', true);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (273, 'sshovel7k', 'NXp3SjNQEdQ', 'Sheila', 'Shovel', 'Hunkuyi', false);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (274, 'ltumilty7l', 'oBD1YP6', 'Lauretta', 'Tumilty', 'Cô Tô', true);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (275, 'kbreslin7m', 'xbTHcHVNo', 'Kaela', 'Breslin', 'Gomel', false);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (276, 'jjozsef7n', '4xtKqrYSW', 'Jilly', 'Jozsef', 'Nagu', true);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (277, 'ccabotto7o', 'NlpzYjSSw', 'Camala', 'Cabotto', 'Goubétto', true);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (278, 'pbeedle7p', 'dBrRedAB7', 'Piggy', 'Beedle', 'Sanhe', true);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (279, 'ehryskiewicz7q', 'OLsDYMNFhkx', 'Ewell', 'Hryskiewicz', 'Karagay', true);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (280, 'cbernardin7r', 'LhZA5d0', 'Clari', 'Bernardin', 'Weetombo', false);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (281, 'gtander7s', 'DbqHBMHZRp', 'Gael', 'Tander', 'Kikinda', false);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (282, 'jbolgar7t', 'WcotNdvQR', 'Jud', 'Bolgar', '‘Ayn al Bayḑā', true);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (283, 'rfleischmann7u', 'jJsmJrJGfXrj', 'Rebecca', 'Fleischmann', 'Tebingtinggi', false);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (284, 'lmatsell7v', 'YhdV759com', 'Laird', 'Matsell', 'Kärdla', false);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (285, 'zexell7w', '3n1cZPNAGU', 'Zelig', 'Exell', 'Värmdö', true);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (286, 'mrickerby7x', 'bNh1FPfr', 'Moyra', 'Rickerby', 'Kafr az Zayyāt', false);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (287, 'bsawart7y', 'FUfYdHdf7j', 'Broddie', 'Sawart', 'Komi', false);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (288, 'isprowell7z', 'Pxdgro5m0i', 'Irina', 'Sprowell', 'Dian-ay', false);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (289, 'mcoard80', '8pof5vi', 'Malvin', 'Coard', 'Cahuacho', true);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (290, 'fstothard81', '2f5mazsGuu90', 'Francisca', 'Stothard', 'Gandrungmangu', true);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (291, 'vpurrier82', 'UYYu7Y', 'Vivianna', 'Purrier', 'Huaquillas', true);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (292, 'hchilds83', 'YTh8ifuBqci3', 'Harcourt', 'Childs', 'Champaign', true);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (293, 'wspensley84', 'ltxnIY', 'Wood', 'Spensley', 'Mitrópoli', false);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (294, 'cmacquarrie85', 'tGx3ve', 'Celestyn', 'MacQuarrie', 'Lixu', true);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (295, 'rcorgenvin86', '8BOVMLKY5LwZ', 'Regan', 'Corgenvin', 'Erátyra', false);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (296, 'kfermer87', 'So43EXtfowL', 'Klaus', 'Fermer', 'Tyoply Stan', false);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (297, 'bkedge88', 'yrgfKn', 'Bondon', 'Kedge', 'Middelburg', false);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (298, 'cedmans89', 'UVtEbI3WDfo', 'Cori', 'Edmans', 'Tebingtinggi', false);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (299, 'nsolan8a', 'WMSKJxRzAnH9', 'Nessi', 'Solan', 'Akunk’', true);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (300, 'mstrainge8b', 'm1eUl7bR', 'Monika', 'Strainge', 'Puerto Santander', true);
insert into user (iduser, username, password, first_name, last_name, city, favorite_band) values (0, 'admin', 'admin', 'admin', 'admin', 'admin', 'admin');

insert into band VALUES(null,"Queen","La mejor banda de rock","","Rock");

insert into band VALUES(null,"The Beatles","El más admirado y popular de la década de 1960","","Rock");

insert into band VALUES(null,"Metallica","La mejor banda de metal","","Thrash metal");

insert into band Values(null,"Duki","El máximo exponente del trap argentino","Duki","Trap");

insert into band Values(null,"Malú","Cantante de pop español","Malú","Pop");


INSERT INTO `ventradas`.`concert` (`id_concert`, `concert_name`, `city`, `amount_tickets`, `src`, `date`, `id_band`) VALUES (null, 'God Save The Queen', 'Marbella', '200', 'https://i.imgur.com/BRSY8Dk.jpg', '2019-6-3', '1');
INSERT INTO `ventradas`.`concert` (`id_concert`, `concert_name`, `city`, `amount_tickets`, `src`, `date`, `id_band`) VALUES (null, 'Hijo de la noche', 'Murcia', '50', 'https://i.imgur.com/b1PNdJ3.jpg', '2019-6-30', '4');
INSERT INTO `ventradas`.`concert` (`id_concert`, `concert_name`, `city`, `amount_tickets`, `src`, `date`, `id_band`) VALUES (null, 'Oxigeno tour', 'Sevilla', '200', 'https://i.imgur.com/SbBm9l9.png', '2019-5-23', '5');

insert into tickets values(null,"10","1");

insert into tickets values(null,"30","2");

insert into tickets values(null,"5","3");
