use ventradas;

describe band;

-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema ventradas
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema ventradas
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `ventradas` DEFAULT CHARACTER SET utf8 ;
-- -----------------------------------------------------
-- Schema ventradas
-- -----------------------------------------------------
USE `ventradas` ;

-- -----------------------------------------------------
-- Table `ventradas`.`user`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ventradas`.`user` (
  `iduser` INT NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(15) NOT NULL,
  `password` VARCHAR(45) NOT NULL,
  `firstName` VARCHAR(80) NOT NULL,
  `lastName` VARCHAR(45) NOT NULL,
  `city` VARCHAR(45) NULL,
  `favoriteBand` VARCHAR(45) NULL,
  PRIMARY KEY (`iduser`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ventradas`.`band`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ventradas`.`band` (
  `idband` INT NOT NULL AUTO_INCREMENT,
  `bandName` VARCHAR(100) NOT NULL,
  `description` VARCHAR(200) NULL,
  `components` VARCHAR(45) NULL,
  `genre` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`idband`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ventradas`.`concert`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ventradas`.`concert` (
  `concertName` VARCHAR(100) NOT NULL,
  `city` VARCHAR(45) NOT NULL,
  `amoutTickets` INT NULL,
  `band_idband` INT NOT NULL,
  `band_idband1` INT NOT NULL,
  PRIMARY KEY (`band_idband`),
  INDEX `fk_concert_band1_idx` (`band_idband1` ASC),
  CONSTRAINT `fk_concert_band1`
    FOREIGN KEY (`band_idband1`)
    REFERENCES `ventradas`.`band` (`idband`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ventradas`.`buy`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ventradas`.`buy` (
  `idBuy` INT NOT NULL,
  `user_iduser` INT NOT NULL,
  PRIMARY KEY (`idBuy`),
  INDEX `fk_buy_user1_idx` (`user_iduser` ASC),
  CONSTRAINT `fk_buy_user1`
    FOREIGN KEY (`user_iduser`)
    REFERENCES `ventradas`.`user` (`iduser`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ventradas`.`tickets`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ventradas`.`tickets` (
  `idtickets` INT NOT NULL,
  `price` INT NOT NULL,
  `concert_band_idband` INT NOT NULL,
  `buy_id` INT NOT NULL,
  PRIMARY KEY (`idtickets`),
  INDEX `fk_tickets_concert1_idx` (`concert_band_idband` ASC),
  INDEX `fk_tickets_buy1_idx` (`buy_id` ASC),
  CONSTRAINT `fk_tickets_concert1`
    FOREIGN KEY (`concert_band_idband`)
    REFERENCES `ventradas`.`concert` (`band_idband`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tickets_buy1`
    FOREIGN KEY (`buy_id`)
    REFERENCES `ventradas`.`buy` (`idBuy`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

*/



insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (1, 'kbackshill0', 'Y0WVJsFJDP', 'Keen', 'Backshill', 'North Shore', false);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (2, 'hackenson1', 'Nhb55COBu', 'Herrick', 'Ackenson', 'Boston', true);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (3, 'ssauvan2', 'SLHyX4Ff', 'Shanan', 'Sauvan', 'Meishan', false);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (4, 'asprason3', 'KFJJoJC', 'Adria', 'Sprason', 'Gabahan', false);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (5, 'achoake4', 'w4U6rRC', 'Anderea', 'Choake', 'Changyŏn', false);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (6, 'bellwell5', 'mNSaSA', 'Berget', 'Ellwell', 'Cisiih', true);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (7, 'aguierre6', '71054Rlp', 'Aldus', 'Guierre', 'Sibulan', false);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (8, 'ehillan7', 'wnWGvHcuOpL', 'Elisa', 'Hillan', 'Xinpu', true);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (9, 'prisen8', '5hi1MXa4', 'Phyllida', 'Risen', 'Kamiichi', true);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (10, 'wbannerman9', 'SrMx3IGq3c', 'Wilton', 'Bannerman', 'Doudleby nad Orlicí', false);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (11, 'smidghalla', 'uAVbqvM9iZQ', 'Si', 'Midghall', 'Ueda', false);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (12, 'dlamploughb', 'ckHh74b', 'Doralynne', 'Lamplough', 'Yanyang', false);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (13, 'pbrookesc', 'MSizKpI', 'Petra', 'Brookes', 'San Isidro', false);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (14, 'csutterd', 'X1vUVFs', 'Collete', 'Sutter', 'Tafí del Valle', false);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (15, 'tczajkowskie', '8MRRyHtSghls', 'Tiffy', 'Czajkowski', 'Manutapen', true);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (16, 'mpregalf', 'IjncRq7Od8v7', 'Mathilda', 'Pregal', 'San Jose', false);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (17, 'hdymidowiczg', 'f2j48ccMj', 'Heddie', 'Dymidowicz', 'Gaocheng', false);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (18, 'gzorzih', 'siArtDu2hm', 'Giorgio', 'Zorzi', 'Bibai', false);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (19, 'pmacneillyi', 'Eege6T', 'Pennie', 'MacNeilly', 'Río', false);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (20, 'nblumj', '4FFQpNll', 'Niels', 'Blum', 'Potrerillos', false);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (21, 'ttatumk', 'f5CtcY', 'Torrance', 'Tatum', 'Sheki', false);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (22, 'jartisl', 'b94WhaYu', 'Jamesy', 'Artis', 'Zhuangbu', false);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (23, 'sbutlerm', 'pOYkRP', 'Selestina', 'Butler', 'Gornyye Klyuchi', true);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (24, 'kwaldockn', '2eDoFIU3m', 'Karissa', 'Waldock', 'Huiyi', false);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (25, 'bkaplano', 'i2HxlBK', 'Brittani', 'Kaplan', 'Opochka', true);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (26, 'mmantzp', '6ht5cv', 'Murray', 'Mantz', 'Gobernador Gálvez', false);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (27, 'emacanespieq', 'rviOnPV', 'Etti', 'MacAnespie', 'Morfovoúni', true);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (28, 'byesichevr', 'UA1CDT6R0L', 'Burlie', 'Yesichev', 'Arrabal', false);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (29, 'ktowerseys', 'Ll3WWzJKwy', 'Kara', 'Towersey', 'Kirkland Lake', false);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (30, 'cokellehert', '913JkdFAO', 'Claribel', 'O'' Kelleher', 'Landskrona', false);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (31, 'sbiswellu', 'kYLqUz5ktCku', 'Shaine', 'Biswell', 'Jacksonville', true);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (32, 'jorpinv', '0ruQDOHekCVN', 'Jeanna', 'Orpin', 'Al Ḩashwah', true);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (33, 'jpoulglaisw', 'iZqijyD6b', 'Jenn', 'Poulglais', 'Mvuma', true);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (34, 'fquaylex', 'wY2RlHuU', 'Fayre', 'Quayle', 'Vroutek', false);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (35, 'cebrally', 'NDRpBE', 'Caprice', 'Ebrall', 'Greensboro', true);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (36, 'mdahlborgz', 'POzggOvzYTEm', 'Maxie', 'Dahlborg', 'Mojorejo', true);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (37, 'dmallon10', 'JZiKQQpx8', 'Darline', 'Mallon', 'Ōmagari', true);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (38, 'mdickie11', 'pFGmY0xP', 'Misty', 'Dickie', 'El Coco', true);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (39, 'shultberg12', 'i9uOXctFOC', 'Spence', 'Hultberg', 'Chaumont', false);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (40, 'scouser13', 'x5EFO6', 'Shayne', 'Couser', 'Bungur', true);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (41, 'ddeclercq14', 'pxHxp65', 'Doy', 'de Clercq', 'Ramon Magsaysay', true);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (42, 'gcuddihy15', 'V86vXtl2cZ', 'Giffard', 'Cuddihy', 'Itō', true);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (43, 'jdulton16', 'Zd2XXBgU', 'Jennette', 'Dulton', 'Qinggis Han', true);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (44, 'sbeinisch17', 'B2Tbq19rMvy7', 'Sheridan', 'Beinisch', 'Pointe-à-Pitre', false);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (45, 'cdowner18', 'IpS3uVJ', 'Chandler', 'Downer', 'Pajak', false);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (46, 'dbray19', 'iPQhdqg6', 'Daryl', 'Bray', 'Surkhet', true);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (47, 'lsiddeley1a', 'L0cZBbrI654', 'Liliane', 'Siddeley', 'Napier', true);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (48, 'wlawther1b', '9sUxTmA', 'Waly', 'Lawther', 'Sorongan', true);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (49, 'ghadye1c', 'PxYFy32HapO', 'Gisela', 'Hadye', 'Muquiyauyo', false);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (50, 'aolland1d', '2aQsljNfzF', 'Adeline', 'Olland', 'Telangi Satu', false);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (51, 'jburrage1e', 'DP8YYL9SnLK1', 'Jedidiah', 'Burrage', 'Wichit', true);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (52, 'blandman1f', 'wKNy86gKI8C4', 'Bertie', 'Landman', 'Couto', false);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (53, 'ddecayette1g', 'Uun4na6q', 'Dacia', 'Decayette', 'Budapest', true);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (54, 'avashchenko1h', 'TmJGAvnq', 'Aurora', 'Vashchenko', 'San Clemente', false);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (55, 'mcaban1i', 'xWQTeYb6g3lK', 'Mariellen', 'Caban', 'Długosiodło', true);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (56, 'rvannuccinii1j', '2wlIqwbQxkfW', 'Roch', 'Vannuccinii', 'Nouméa', false);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (57, 'astoyle1k', 'grSZpY', 'Abbey', 'Stoyle', 'Brive-la-Gaillarde', true);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (58, 'abertelsen1l', '40Uzlh3zIxW', 'Augy', 'Bertelsen', 'Gaiyang', true);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (59, 'wmacneil1m', 'cNknqyz', 'Wally', 'MacNeil', 'General Pico', false);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (60, 'fkincla1n', 'Z2wdL7UK9F', 'Flory', 'Kincla', 'Cortes', true);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (61, 'dfilipychev1o', 'klD8sEeixda', 'Delmar', 'Filipychev', 'Cill Airne', false);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (62, 'dsquirrel1p', 'a16wmOQEw', 'Darin', 'Squirrel', 'Białołeka', true);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (63, 'tmanvell1q', 'Cp2rlGB2', 'Tristan', 'Manvell', 'Jintan', true);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (64, 'hwhapples1r', 'bCgdTTa', 'Hephzibah', 'Whapples', 'Turku', true);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (65, 'dlidgard1s', 'NdE5LUz9f', 'Dolly', 'Lidgard', 'Cairima', false);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (66, 'ngeorgiades1t', 'DnUAXECDNnA', 'Natalee', 'Georgiades', 'Lewotola', true);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (67, 'swreford1u', 'wzW1lfbAH02', 'Sallyann', 'Wreford', 'Mandalt', true);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (68, 'jcruickshanks1v', 'eq1h5RwN171', 'Janeczka', 'Cruickshanks', 'Timóteo', true);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (69, 'cbenduhn1w', 'Ia5eTBf', 'Clarie', 'Benduhn', 'Porto Salvo', false);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (70, 'ejolliffe1x', 'EtE3eUpv29', 'Eolande', 'Jolliffe', 'Jeremi', false);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (71, 'nsignorelli1y', 'osH485l', 'Nessie', 'Signorelli', 'Bačka Topola', true);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (72, 'kbastow1z', 'Nm0Hb035A', 'Karel', 'Bastow', 'Musawa', true);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (73, 'ahambelton20', '0yo2PvQLi', 'Alyce', 'Hambelton', 'Hněvotín', true);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (74, 'efairrie21', 'd7vwxcrSfGS', 'Erwin', 'Fairrie', 'Banjar Dauhpura', false);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (75, 'wbattany22', 'cn8jRPcLUh', 'Wilone', 'Battany', 'San Antonio de los Baños', false);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (76, 'hfearnsides23', 'nK159V5zp', 'Heddie', 'Fearnsides', 'Babo-Pangulo', true);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (77, 'mtiplady24', '7DNGjc', 'Miquela', 'Tiplady', 'Örebro', false);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (78, 'ccarlick25', 'KZ4SOa', 'Cornie', 'Carlick', 'Élancourt', false);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (79, 'jlardeur26', 'PUQTJ3Bk6', 'Jerald', 'Lardeur', 'Cungapmimbo', true);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (80, 'aibeson27', 'Lv02iQK', 'Anitra', 'Ibeson', 'Lyamino', true);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (81, 'ssartin28', 'RlH7E5B7px', 'Sidoney', 'Sartin', 'Homa Bay', false);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (82, 'dfitzmaurice29', '44iDBCo', 'Darrin', 'Fitzmaurice', 'Heshi', true);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (83, 'nharriskine2a', '2dJQqT42kDk', 'Nickolaus', 'Harriskine', 'Penanggapan', false);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (84, 'cgrinov2b', '5LmONXQ8', 'Claresta', 'Grinov', 'Wuli', false);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (85, 'tbrouard2c', 'KBUrwHNeCzp', 'Tallie', 'Brouard', 'Tullamore', false);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (86, 'eohannigan2d', 'dJr06b4N', 'Elysia', 'O''Hannigan', 'Berbérati', false);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (87, 'pmarl2e', 'NmhzHgOkAXx', 'Padgett', 'Marl', 'Velké Meziříčí', false);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (88, 'ldiangelo2f', 'oo5DogeGz', 'Lauri', 'Di Angelo', 'Anchorage', true);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (89, 'mleguin2g', 'Ai7ZDivYLk', 'Merle', 'Le Guin', 'Huajie', false);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (90, 'rderrett2h', 'hFTNn4E821', 'Royce', 'Derrett', 'Wangcheng', false);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (91, 'qhardiker2i', 'drcZG6ucD', 'Quinn', 'Hardiker', 'Strängnäs', true);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (92, 'lchisholm2j', 'NMFqieQRj3', 'Linus', 'Chisholm', 'Fomento', false);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (93, 'sshermar2k', 'pI80E3', 'Samantha', 'Shermar', 'Haysyn', true);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (94, 'wraddish2l', 'XSH40GWxi', 'Winonah', 'Raddish', 'Karano', true);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (95, 'kdockrill2m', 'JuGe6mVx3I9', 'Kristi', 'Dockrill', 'Pantenan', false);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (96, 'esedger2n', 'BkDqA0wBzU', 'Erin', 'Sedger', 'Albarraque', true);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (97, 'romoylan2o', 'YciLfimVNSZB', 'Reggi', 'O''Moylan', 'Dayong', true);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (98, 'mbendare2p', '10QpjH2', 'Mandy', 'Bendare', 'Nagosela', true);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (99, 'agimbart2q', 'jjCvE6F', 'Alain', 'Gimbart', 'Zebrzydowice', true);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (100, 'kaloway2r', 'hkqBZ9IUfauX', 'Kalinda', 'Aloway', 'Porto Martins', false);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (101, 'kdrover2s', 'EHi602wo', 'Kliment', 'Drover', 'Särö', false);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (102, 'gitzkovwitch2t', 'rkH6DrGnN', 'Geoffrey', 'Itzkovwitch', 'Šoštanj', true);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (103, 'dcavan2u', 'Z8fuSbaTXl', 'Donn', 'Cavan', 'Sambilawang', true);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (104, 'lbalmforth2v', 'H6nT6gZ5DUz', 'Lindsy', 'Balmforth', 'Thung Khru', true);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (105, 'aegger2w', 'axVrHo9', 'Angelita', 'Egger', 'Trzin', false);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (106, 'dstephen2x', '0ajya8kN5e', 'Desiri', 'Stephen', 'Sumeng', true);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (107, 'ajacobowits2y', 'WkR20n6DK8FB', 'Alfons', 'Jacobowits', 'Hudson Bay', false);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (108, 'escudder2z', 'ggLjqQAJjoM6', 'Elston', 'Scudder', 'Albergaria', false);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (109, 'aben30', 'oRGuDrx1pEa', 'Abby', 'Ben', 'Nice', true);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (110, 'vklageman31', 'dVfSJCfI', 'Vasilis', 'Klageman', 'Mādabā', true);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (111, 'bgillam32', 'fTTzkNH9i', 'Betteanne', 'Gillam', 'Kashirskoye', false);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (112, 'ematschuk33', 'kvyvzhO', 'Eileen', 'Matschuk', 'Granada', true);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (113, 'tdomenici34', 'U5RidgDtvn', 'Tony', 'Domenici', 'Bofuer', true);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (114, 'sbeagin35', '6D3ktlR', 'Sheree', 'Beagin', 'Koshki', true);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (115, 'goldfield36', 'y8DN7Rcd0', 'Geordie', 'Oldfield', 'Mogapinyana', false);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (116, 'mzelley37', 'HNTGALhb', 'Maryellen', 'Zelley', 'Jinyuan', true);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (117, 'hbursnoll38', 'LyIuzV2UrD', 'Heida', 'Bursnoll', 'Larnaca', true);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (118, 'saxworthy39', '8b3XTuUg5n', 'Shaylah', 'Axworthy', 'Jiahe', true);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (119, 'kaneley3a', 'HpzDggNBc', 'Kim', 'Aneley', 'Bofuer', false);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (120, 'ebagot3b', 'Xu3OM7Z17R', 'Elora', 'Bagot', 'Limbi', false);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (121, 'sthick3c', 'eP6S7VS', 'Selia', 'Thick', 'Sunne', true);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (122, 'nkelberman3d', 'bycEXTFc5F6', 'Nolie', 'Kelberman', 'Caucaguita', true);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (123, 'epountney3e', 'rC1mBzhn', 'Emlen', 'Pountney', 'Särevere', false);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (124, 'dfindlater3f', '7uqe7YxvZ94', 'Deena', 'Findlater', 'Gnosjö', false);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (125, 'bpollack3g', 'A3fL7AD9PMeI', 'Baird', 'Pollack', 'Masinloc', true);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (126, 'zelloway3h', 'kvHoPp', 'Zorine', 'Elloway', 'Tiksi', false);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (127, 'giwanczyk3i', 'Pltsnp2', 'Godfry', 'Iwanczyk', 'Krajan Langenharjo', true);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (128, 'jgettens3j', 'nqRABz69Mp', 'Jessa', 'Gettens', 'Ludwin', true);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (129, 'jgristwood3k', 'bjKSeUATFt7O', 'Janetta', 'Gristwood', 'Ban Phue', true);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (130, 'dplumbridge3l', 'OJgWgM', 'Denys', 'Plumbridge', 'Chitral', true);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (131, 'emoresby3m', 'Wd5Kqon', 'Erroll', 'Moresby', 'Pomacocha', false);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (132, 'dtollady3n', 'axYs6cy', 'Durward', 'Tollady', 'Huanipaca', true);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (133, 'fgadie3o', 'JnuZsxj63SLF', 'Freeman', 'Gadie', 'Twardogóra', false);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (134, 'tmeuse3p', 'FbhnEGa9', 'Truman', 'Meuse', 'Pompéia', true);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (135, 'cmartynov3q', 'HYCroV', 'Cordelia', 'Martynov', 'Purorejo', true);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (136, 'acamilli3r', 'fWb3mJy1', 'Anders', 'Camilli', 'Illushi', true);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (137, 'ilaverack3s', 'uClYodSdTF', 'Iain', 'Laverack', 'Alhos Vedros', false);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (138, 'ktowndrow3t', '7n8venq', 'Karisa', 'Towndrow', 'Hebian', false);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (139, 'avonnassau3u', 'yXFakbtrZE', 'Allan', 'von Nassau', 'Toulouse', true);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (140, 'bdolphin3v', 'NKH98VCWoN', 'Barret', 'Dolphin', 'Baicaogou', false);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (141, 'rhatfull3w', 'rD2C4BN8', 'Rockie', 'Hatfull', 'Mosteirô', false);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (142, 'lyukhin3x', 'ku4an2tC09', 'Liane', 'Yukhin', 'Uthai', true);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (143, 'bgossipin3y', 'GFI28Jhdr95F', 'Bibbye', 'Gossipin', 'Heba', true);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (144, 'vyuryev3z', 'uSFw80Owc', 'Vlad', 'Yuryev', 'Anh Son', false);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (145, 'cfuggles40', 'xmaanV', 'Catlaina', 'Fuggles', 'Nizhniy Lomov', false);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (146, 'pwhitloe41', 'SYWoUPadLynR', 'Peg', 'Whitloe', 'Selmes', true);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (147, 'sstallan42', 'pI5DbmzZZ', 'Sybyl', 'Stallan', 'Kalodu', false);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (148, 'ljilliss43', 'cYJxZRyQKsvf', 'Letta', 'Jilliss', 'Suru', false);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (149, 'eharvard44', 'udVIvmzh8E6', 'Emiline', 'Harvard', 'Skomielna Czarna', false);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (150, 'santuk45', 'Y3qZj3gGd4Wh', 'Sheilah', 'Antuk', 'Kirkton', true);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (151, 'nplet46', 'r7iAeP', 'Nissy', 'Plet', 'Lamas', false);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (152, 'dblondell47', 'm49YuPOMdYNN', 'Derek', 'Blondell', 'Swellendam', true);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (153, 'ndey48', 'LeihWYXLCp', 'Nicola', 'Dey', 'Jieduo', false);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (154, 'efownes49', '7FzdE5snSTm', 'Eunice', 'Fownes', 'Nueva Italia', true);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (155, 'fbaytrop4a', '6wm7JpCY', 'Felic', 'Baytrop', 'Boca Raton', false);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (156, 'cedelheit4b', 'gDtnTXS5lk', 'Cecilia', 'Edelheit', 'Gniechowice', false);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (157, 'cengledow4c', 'WAmiKeOE', 'Conni', 'Engledow', 'Águas', false);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (158, 'kstorie4d', '277ab21MnRp', 'Keelia', 'Storie', 'Kashihara-shi', true);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (159, 'dmcgaughey4e', 'Qk79lGx4trY', 'Drusy', 'McGaughey', 'København', true);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (160, 'zstringman4f', 'OIdJfkJvwqwp', 'Zelig', 'Stringman', 'Zhusha', true);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (161, 'yealles4g', 'vOMQhLOosN0U', 'Yule', 'Ealles', 'Sanligang', true);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (162, 'ktheyer4h', 'zsByDKf', 'Kelwin', 'Theyer', 'Mataguži', true);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (163, 'mwarland4i', 'HXTCzUrCV', 'Mathe', 'Warland', 'Mazeikiai', true);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (164, 'ngronw4j', 'CYGB3V4', 'Nevin', 'Gronw', 'Wakkanai', false);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (165, 'jelston4k', 'CYXbUXd2H', 'Jeri', 'Elston', 'Fangxi', false);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (166, 'abuddock4l', 'UlZgrouAs26', 'Alasteir', 'Buddock', 'Digos', true);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (167, 'cdavioud4m', 'OC2TYEpeNG', 'Clareta', 'Davioud', 'Podkumskiy', false);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (168, 'wfragino4n', 'ccxmKwbUVU', 'Wilone', 'Fragino', 'Colonias Unidas', false);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (169, 'hmacmeekan4o', '8HNKecqHkFZ', 'Hayden', 'MacMeekan', 'La Esperanza', false);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (170, 'fpaslow4p', '2zOEdU1p', 'Franchot', 'Paslow', 'Maimará', false);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (171, 'terratt4q', 'joUZX4XC', 'Towney', 'Erratt', 'Llipa', true);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (172, 'whabberjam4r', 'LCuZSUdWIO', 'Wallis', 'Habberjam', 'Fresno', false);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (173, 'mprettyman4s', '2a90pv', 'Moira', 'Prettyman', 'Siquirres', false);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (174, 'vbroinlich4t', '57nblSwK4TnJ', 'Vivienne', 'Broinlich', 'Feteira Pequena', true);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (175, 'cfritzer4u', 'AxKSOJLUU', 'Cairistiona', 'Fritzer', 'Czerwieńsk', false);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (176, 'dsedgemore4v', 'bR1ACe6R', 'Dare', 'Sedgemore', 'Kefar Yona', false);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (177, 'npeacher4w', 'En6yRED7', 'Niles', 'Peacher', 'Hedong', false);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (178, 'jroset4x', 'ZsJfuc', 'Joelly', 'Roset', 'Chenhu', true);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (179, 'anorthcote4y', 'At7FWmFJz91', 'Arty', 'Northcote', 'Bozhou', true);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (180, 'sbellson4z', 'ROfIfBx', 'Stevy', 'Bellson', 'Myrnyy', false);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (181, 'rkibel50', 'zjYvon', 'Royal', 'Kibel', 'Embalse', true);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (182, 'acumberledge51', 'lONzbJUwrlV', 'Anthony', 'Cumberledge', 'Roma', false);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (183, 'cdelacote52', 'kh4hFn', 'Cherry', 'Delacote', 'Dawa-Dawa', true);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (184, 'rwedon53', 'wBWofGexr', 'Ringo', 'Wedon', 'Siaton', true);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (185, 'thugo54', 'G16dkJE1MQ4r', 'Thekla', 'Hugo', 'Pariti', false);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (186, 'nrubberts55', 'A3CmvVNkfzV', 'Nesta', 'Rubberts', 'Arish', false);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (187, 'rvarndall56', 'Q8yxdl', 'Rodge', 'Varndall', 'Polzela', false);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (188, 'vcaslin57', 'Pp0nLMv', 'Vivienne', 'Caslin', 'Xiyuan', false);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (189, 'rrigglesford58', 'vapFaq', 'Robbie', 'Rigglesford', 'Tavira', false);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (190, 'ptownsley59', 'eA7m8XWl', 'Parrnell', 'Townsley', 'São Mateus do Maranhão', true);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (191, 'dchampion5a', 'x82nfIfchU', 'Deanna', 'Champion', 'Mawu', false);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (192, 'pbilsland5b', 'gXZu5y4UHg', 'Puff', 'Bilsland', 'Mwense', false);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (193, 'bskellorne5c', 'U7GPIK', 'Blancha', 'Skellorne', 'Buan', false);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (194, 'nbrunger5d', 'HAJD9nD4wb', 'Nerti', 'Brunger', 'Helsingborg', true);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (195, 'tcarnew5e', 'mfythUfdf', 'Torin', 'Carnew', 'Agenebode', false);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (196, 'ryarrow5f', 'tmnIT2EOdN', 'Roland', 'Yarrow', 'Ukhta', true);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (197, 'elestrange5g', 'IJ9VGcGaLM0', 'Esdras', 'Le Strange', 'Baishi', true);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (198, 'jmcgilvra5h', 'cBJ7XacY', 'Jarrad', 'McGilvra', 'Yangqiao', true);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (199, 'hbassilashvili5i', 'ZFVbqA3ehg', 'Herculie', 'Bassilashvili', 'Smiřice', false);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (200, 'shalliburton5j', 'N6A5msLefe', 'Selestina', 'Halliburton', 'Hamilton', true);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (201, 'pcuthbertson5k', 'r7kD8W', 'Porty', 'Cuthbertson', 'Yuzui', true);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (202, 'glorente5l', 'YFKY2lRy', 'George', 'Lorente', 'Torino', true);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (203, 'cboddis5m', 'NkDLYDpHcu', 'Cecile', 'Boddis', 'Rongxing', true);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (204, 'adurand5n', 'Qs5kIXN8', 'Anallese', 'Durand', 'Samagaltay', true);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (205, 'pvell5o', 'aFzbxSc', 'Perceval', 'Vell', 'Luyang', false);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (206, 'tdrache5p', 'HRg1TlU', 'Tony', 'Drache', 'Ostroměř', false);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (207, 'nrosen5q', 'nfZtTXopc', 'Nedda', 'Rosen', 'Jonava', false);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (208, 'ihaddleston5r', 'Whq5WQtav', 'Ingeborg', 'Haddleston', 'Morteros', true);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (209, 'wchipp5s', 'z77xVVXMJ', 'Wylma', 'Chipp', 'Sasayama', false);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (210, 'sbutler5t', 'Ji6ZcU', 'Sharona', 'Butler', 'Tyresö', false);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (211, 'fdinse5u', '9C4CXpu', 'Filberte', 'Dinse', 'Hamm', true);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (212, 'rcuthbertson5v', 'tcmUp7tC5Z', 'Rosemarie', 'Cuthbertson', 'Lebedinovka', false);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (213, 'tcorwood5w', 'P6a0OQvJV', 'Tomaso', 'Corwood', 'Hetang', false);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (214, 'rwrack5x', 'L22BXCN191', 'Rolph', 'Wrack', 'Zhuhong', false);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (215, 'vnussey5y', 'zYbNXG06q', 'Vernen', 'Nussey', 'Dadianzi', false);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (216, 'lannand5z', '7MsiVqR', 'Loutitia', 'Annand', 'Dinaig', true);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (217, 'lspiteri60', 'P36zqKt', 'Lisabeth', 'Spiteri', 'Itacarambi', false);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (218, 'ogurner61', 'DlOgkex', 'Otto', 'Gurner', 'Ikeja', true);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (219, 'mmcrobert62', '9T695oVhgb', 'Marilee', 'McRobert', 'Askiz', false);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (220, 'dglaves63', 'zMuCRnT', 'Delmer', 'Glaves', 'Jawand', false);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (221, 'rtenniswood64', 'Lc1ohC', 'Raleigh', 'Tenniswood', 'Konduga', true);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (222, 'dpidon65', 'LiHhRdR', 'Dion', 'Pidon', 'Kumalarang', true);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (223, 'bcohalan66', 'BzeFtj8HlvD', 'Bobina', 'Cohalan', 'Santo Antônio do Amparo', false);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (224, 'chambleton67', '86G0Y9S', 'Charmaine', 'Hambleton', 'Tuamese', false);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (225, 'cretchless68', 'IN5k7y3', 'Carol', 'Retchless', 'Sebadelhe', false);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (226, 'smaccolm69', '1d0BzfAKej', 'Spike', 'MacColm', 'Kiangan', true);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (227, 'jmantrip6a', 'CQOsWRRBTmIl', 'Jacqueline', 'Mantrip', 'Räpina', false);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (228, 'mjerche6b', 'go6nETk', 'Monica', 'Jerche', 'Červené Pečky', true);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (229, 'ecutmere6c', 'a2ZnA3jW', 'Elbert', 'Cutmere', 'Sainyabuli', true);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (230, 'jhenighan6d', 'k49jMQHg', 'Jarred', 'Henighan', 'Sidi Moussa', true);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (231, 'aarnall6e', 'wLIkKCi', 'Ashlie', 'Arnall', 'Intipucá', false);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (232, 'jbrickstock6f', 'ZeZlPIOmKTil', 'Joni', 'Brickstock', 'Bardalah', true);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (233, 'tsommerton6g', 'dJ3bDF8', 'Tiphanie', 'Sommerton', 'Panalingaan', true);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (234, 'ajoinsey6h', 'uCAzxEO8A2r', 'Arabele', 'Joinsey', 'Tartu', true);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (235, 'gvandecastele6i', 'hn9s8FbMa', 'Gerry', 'Van de Castele', 'Tetyushi', false);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (236, 'dvink6j', 'orKP04IoLRM', 'Dolley', 'Vink', 'Banjar', true);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (237, 'nblacklawe6k', '8J0AILT', 'Ninnette', 'Blacklawe', 'Chenôve', false);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (238, 'skeeffe6l', 'mQuGyu', 'Skell', 'Keeffe', 'Tulay', true);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (239, 'aneathway6m', 'gAzcVrkvjk', 'Augy', 'Neathway', 'Salon-de-Provence', true);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (240, 'mmardy6n', 'M97KEIX', 'Marilyn', 'Mardy', 'Charlottenberg', true);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (241, 'rdanielot6o', 'f5TWj1egwxTU', 'Rudiger', 'Danielot', 'Marfino', false);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (242, 'lferentz6p', 'hgv2uwN', 'Lindy', 'Ferentz', 'La Unión', true);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (243, 'caldcorn6q', 'P3FO5Bq', 'Curr', 'Aldcorn', 'Dardhas', true);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (244, 'ppritchitt6r', 'zWOTQdsD', 'Phyllis', 'Pritchitt', 'Chojata', false);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (245, 'acapenor6s', 'mpuRE1P', 'Annamarie', 'Capenor', 'Compostela', false);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (246, 'lpitrasso6t', '519duf', 'Lanny', 'Pitrasso', 'Ibotirama', true);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (247, 'dflanigan6u', 'fRSBBiYOg', 'Dion', 'Flanigan', 'Coxim', false);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (248, 'plethbrig6v', 'c9Iwrv25C', 'Paul', 'Lethbrig', 'Myingyan', true);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (249, 'cvalerius6w', 'L1ElBDbg2wL', 'Candra', 'Valerius', 'Shangjia', true);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (250, 'ecarrivick6x', 'cVOqaYpLxA', 'Eula', 'Carrivick', 'Mamfe', true);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (251, 'kstanmore6y', 'EQpbjBw', 'Kaiser', 'Stanmore', 'Gunungmanik', true);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (252, 'tcoare6z', '7hCKjxbr', 'Tressa', 'Coare', 'Managua', true);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (253, 'tnattriss70', '8EGx9N8Mq3xE', 'Teena', 'Nattriss', 'Jaciara', true);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (254, 'bkillingback71', 'dkdGI0JXKDl', 'Burnaby', 'Killingback', 'Dushang', true);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (255, 'plesper72', '9ATeKmnS4C', 'Prinz', 'Lesper', 'Jianshe', false);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (256, 'atheunissen73', 'RCR4KjZ', 'Arther', 'Theunissen', 'Gaocang', true);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (257, 'telbourne74', 'UwWiUrF03sW8', 'Toinette', 'Elbourne', 'Jerada', false);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (258, 'lrouchy75', 'AFfs2SU', 'Leann', 'Rouchy', 'Torino', false);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (259, 'sbretherton76', 'uhz29b01dk', 'Sigrid', 'Bretherton', 'Fargo', true);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (260, 'tluty77', 'NJBI4TNiG9v', 'Timmie', 'Luty', 'Cowansville', true);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (261, 'kbarkus78', 'yzcNZ8lo', 'Karalee', 'Barkus', 'Batroûn', true);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (262, 'tpenas79', 'VhZe8kAC', 'Tabbi', 'Penas', 'Fenhe', true);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (263, 'sgoodhand7a', 'WBttyZt8LGTM', 'Stephi', 'Goodhand', 'Biguaçu', true);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (264, 'rcraw7b', '0cBFJqPCBIg', 'Rena', 'Craw', 'El Paso', true);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (265, 'ecoulsen7c', '1dOIjN', 'Ernest', 'Coulsen', 'Apaga', true);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (266, 'knoades7d', 'uNnyas', 'Kare', 'Noades', 'Quilo-quilo', false);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (267, 'rdepaepe7e', '4gdnlQ', 'Robbie', 'De Paepe', 'Thạnh Hóa', false);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (268, 'tfranscioni7f', 'ti1FYfv2Am2', 'Trixie', 'Franscioni', 'Lages', true);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (269, 'lbram7g', 'E1ugIK2lw', 'Laurent', 'Bram', 'Nowy Dwór Gdański', false);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (270, 'chawkes7h', 'eofx4ngx2T', 'Colas', 'Hawkes', 'Matinao', true);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (271, 'ljarritt7i', 'XYP5nPNs0q', 'Lyndy', 'Jarritt', 'Simpang', false);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (272, 'hshere7j', 'EfmwuC1ynC5v', 'Helge', 'Shere', 'Velikiye Borki', true);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (273, 'sshovel7k', 'NXp3SjNQEdQ', 'Sheila', 'Shovel', 'Hunkuyi', false);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (274, 'ltumilty7l', 'oBD1YP6', 'Lauretta', 'Tumilty', 'Cô Tô', true);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (275, 'kbreslin7m', 'xbTHcHVNo', 'Kaela', 'Breslin', 'Gomel', false);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (276, 'jjozsef7n', '4xtKqrYSW', 'Jilly', 'Jozsef', 'Nagu', true);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (277, 'ccabotto7o', 'NlpzYjSSw', 'Camala', 'Cabotto', 'Goubétto', true);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (278, 'pbeedle7p', 'dBrRedAB7', 'Piggy', 'Beedle', 'Sanhe', true);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (279, 'ehryskiewicz7q', 'OLsDYMNFhkx', 'Ewell', 'Hryskiewicz', 'Karagay', true);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (280, 'cbernardin7r', 'LhZA5d0', 'Clari', 'Bernardin', 'Weetombo', false);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (281, 'gtander7s', 'DbqHBMHZRp', 'Gael', 'Tander', 'Kikinda', false);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (282, 'jbolgar7t', 'WcotNdvQR', 'Jud', 'Bolgar', '‘Ayn al Bayḑā', true);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (283, 'rfleischmann7u', 'jJsmJrJGfXrj', 'Rebecca', 'Fleischmann', 'Tebingtinggi', false);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (284, 'lmatsell7v', 'YhdV759com', 'Laird', 'Matsell', 'Kärdla', false);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (285, 'zexell7w', '3n1cZPNAGU', 'Zelig', 'Exell', 'Värmdö', true);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (286, 'mrickerby7x', 'bNh1FPfr', 'Moyra', 'Rickerby', 'Kafr az Zayyāt', false);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (287, 'bsawart7y', 'FUfYdHdf7j', 'Broddie', 'Sawart', 'Komi', false);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (288, 'isprowell7z', 'Pxdgro5m0i', 'Irina', 'Sprowell', 'Dian-ay', false);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (289, 'mcoard80', '8pof5vi', 'Malvin', 'Coard', 'Cahuacho', true);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (290, 'fstothard81', '2f5mazsGuu90', 'Francisca', 'Stothard', 'Gandrungmangu', true);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (291, 'vpurrier82', 'UYYu7Y', 'Vivianna', 'Purrier', 'Huaquillas', true);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (292, 'hchilds83', 'YTh8ifuBqci3', 'Harcourt', 'Childs', 'Champaign', true);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (293, 'wspensley84', 'ltxnIY', 'Wood', 'Spensley', 'Mitrópoli', false);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (294, 'cmacquarrie85', 'tGx3ve', 'Celestyn', 'MacQuarrie', 'Lixu', true);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (295, 'rcorgenvin86', '8BOVMLKY5LwZ', 'Regan', 'Corgenvin', 'Erátyra', false);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (296, 'kfermer87', 'So43EXtfowL', 'Klaus', 'Fermer', 'Tyoply Stan', false);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (297, 'bkedge88', 'yrgfKn', 'Bondon', 'Kedge', 'Middelburg', false);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (298, 'cedmans89', 'UVtEbI3WDfo', 'Cori', 'Edmans', 'Tebingtinggi', false);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (299, 'nsolan8a', 'WMSKJxRzAnH9', 'Nessi', 'Solan', 'Akunk’', true);
insert into user (iduser, username, password, firstName, lastName, city, favoriteBand) values (300, 'mstrainge8b', 'm1eUl7bR', 'Monika', 'Strainge', 'Puerto Santander', true);


insert into band VALUES(null,"Queen","La mejor banda de rock","","Rock");
insert into band VALUES(null,"The Beatles","El más admirado y popular de la década de 1960 ","","Rock");
insert into band VALUES(null,"Metallica","La mejor banda de metal","","Thrash metal");
insert into band Values(null,"Duki","El máximo exponente del trap argentino","Duki","Trap");
  