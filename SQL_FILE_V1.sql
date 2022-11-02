-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema Inventory_Control_Management
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema Inventory_Control_Management
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Inventory_Control_Management` DEFAULT CHARACTER SET utf8 ;
USE `Inventory_Control_Management` ;

-- -----------------------------------------------------
-- Table `Inventory_Control_Management`.`Product_Class`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Inventory_Control_Management`.`Product_Class` ;

CREATE TABLE IF NOT EXISTS `Inventory_Control_Management`.`Product_Class` (
  `Class_ID` INT UNSIGNED NOT NULL,
  `Class_Name` VARCHAR(100) NOT NULL,
  `Class_Description` VARCHAR(150) NOT NULL,
  PRIMARY KEY (`Class_ID`))
ENGINE = InnoDB;

INSERT INTO `inventory_control_management`.`product_class`(`Class_ID`,`Class_Name`,`Class_Description`) values (60001, 'Class1', 'Class1 items');
INSERT INTO `inventory_control_management`.`product_class`(`Class_ID`,`Class_Name`,`Class_Description`) values (60002, 'Class2', 'Class2 items');
INSERT INTO `inventory_control_management`.`product_class`(`Class_ID`,`Class_Name`,`Class_Description`) values (60003, 'Class3', 'Class3 items');
INSERT INTO `inventory_control_management`.`product_class`(`Class_ID`,`Class_Name`,`Class_Description`) values (60004, 'Class4', 'Class4 items');
-- -----------------------------------------------------
-- Table `Inventory_Control_Management`.`Product`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Inventory_Control_Management`.`Product` ;

CREATE TABLE IF NOT EXISTS `Inventory_Control_Management`.`Product` (
  `Product_ID` VARCHAR(45) NOT NULL,
  `Product_Name` VARCHAR(45) NOT NULL,
  `Product_Description` VARCHAR(150) NULL,
  `Selling_Price_Per_unit` FLOAT UNSIGNED NOT NULL,
  `Cost_Price_Per_unit` FLOAT UNSIGNED NOT NULL,
  `Product_Status` INT(10) UNSIGNED NOT NULL,
  `Class_ID` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`Product_ID`),
  INDEX `fk_Product_Product_Class1_idx` (`Class_ID` ASC) VISIBLE,
  CONSTRAINT `fk_Product_Product_Class1`
    FOREIGN KEY (`Class_ID`)
    REFERENCES `Inventory_Control_Management`.`Product_Class` (`Class_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


INSERT INTO `inventory_control_management`.`product`(`Product_ID`,`Product_Name`,`Product_Description`,`Selling_Price_Per_unit`,`Cost_Price_Per_unit`,`Product_Status`,`Class_ID`)VALUES (40001, 'Nets1', 'ProSlam Premium Quality net1', 3237, 1160, 1, 60001);
INSERT INTO `inventory_control_management`.`product`(`Product_ID`,`Product_Name`,`Product_Description`,`Selling_Price_Per_unit`,`Cost_Price_Per_unit`,`Product_Status`,`Class_ID`)VALUES (40002, 'Bases1', 'Eupboron Baseball Bases1', 4820, 1838, 1, 60002);
INSERT INTO `inventory_control_management`.`product`(`Product_ID`,`Product_Name`,`Product_Description`,`Selling_Price_Per_unit`,`Cost_Price_Per_unit`,`Product_Status`,`Class_ID`)VALUES (40003, 'Rods1', 'Reaction Tackle Fishing Rod1', 1337, 259, 0, 60003);
INSERT INTO `inventory_control_management`.`product`(`Product_ID`,`Product_Name`,`Product_Description`,`Selling_Price_Per_unit`,`Cost_Price_Per_unit`,`Product_Status`,`Class_ID`)VALUES (40004, 'BasketBalls1', 'WILSON NCAA Basketballs1', 4036, 3798, 0, 60004);
INSERT INTO `inventory_control_management`.`product`(`Product_ID`,`Product_Name`,`Product_Description`,`Selling_Price_Per_unit`,`Cost_Price_Per_unit`,`Product_Status`,`Class_ID`)VALUES (40005, 'Clubs1', 'Callaway Golf club set1', 3351, 2684, 1, 60003);
INSERT INTO `inventory_control_management`.`product`(`Product_ID`,`Product_Name`,`Product_Description`,`Selling_Price_Per_unit`,`Cost_Price_Per_unit`,`Product_Status`,`Class_ID`)VALUES (40006, 'Goal posts1', 'FORZA Soccer Goal [5 Sizes]1', 4647, 2240, 0, 60002);
INSERT INTO `inventory_control_management`.`product`(`Product_ID`,`Product_Name`,`Product_Description`,`Selling_Price_Per_unit`,`Cost_Price_Per_unit`,`Product_Status`,`Class_ID`)VALUES (40007, 'Rods2', 'Reaction Tackle Fishing Rod2', 2923, 3237, 0, 60003);
INSERT INTO `inventory_control_management`.`product`(`Product_ID`,`Product_Name`,`Product_Description`,`Selling_Price_Per_unit`,`Cost_Price_Per_unit`,`Product_Status`,`Class_ID`)VALUES (40008, 'Racquets1', 'WILSON Tennis Rackets1', 175, 795, 1, 60001);
INSERT INTO `inventory_control_management`.`product`(`Product_ID`,`Product_Name`,`Product_Description`,`Selling_Price_Per_unit`,`Cost_Price_Per_unit`,`Product_Status`,`Class_ID`)VALUES (40009, 'Bases2', 'Eupboron Baseball Bases2', 3393, 592, 1, 60002);
INSERT INTO `inventory_control_management`.`product`(`Product_ID`,`Product_Name`,`Product_Description`,`Selling_Price_Per_unit`,`Cost_Price_Per_unit`,`Product_Status`,`Class_ID`)VALUES (40010, 'Flying discs1', 'Axiom Discs Lite Golf Basket1', 2798, 3446, 0, 60003);
INSERT INTO `inventory_control_management`.`product`(`Product_ID`,`Product_Name`,`Product_Description`,`Selling_Price_Per_unit`,`Cost_Price_Per_unit`,`Product_Status`,`Class_ID`)VALUES (40011, 'Clubs2', 'Callaway Golf club set2', 432, 221, 0, 60002);
INSERT INTO `inventory_control_management`.`product`(`Product_ID`,`Product_Name`,`Product_Description`,`Selling_Price_Per_unit`,`Cost_Price_Per_unit`,`Product_Status`,`Class_ID`)VALUES (40012, 'Racquets2', 'WILSON Tennis Rackets2', 630, 1533, 0, 60003);
INSERT INTO `inventory_control_management`.`product`(`Product_ID`,`Product_Name`,`Product_Description`,`Selling_Price_Per_unit`,`Cost_Price_Per_unit`,`Product_Status`,`Class_ID`)VALUES (40013, 'Clubs3', 'Callaway Golf club set3', 3482, 3628, 1, 60001);
INSERT INTO `inventory_control_management`.`product`(`Product_ID`,`Product_Name`,`Product_Description`,`Selling_Price_Per_unit`,`Cost_Price_Per_unit`,`Product_Status`,`Class_ID`)VALUES (40014, 'Racquets3', 'WILSON Tennis Rackets3', 697, 904, 1, 60001);
INSERT INTO `inventory_control_management`.`product`(`Product_ID`,`Product_Name`,`Product_Description`,`Selling_Price_Per_unit`,`Cost_Price_Per_unit`,`Product_Status`,`Class_ID`)VALUES (40015, 'Goal posts2', 'FORZA Soccer Goal [5 Sizes]2', 1948, 3979, 1, 60002);
INSERT INTO `inventory_control_management`.`product`(`Product_ID`,`Product_Name`,`Product_Description`,`Selling_Price_Per_unit`,`Cost_Price_Per_unit`,`Product_Status`,`Class_ID`)VALUES (40016, 'Bats2', 'KOTIONOK Baseball Bat2', 2499, 1857, 1, 60002);
INSERT INTO `inventory_control_management`.`product`(`Product_ID`,`Product_Name`,`Product_Description`,`Selling_Price_Per_unit`,`Cost_Price_Per_unit`,`Product_Status`,`Class_ID`)VALUES (40017, 'Rods3', 'Reaction Tackle Fishing Rod3', 2932, 1718, 0, 60004);
INSERT INTO `inventory_control_management`.`product`(`Product_ID`,`Product_Name`,`Product_Description`,`Selling_Price_Per_unit`,`Cost_Price_Per_unit`,`Product_Status`,`Class_ID`)VALUES (40018, 'Wickets1', 'Flexi Cricket Stumps1', 4935, 1471, 0, 60004);
INSERT INTO `inventory_control_management`.`product`(`Product_ID`,`Product_Name`,`Product_Description`,`Selling_Price_Per_unit`,`Cost_Price_Per_unit`,`Product_Status`,`Class_ID`)VALUES (40019, 'Nets2', "ProSlam Premium Quality net2", 4960, 745, 1, 60002);


-- -----------------------------------------------------
-- Table `Inventory_Control_Management`.`Warehouse`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Inventory_Control_Management`.`Warehouse` ;

CREATE TABLE IF NOT EXISTS `Inventory_Control_Management`.`Warehouse` (
  `Warehouse_ID` INT(10) UNSIGNED NOT NULL,
  `Name` VARCHAR(45) NOT NULL,
  `Address` VARCHAR(100) NOT NULL,
  `ContactNumber` VARCHAR(15) NOT NULL,
  `Fax` INT(10) UNSIGNED NULL,
  `Email` VARCHAR(100) NOT NULL,
  `Other_Info` VARCHAR(200) NULL,
  PRIMARY KEY (`Warehouse_ID`))
ENGINE = InnoDB;

INSERT INTO `inventory_control_management`.`warehouse`(`Warehouse_ID`,`Name`,`Address`,`ContactNumber`,`Fax`,`Email`,`Other_Info`) values (80001, 'Villa Ascasubi', '07987 Hanover Road', '996-240-4247', 7573651, 'cstonner0@godaddy.com', null);
INSERT INTO `inventory_control_management`.`warehouse`(`Warehouse_ID`,`Name`,`Address`,`ContactNumber`,`Fax`,`Email`,`Other_Info`) values (80002, 'Nowa Ruda', '8 Rieder Circle', '444-885-3165', 8498595, 'rfloyd1@shinystat.com', null);
INSERT INTO `inventory_control_management`.`warehouse`(`Warehouse_ID`,`Name`,`Address`,`ContactNumber`,`Fax`,`Email`,`Other_Info`) values (80003, 'Wenfang', '168 Dayton Parkway', '710-250-5038', 8877844, 'rbyres2@stumbleupon.com', null);
INSERT INTO `inventory_control_management`.`warehouse`(`Warehouse_ID`,`Name`,`Address`,`ContactNumber`,`Fax`,`Email`,`Other_Info`) values (80004, 'Pochayiv', '46548 Springview Terrace', '916-842-8456', 7553180, 'nlowseley3@yellowpages.com', null);
INSERT INTO `inventory_control_management`.`warehouse`(`Warehouse_ID`,`Name`,`Address`,`ContactNumber`,`Fax`,`Email`,`Other_Info`) values (80005, 'Paraparaumu', '5 Merrick Park', '662-106-3387', 7251722, 'dbento4@hc360.com', null);
INSERT INTO `inventory_control_management`.`warehouse`(`Warehouse_ID`,`Name`,`Address`,`ContactNumber`,`Fax`,`Email`,`Other_Info`) values (80006, 'Songkan', '01 High Crossing Center', '669-470-5523', 8123752, 'wbruna5@cnet.com', null);
INSERT INTO `inventory_control_management`.`warehouse`(`Warehouse_ID`,`Name`,`Address`,`ContactNumber`,`Fax`,`Email`,`Other_Info`) values (80007, 'Pingdong', '76598 2nd Hill', '506-745-7603', 8543092, 'dcoppen6@webeden.co.uk', null);
INSERT INTO `inventory_control_management`.`warehouse`(`Warehouse_ID`,`Name`,`Address`,`ContactNumber`,`Fax`,`Email`,`Other_Info`) values (80008, 'Solnechnyy', '3972 Mifflin Center', '217-946-8616', 7448799, 'jboch7@vinaora.com', null);
INSERT INTO `inventory_control_management`.`warehouse`(`Warehouse_ID`,`Name`,`Address`,`ContactNumber`,`Fax`,`Email`,`Other_Info`) values (80009, 'Maguan', '8344 Northland Parkway', '844-369-1297', 7441839, 'sarnowitz8@newsvine.com', null);
INSERT INTO `inventory_control_management`.`warehouse`(`Warehouse_ID`,`Name`,`Address`,`ContactNumber`,`Fax`,`Email`,`Other_Info`) values (80010, 'Manalongon', '9 American Ash Trail', '441-579-5761', 7508813, 'fzohrer9@narod.ru', null);
INSERT INTO `inventory_control_management`.`warehouse`(`Warehouse_ID`,`Name`,`Address`,`ContactNumber`,`Fax`,`Email`,`Other_Info`) values (80011, 'San Juan del Cesar', '321 Larry Parkway', '213-380-5975', 8216219, 'amarrana@google.nl', null);
INSERT INTO `inventory_control_management`.`warehouse`(`Warehouse_ID`,`Name`,`Address`,`ContactNumber`,`Fax`,`Email`,`Other_Info`) values (80012, 'Gränna', '231 Gulseth Crossing', '131-485-4657', 7758485, 'afannonb@adobe.com', null);
INSERT INTO `inventory_control_management`.`warehouse`(`Warehouse_ID`,`Name`,`Address`,`ContactNumber`,`Fax`,`Email`,`Other_Info`) values (80013, 'Wenxi', '33 Chinook Pass', '615-195-3265', 8208171, 'wdubarryc@microsoft.com', null);
INSERT INTO `inventory_control_management`.`warehouse`(`Warehouse_ID`,`Name`,`Address`,`ContactNumber`,`Fax`,`Email`,`Other_Info`) values (80014, 'Levoberezhnaya', '90349 Hauk Parkway', '887-888-0302', 6965327, 'bpiggensd@xing.com', null);
INSERT INTO `inventory_control_management`.`warehouse`(`Warehouse_ID`,`Name`,`Address`,`ContactNumber`,`Fax`,`Email`,`Other_Info`) values (80015, 'Bassar', '6652 Reinke Court', '858-573-4057', 7413280, 'tkettlestringee@deviantart.com', null);
INSERT INTO `inventory_control_management`.`warehouse`(`Warehouse_ID`,`Name`,`Address`,`ContactNumber`,`Fax`,`Email`,`Other_Info`) values (80016, 'Lanigan', '07 Pierstorff Court', '432-865-0758', 7936256, 'ccalcutf@dmoz.org', null);
INSERT INTO `inventory_control_management`.`warehouse`(`Warehouse_ID`,`Name`,`Address`,`ContactNumber`,`Fax`,`Email`,`Other_Info`) values (80017, 'Paobokol', '67107 Schlimgen Avenue', '749-737-7951', 6989423, 'jleynaghg@jigsy.com', null);
INSERT INTO `inventory_control_management`.`warehouse`(`Warehouse_ID`,`Name`,`Address`,`ContactNumber`,`Fax`,`Email`,`Other_Info`) values (80018, 'Campana', '63484 Monterey Trail', '475-988-5884', 6547854, 'wbucktrouth@cloudflare.com', null);
INSERT INTO `inventory_control_management`.`warehouse`(`Warehouse_ID`,`Name`,`Address`,`ContactNumber`,`Fax`,`Email`,`Other_Info`) values (80019, 'Orzech', '5078 Coolidge Avenue', '743-281-3637', 8027093, 'ahenrioni@businessweek.com', null);
INSERT INTO `inventory_control_management`.`warehouse`(`Warehouse_ID`,`Name`,`Address`,`ContactNumber`,`Fax`,`Email`,`Other_Info`) values (80020, 'Sa Kaeo', '1555 Toban Alley', '861-933-7215', 8767713, 'gjenkenj@telegraph.co.uk', null);
INSERT INTO `inventory_control_management`.`warehouse`(`Warehouse_ID`,`Name`,`Address`,`ContactNumber`,`Fax`,`Email`,`Other_Info`) values (80021, 'Jesús María', '80 Anzinger Lane', '612-574-8448', 6795693, 'shanscomk@hexun.com', null);
INSERT INTO `inventory_control_management`.`warehouse`(`Warehouse_ID`,`Name`,`Address`,`ContactNumber`,`Fax`,`Email`,`Other_Info`) values (80022, 'Lianran', '737 Pierstorff Park', '688-379-3663', 7299448, 'kcawsbyl@ustream.tv', null);
INSERT INTO `inventory_control_management`.`warehouse`(`Warehouse_ID`,`Name`,`Address`,`ContactNumber`,`Fax`,`Email`,`Other_Info`) values (80023, 'Buliok', '98 Mayer Avenue', '683-542-7170', 7558859, 'tgilleanm@ted.com', null);
INSERT INTO `inventory_control_management`.`warehouse`(`Warehouse_ID`,`Name`,`Address`,`ContactNumber`,`Fax`,`Email`,`Other_Info`) values (80024, 'Jadi', '01247 Paget Terrace', '447-552-8726', 7637867, 'pmahmoodn@photobucket.com', null);
INSERT INTO `inventory_control_management`.`warehouse`(`Warehouse_ID`,`Name`,`Address`,`ContactNumber`,`Fax`,`Email`,`Other_Info`) values (80025, 'Qingshui', '92 Delaware Street', '259-719-6423', 8421554, 'glacotteo@quantcast.com', null);
INSERT INTO `inventory_control_management`.`warehouse`(`Warehouse_ID`,`Name`,`Address`,`ContactNumber`,`Fax`,`Email`,`Other_Info`) values (80026, 'Fukou', '50 Beilfuss Drive', '822-189-8776', 7797542, 'gjuarezp@w3.org', null);
INSERT INTO `inventory_control_management`.`warehouse`(`Warehouse_ID`,`Name`,`Address`,`ContactNumber`,`Fax`,`Email`,`Other_Info`) values (80027, 'Kugesi', '9426 Alpine Terrace', '880-391-2154', 8556123, 'rsimmq@mit.edu', null);
INSERT INTO `inventory_control_management`.`warehouse`(`Warehouse_ID`,`Name`,`Address`,`ContactNumber`,`Fax`,`Email`,`Other_Info`) values (80028, '‘Uqayribāt', '6312 Parkside Junction', '533-423-7410', 8963673, 'josiaghailr@reuters.com', null);
INSERT INTO `inventory_control_management`.`warehouse`(`Warehouse_ID`,`Name`,`Address`,`ContactNumber`,`Fax`,`Email`,`Other_Info`) values (80029, 'Torez', '66 Susan Center', '979-184-4390', 8471277, 'stileys@yellowbook.com', null);
INSERT INTO `inventory_control_management`.`warehouse`(`Warehouse_ID`,`Name`,`Address`,`ContactNumber`,`Fax`,`Email`,`Other_Info`) values (80030, 'Mantingantengah', '485 Schiller Point', '659-996-5236', 8282831, 'eranfieldt@forbes.com', null);
INSERT INTO `inventory_control_management`.`warehouse`(`Warehouse_ID`,`Name`,`Address`,`ContactNumber`,`Fax`,`Email`,`Other_Info`) values (80031, 'Saint-Étienne', '86882 Elka Hill', '419-570-2056', 8247538, 'mluisettiu@ftc.gov', null);
INSERT INTO `inventory_control_management`.`warehouse`(`Warehouse_ID`,`Name`,`Address`,`ContactNumber`,`Fax`,`Email`,`Other_Info`) values (80032, 'Piketberg', '26 Schlimgen Plaza', '961-311-7834', 6577511, 'spiddockev@webs.com', null);
INSERT INTO `inventory_control_management`.`warehouse`(`Warehouse_ID`,`Name`,`Address`,`ContactNumber`,`Fax`,`Email`,`Other_Info`) values (80033, 'Niort', '8 Northridge Street', '919-525-7165', 6611049, 'slahyw@loc.gov', null);
INSERT INTO `inventory_control_management`.`warehouse`(`Warehouse_ID`,`Name`,`Address`,`ContactNumber`,`Fax`,`Email`,`Other_Info`) values (80034, 'Wolmaransstad', '931 High Crossing Hill', '134-152-6937', 8672453, 'dlodovichix@freewebs.com', null);
INSERT INTO `inventory_control_management`.`warehouse`(`Warehouse_ID`,`Name`,`Address`,`ContactNumber`,`Fax`,`Email`,`Other_Info`) values (80035, 'Kedungasem', '78917 Eagle Crest Way', '188-981-7957', 6877316, 'gzelakey@reference.com', null);
INSERT INTO `inventory_control_management`.`warehouse`(`Warehouse_ID`,`Name`,`Address`,`ContactNumber`,`Fax`,`Email`,`Other_Info`) values (80036, 'Horní Počaply', '622 Mayer Terrace', '489-632-0104', 7528133, 'hjasikz@blogger.com', null);
INSERT INTO `inventory_control_management`.`warehouse`(`Warehouse_ID`,`Name`,`Address`,`ContactNumber`,`Fax`,`Email`,`Other_Info`) values (80037, 'Bojnik', '0 Stone Corner Court', '250-389-5495', 8940139, 'byerson10@dailymotion.com', null);
INSERT INTO `inventory_control_management`.`warehouse`(`Warehouse_ID`,`Name`,`Address`,`ContactNumber`,`Fax`,`Email`,`Other_Info`) values (80038, 'Kapshagay', '4984 Nancy Hill', '803-903-2621', 7109642, 'bcantillon11@marriott.com', null);
INSERT INTO `inventory_control_management`.`warehouse`(`Warehouse_ID`,`Name`,`Address`,`ContactNumber`,`Fax`,`Email`,`Other_Info`) values (80039, 'Jinzhuang', '0 Vidon Avenue', '974-928-5843', 8817920, 'iokeenan12@cam.ac.uk', null);
INSERT INTO `inventory_control_management`.`warehouse`(`Warehouse_ID`,`Name`,`Address`,`ContactNumber`,`Fax`,`Email`,`Other_Info`) values (80040, 'Pedreira', '4 Eastwood Parkway', '267-612-0490', 8255674, 'sstrethill13@1und1.de', null);
INSERT INTO `inventory_control_management`.`warehouse`(`Warehouse_ID`,`Name`,`Address`,`ContactNumber`,`Fax`,`Email`,`Other_Info`) values (80041, 'Knoxville', '93 Aberg Street', '865-914-9179', 8630727, 'lduckering14@topsy.com', null);
INSERT INTO `inventory_control_management`.`warehouse`(`Warehouse_ID`,`Name`,`Address`,`ContactNumber`,`Fax`,`Email`,`Other_Info`) values (80042, 'Kochenëvo', '78328 Laurel Pass', '262-497-0801', 7689350, 'drein15@cbslocal.com', null);
INSERT INTO `inventory_control_management`.`warehouse`(`Warehouse_ID`,`Name`,`Address`,`ContactNumber`,`Fax`,`Email`,`Other_Info`) values (80043, 'Siuna', '6 West Lane', '937-411-6172', 8199948, 'btrickey16@cnbc.com', null);
INSERT INTO `inventory_control_management`.`warehouse`(`Warehouse_ID`,`Name`,`Address`,`ContactNumber`,`Fax`,`Email`,`Other_Info`) values (80044, 'Guacara', '902 Carberry Lane', '232-292-3928', 7673234, 'mcrossthwaite17@statcounter.com', null);
INSERT INTO `inventory_control_management`.`warehouse`(`Warehouse_ID`,`Name`,`Address`,`ContactNumber`,`Fax`,`Email`,`Other_Info`) values (80045, 'Panikian', '97 Vermont Road', '507-375-7763', 8407145, 'coattes18@artisteer.com', null);
INSERT INTO `inventory_control_management`.`warehouse`(`Warehouse_ID`,`Name`,`Address`,`ContactNumber`,`Fax`,`Email`,`Other_Info`) values (80046, 'Castelo de Vide', '28408 Glacier Hill Plaza', '498-968-5900', 8571141, 'dhannaford19@shutterfly.com', null);
INSERT INTO `inventory_control_management`.`warehouse`(`Warehouse_ID`,`Name`,`Address`,`ContactNumber`,`Fax`,`Email`,`Other_Info`) values (80047, 'Soubré', '4246 Northland Junction', '958-792-6777', 8571697, 'gcorroyer1a@ox.ac.uk', null);
INSERT INTO `inventory_control_management`.`warehouse`(`Warehouse_ID`,`Name`,`Address`,`ContactNumber`,`Fax`,`Email`,`Other_Info`) values (80048, 'Sinjil', '9 Logan Lane', '522-345-1644', 7152187, 'jpassey1b@nsw.gov.au', null);
INSERT INTO `inventory_control_management`.`warehouse`(`Warehouse_ID`,`Name`,`Address`,`ContactNumber`,`Fax`,`Email`,`Other_Info`) values (80049, 'Dolní Cerekev', '28895 Ruskin Circle', '495-233-1129', 8444361, 'shenke1c@discovery.com', null);
INSERT INTO `inventory_control_management`.`warehouse`(`Warehouse_ID`,`Name`,`Address`,`ContactNumber`,`Fax`,`Email`,`Other_Info`) values (80050, 'Ta Phraya', '15222 Cody Crossing', '537-108-6122', 7034044, 'psanson1d@google.pl', null);

-- -----------------------------------------------------
-- Table `Inventory_Control_Management`.`Transaction`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Inventory_Control_Management`.`Transaction` ;

CREATE TABLE IF NOT EXISTS `Inventory_Control_Management`.`Transaction` (
  `Bill_number` INT(10) UNSIGNED NOT NULL,
  `Payment_Type` VARCHAR(45) NOT NULL,
  `Transaction_Total` INT NOT NULL,
  `Paymet_date` DATE NOT NULL,
  `SuccessFlag` TINYINT NOT NULL,
  PRIMARY KEY (`Bill_number`))
ENGINE = InnoDB;

INSERT INTO `inventory_control_management`.`transaction`(`Bill_number`,`Payment_Type`,`Transaction_Total`,`Paymet_date`,`SuccessFlag`) values (50001, 'cash', 1403, '2022-04-30', 1);
INSERT INTO `inventory_control_management`.`transaction`(`Bill_number`,`Payment_Type`,`Transaction_Total`,`Paymet_date`,`SuccessFlag`) values (50002, 'cash', 7642, '2022-03-09', 1);
INSERT INTO `inventory_control_management`.`transaction`(`Bill_number`,`Payment_Type`,`Transaction_Total`,`Paymet_date`,`SuccessFlag`) values (50003, 'cash', 8149, '2022-01-11', 1);
INSERT INTO `inventory_control_management`.`transaction`(`Bill_number`,`Payment_Type`,`Transaction_Total`,`Paymet_date`,`SuccessFlag`) values (50004, 'card', 2488, '2022-01-01', 1);
INSERT INTO `inventory_control_management`.`transaction`(`Bill_number`,`Payment_Type`,`Transaction_Total`,`Paymet_date`,`SuccessFlag`) values (50005, 'card', 5244, '2022-04-04', 1);
INSERT INTO `inventory_control_management`.`transaction`(`Bill_number`,`Payment_Type`,`Transaction_Total`,`Paymet_date`,`SuccessFlag`) values (50006, 'cash', 543, '2022-04-21', 0);
INSERT INTO `inventory_control_management`.`transaction`(`Bill_number`,`Payment_Type`,`Transaction_Total`,`Paymet_date`,`SuccessFlag`) values (50007, 'cash', 2030, '2022-01-17', 0);
INSERT INTO `inventory_control_management`.`transaction`(`Bill_number`,`Payment_Type`,`Transaction_Total`,`Paymet_date`,`SuccessFlag`) values (50008, 'cash', 8595, '2022-04-16', 1);
INSERT INTO `inventory_control_management`.`transaction`(`Bill_number`,`Payment_Type`,`Transaction_Total`,`Paymet_date`,`SuccessFlag`) values (50009, 'card', 1929, '2022-01-25', 0);
INSERT INTO `inventory_control_management`.`transaction`(`Bill_number`,`Payment_Type`,`Transaction_Total`,`Paymet_date`,`SuccessFlag`) values (50010, 'cash', 4087, '2022-01-08', 1);
INSERT INTO `inventory_control_management`.`transaction`(`Bill_number`,`Payment_Type`,`Transaction_Total`,`Paymet_date`,`SuccessFlag`) values (50011, 'card', 3628, '2022-04-17', 0);
INSERT INTO `inventory_control_management`.`transaction`(`Bill_number`,`Payment_Type`,`Transaction_Total`,`Paymet_date`,`SuccessFlag`) values (50012, 'cash', 2859, '2022-02-06', 0);
INSERT INTO `inventory_control_management`.`transaction`(`Bill_number`,`Payment_Type`,`Transaction_Total`,`Paymet_date`,`SuccessFlag`) values (50013, 'card', 6791, '2022-04-16', 0);
INSERT INTO `inventory_control_management`.`transaction`(`Bill_number`,`Payment_Type`,`Transaction_Total`,`Paymet_date`,`SuccessFlag`) values (50014, 'card', 7383, '2022-01-08', 0);
INSERT INTO `inventory_control_management`.`transaction`(`Bill_number`,`Payment_Type`,`Transaction_Total`,`Paymet_date`,`SuccessFlag`) values (50015, 'cash', 8382, '2022-01-22', 0);
INSERT INTO `inventory_control_management`.`transaction`(`Bill_number`,`Payment_Type`,`Transaction_Total`,`Paymet_date`,`SuccessFlag`) values (50016, 'card', 4153, '2022-03-01', 1);
INSERT INTO `inventory_control_management`.`transaction`(`Bill_number`,`Payment_Type`,`Transaction_Total`,`Paymet_date`,`SuccessFlag`) values (50017, 'card', 5018, '2022-01-24', 0);
INSERT INTO `inventory_control_management`.`transaction`(`Bill_number`,`Payment_Type`,`Transaction_Total`,`Paymet_date`,`SuccessFlag`) values (50018, 'card', 7479, '2022-04-05', 0);
INSERT INTO `inventory_control_management`.`transaction`(`Bill_number`,`Payment_Type`,`Transaction_Total`,`Paymet_date`,`SuccessFlag`) values (50019, 'cash', 5797, '2022-03-11', 0);
INSERT INTO `inventory_control_management`.`transaction`(`Bill_number`,`Payment_Type`,`Transaction_Total`,`Paymet_date`,`SuccessFlag`) values (50020, 'cash', 4408, '2022-01-01', 1);
INSERT INTO `inventory_control_management`.`transaction`(`Bill_number`,`Payment_Type`,`Transaction_Total`,`Paymet_date`,`SuccessFlag`) values (50021, 'cash', 4214, '2022-02-03', 1);
INSERT INTO `inventory_control_management`.`transaction`(`Bill_number`,`Payment_Type`,`Transaction_Total`,`Paymet_date`,`SuccessFlag`) values (50022, 'card', 2079, '2022-02-14', 1);
INSERT INTO `inventory_control_management`.`transaction`(`Bill_number`,`Payment_Type`,`Transaction_Total`,`Paymet_date`,`SuccessFlag`) values (50023, 'cash', 7377, '2022-02-04', 1);
INSERT INTO `inventory_control_management`.`transaction`(`Bill_number`,`Payment_Type`,`Transaction_Total`,`Paymet_date`,`SuccessFlag`) values (50024, 'cash', 7374, '2022-03-21', 0);
INSERT INTO `inventory_control_management`.`transaction`(`Bill_number`,`Payment_Type`,`Transaction_Total`,`Paymet_date`,`SuccessFlag`) values (50025, 'card', 2322, '2022-03-11', 0);
INSERT INTO `inventory_control_management`.`transaction`(`Bill_number`,`Payment_Type`,`Transaction_Total`,`Paymet_date`,`SuccessFlag`) values (50026, 'card', 1711, '2022-03-02', 0);
INSERT INTO `inventory_control_management`.`transaction`(`Bill_number`,`Payment_Type`,`Transaction_Total`,`Paymet_date`,`SuccessFlag`) values (50027, 'card', 9884, '2022-01-17', 0);
INSERT INTO `inventory_control_management`.`transaction`(`Bill_number`,`Payment_Type`,`Transaction_Total`,`Paymet_date`,`SuccessFlag`) values (50028, 'card', 4491, '2022-03-15', 0);
INSERT INTO `inventory_control_management`.`transaction`(`Bill_number`,`Payment_Type`,`Transaction_Total`,`Paymet_date`,`SuccessFlag`) values (50029, 'cash', 7142, '2022-04-18', 0);
INSERT INTO `inventory_control_management`.`transaction`(`Bill_number`,`Payment_Type`,`Transaction_Total`,`Paymet_date`,`SuccessFlag`) values (50030, 'card', 7392, '2022-04-24', 0);
INSERT INTO `inventory_control_management`.`transaction`(`Bill_number`,`Payment_Type`,`Transaction_Total`,`Paymet_date`,`SuccessFlag`) values (50031, 'card', 924, '2022-03-03', 0);
INSERT INTO `inventory_control_management`.`transaction`(`Bill_number`,`Payment_Type`,`Transaction_Total`,`Paymet_date`,`SuccessFlag`) values (50032, 'cash', 1900, '2022-02-21', 1);
INSERT INTO `inventory_control_management`.`transaction`(`Bill_number`,`Payment_Type`,`Transaction_Total`,`Paymet_date`,`SuccessFlag`) values (50033, 'card', 7962, '2022-04-11', 0);
INSERT INTO `inventory_control_management`.`transaction`(`Bill_number`,`Payment_Type`,`Transaction_Total`,`Paymet_date`,`SuccessFlag`) values (50034, 'cash', 536, '2022-03-13', 0);
INSERT INTO `inventory_control_management`.`transaction`(`Bill_number`,`Payment_Type`,`Transaction_Total`,`Paymet_date`,`SuccessFlag`) values (50035, 'card', 805, '2022-03-07', 0);
INSERT INTO `inventory_control_management`.`transaction`(`Bill_number`,`Payment_Type`,`Transaction_Total`,`Paymet_date`,`SuccessFlag`) values (50036, 'cash', 9326, '2022-03-19', 1);
INSERT INTO `inventory_control_management`.`transaction`(`Bill_number`,`Payment_Type`,`Transaction_Total`,`Paymet_date`,`SuccessFlag`) values (50037, 'cash', 5542, '2022-01-22', 1);
INSERT INTO `inventory_control_management`.`transaction`(`Bill_number`,`Payment_Type`,`Transaction_Total`,`Paymet_date`,`SuccessFlag`) values (50038, 'card', 7363, '2022-01-02', 0);
INSERT INTO `inventory_control_management`.`transaction`(`Bill_number`,`Payment_Type`,`Transaction_Total`,`Paymet_date`,`SuccessFlag`) values (50039, 'card', 6009, '2022-03-13', 1);
INSERT INTO `inventory_control_management`.`transaction`(`Bill_number`,`Payment_Type`,`Transaction_Total`,`Paymet_date`,`SuccessFlag`) values (50040, 'cash', 8484, '2022-02-17', 1);
INSERT INTO `inventory_control_management`.`transaction`(`Bill_number`,`Payment_Type`,`Transaction_Total`,`Paymet_date`,`SuccessFlag`) values (50041, 'card', 6872, '2022-05-06', 1);
INSERT INTO `inventory_control_management`.`transaction`(`Bill_number`,`Payment_Type`,`Transaction_Total`,`Paymet_date`,`SuccessFlag`) values (50042, 'card', 5091, '2022-01-21', 1);
INSERT INTO `inventory_control_management`.`transaction`(`Bill_number`,`Payment_Type`,`Transaction_Total`,`Paymet_date`,`SuccessFlag`) values (50043, 'card', 7239, '2022-04-11', 0);
INSERT INTO `inventory_control_management`.`transaction`(`Bill_number`,`Payment_Type`,`Transaction_Total`,`Paymet_date`,`SuccessFlag`) values (50044, 'cash', 7135, '2022-04-26', 1);
INSERT INTO `inventory_control_management`.`transaction`(`Bill_number`,`Payment_Type`,`Transaction_Total`,`Paymet_date`,`SuccessFlag`) values (50045, 'card', 9481, '2022-03-19', 1);
INSERT INTO `inventory_control_management`.`transaction`(`Bill_number`,`Payment_Type`,`Transaction_Total`,`Paymet_date`,`SuccessFlag`) values (50046, 'card', 3770, '2022-01-07', 0);
INSERT INTO `inventory_control_management`.`transaction`(`Bill_number`,`Payment_Type`,`Transaction_Total`,`Paymet_date`,`SuccessFlag`) values (50047, 'card', 9457, '2022-03-10', 0);
INSERT INTO `inventory_control_management`.`transaction`(`Bill_number`,`Payment_Type`,`Transaction_Total`,`Paymet_date`,`SuccessFlag`) values (50048, 'card', 9796, '2022-04-03', 0);
INSERT INTO `inventory_control_management`.`transaction`(`Bill_number`,`Payment_Type`,`Transaction_Total`,`Paymet_date`,`SuccessFlag`) values (50049, 'cash', 6991, '2022-04-12', 0);
INSERT INTO `inventory_control_management`.`transaction`(`Bill_number`,`Payment_Type`,`Transaction_Total`,`Paymet_date`,`SuccessFlag`) values (50050, 'card', 8390, '2022-03-01', 1);

-- -----------------------------------------------------
-- Table `Inventory_Control_Management`.`Customer`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Inventory_Control_Management`.`Customer` ;

CREATE TABLE IF NOT EXISTS `Inventory_Control_Management`.`Customer` (
  `Customer_ID` INT(10) UNSIGNED NOT NULL,
  `First_Name` VARCHAR(45) NOT NULL,
  `Last_Name` VARCHAR(45) NOT NULL,
  `Address` VARCHAR(150) NOT NULL,
  `Phone` VARCHAR(15) NOT NULL,
  `Email` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Customer_ID`),
  UNIQUE INDEX `Customer_ID_UNIQUE` (`Customer_ID` ASC) VISIBLE)
ENGINE = InnoDB;

#datadump for customer table
INSERT INTO `inventory_control_management`.`customer`(`Customer_ID`,`First_Name`,`Last_Name`,`Address`,`Phone`,`Email`)VALUES(1001,"Pooja","Akkaladevi","955 W President George Bush","4697899756","poojaakkaladevi17@gmail.com");
INSERT INTO `inventory_control_management`.`customer`(`Customer_ID`,`First_Name`,`Last_Name`,`Address`,`Phone`,`Email`)VALUES(1002,"Rakshitha","Peddi","855 E Turnpike","4697899867","rakshithapeddi18@gmail.com");
INSERT INTO `inventory_control_management`.`customer`(`Customer_ID`,`First_Name`,`Last_Name`,`Address`,`Phone`,`Email`)VALUES(1003,"Ajinkya","Agnihotri","751 E Vine Street","4697898999","ajinkya18@gmail.com");
INSERT INTO `inventory_control_management`.`customer`(`Customer_ID`,`First_Name`,`Last_Name`,`Address`,`Phone`,`Email`)VALUES(1004,"Pallavi","Chittimalla","151 E Turnpike","4696668999","Pallavi98@gmail.com");
INSERT INTO `inventory_control_management`.`customer`(`Customer_ID`,`First_Name`,`Last_Name`,`Address`,`Phone`,`Email`)VALUES(1005,"Varuni","Sri","988 Pearl Lane","4689750781","Varunisai68@gmail.com");
INSERT INTO `inventory_Control_Management`.`customer`(`Customer_ID`,`First_Name`,`Last_Name`,`Address`,`Phone`,`Email`)VALUES(1006,"vignesh","raj","952 Abbey Drive","6692643113","vignesh.raj@gmail.com");
INSERT INTO `inventory_Control_Management`.`customer`(`Customer_ID`,`First_Name`,`Last_Name`,`Address`,`Phone`,`Email`)VALUES(1007,"dileep","kumar","972 Abbey Drive","6692644113","dileepkumar@gmail.com");
INSERT INTO `inventory_Control_Management`.`customer`(`Customer_ID`,`First_Name`,`Last_Name`,`Address`,`Phone`,`Email`)VALUES(1008,"Harry","Styles","954 Greenside Drive","6693643113","harrystyles@gmail.com");
INSERT INTO `inventory_Control_Management`.`customer`(`Customer_ID`,`First_Name`,`Last_Name`,`Address`,`Phone`,`Email`)VALUES(1009,"zayn","malik","922 Abbey Drive","6692663113","zaynmalik@gmail.com");
INSERT INTO `inventory_Control_Management`.`customer`(`Customer_ID`,`First_Name`,`Last_Name`,`Address`,`Phone`,`Email`)VALUES(1010,"louis","tomlinson","752 Abbey Drive","6692643123","louistomlinson@gmail.com");
INSERT INTO `inventory_Control_Management`.`customer`(`Customer_ID`,`First_Name`,`Last_Name`,`Address`,`Phone`,`Email`)VALUES(1011,"liam","payne","352 Greenside Drive","7692643113","liampayne@gmail.com");
INSERT INTO `inventory_Control_Management`.`customer`(`Customer_ID`,`First_Name`,`Last_Name`,`Address`,`Phone`,`Email`)VALUES(1012,"ashok","krishna","932 Abbey Drive","6692643413","ashokkrishna@gmail.com");
INSERT INTO `inventory_Control_Management`.`customer`(`Customer_ID`,`First_Name`,`Last_Name`,`Address`,`Phone`,`Email`)VALUES(1013,"priya","darshini","334 Abbey Drive","6692643313","priya@gmail.com");
INSERT INTO `inventory_Control_Management`.`customer`(`Customer_ID`,`First_Name`,`Last_Name`,`Address`,`Phone`,`Email`)VALUES(1014,"harshith","reddy","951 Abbey Drive","6692643113","harshith@gmail.com");
INSERT INTO `inventory_Control_Management`.`customer`(`Customer_ID`,`First_Name`,`Last_Name`,`Address`,`Phone`,`Email`)VALUES(1015,"santhi","patel","552 Abbey Drive","6652643113","santhi@gmail.com");
INSERT INTO `inventory_Control_Management`.`customer`(`Customer_ID`,`First_Name`,`Last_Name`,`Address`,`Phone`,`Email`)VALUES(1016,"mike","thomas","922 Abbey Drive","6692643213","thomas@gmail.com");
INSERT INTO `inventory_Control_Management`.`customer`(`Customer_ID`,`First_Name`,`Last_Name`,`Address`,`Phone`,`Email`)VALUES(1017,"john","butter","953 Abbey Drive","6692643613","butter@gmail.com");
INSERT INTO `inventory_Control_Management`.`customer`(`Customer_ID`,`First_Name`,`Last_Name`,`Address`,`Phone`,`Email`)VALUES(1018,"catharine","karrie","252 Abbey Drive","6692643153","karrie@gmail.com");
INSERT INTO `inventory_Control_Management`.`customer`(`Customer_ID`,`First_Name`,`Last_Name`,`Address`,`Phone`,`Email`)VALUES(1019,"william","hammor","452 Abbey Drive","6692653113","hammor@gmail.com");
INSERT INTO `inventory_Control_Management`.`customer`(`Customer_ID`,`First_Name`,`Last_Name`,`Address`,`Phone`,`Email`)VALUES(1020,"abhisha","chari","352 Abbey Drive","6682643113","chari@gmail.com");
INSERT INTO `inventory_Control_Management`.`customer`(`Customer_ID`,`First_Name`,`Last_Name`,`Address`,`Phone`,`Email`)VALUES(1021,"swapna","reddy","982 Abbey Drive","6692683113","reddy@gmail.com");
INSERT INTO `inventory_Control_Management`.`customer`(`Customer_ID`,`First_Name`,`Last_Name`,`Address`,`Phone`,`Email`)VALUES(1022,"david","john","152 Abbey Drive","6392643113","david@gmail.com");
INSERT INTO `inventory_Control_Management`.`customer`(`Customer_ID`,`First_Name`,`Last_Name`,`Address`,`Phone`,`Email`)VALUES(1023,"james","robort","852 Abbey Drive","6602643113","james@gmail.com");
INSERT INTO `inventory_Control_Management`.`customer`(`Customer_ID`,`First_Name`,`Last_Name`,`Address`,`Phone`,`Email`)VALUES(1024,"anand","rao","951 Abbey Drive","4692643113","anand@gmail.com");
INSERT INTO `inventory_Control_Management`.`customer`(`Customer_ID`,`First_Name`,`Last_Name`,`Address`,`Phone`,`Email`)VALUES(1025,"mahesh","babu","958 Abbey Drive","6652643113","mahesh@gmail.com");
INSERT INTO `inventory_Control_Management`.`customer`(`Customer_ID`,`First_Name`,`Last_Name`,`Address`,`Phone`,`Email`)VALUES(1026,"arjun","reddy","952 Abbey Drive","6592643113","arjun@gmail.com");
INSERT INTO `inventory_Control_Management`.`customer`(`Customer_ID`,`First_Name`,`Last_Name`,`Address`,`Phone`,`Email`)VALUES(1027,"vishal","khan","951 Abbey Drive","6692473113","khan@gmail.com");
INSERT INTO `inventory_Control_Management`.`customer`(`Customer_ID`,`First_Name`,`Last_Name`,`Address`,`Phone`,`Email`)VALUES(270,"Marlene","Lueilwitz","00174 Hettinger Camp OH 21974-6801","3616541202","Marlene.Lueilwitz58@yahoo.com");
INSERT INTO `inventory_Control_Management`.`customer`(`Customer_ID`,`First_Name`,`Last_Name`,`Address`,`Phone`,`Email`)VALUES(371,"Jorge","Gerhold","15198 Grayson Cliffs TX 26666-5541","2393784339","Jorge72@yahoo.com");
INSERT INTO `inventory_Control_Management`.`customer`(`Customer_ID`,`First_Name`,`Last_Name`,`Address`,`Phone`,`Email`)VALUES(114,"Jaime","Steuber","70291 Bruce Plaza ID 49851-0634","4155721129","Jaime.Steuber@yahoo.com");
INSERT INTO `inventory_Control_Management`.`customer`(`Customer_ID`,`First_Name`,`Last_Name`,`Address`,`Phone`,`Email`)VALUES(576,"Glen","Mann","4035 Mercedes Unions AZ 03079","5379996151","Glen_Mann40@hotmail.com");
INSERT INTO `inventory_Control_Management`.`customer`(`Customer_ID`,`First_Name`,`Last_Name`,`Address`,`Phone`,`Email`)VALUES(964,"Alyssa","Marks","3507 Jaskolski Ports SC 75983","8143798682","Alyssa_Marks@gmail.com");
INSERT INTO `inventory_Control_Management`.`customer`(`Customer_ID`,`First_Name`,`Last_Name`,`Address`,`Phone`,`Email`)VALUES(806,"Joann","Ryan","851 Satterfield Hollow NM 84376-5190","5936231038","Joann2@gmail.com");
INSERT INTO `inventory_Control_Management`.`customer`(`Customer_ID`,`First_Name`,`Last_Name`,`Address`,`Phone`,`Email`)VALUES(154,"Matthew","Deckow","748 Christiansen Plaza DE 71721","4845797685","Matthew34@yahoo.com");
INSERT INTO `inventory_Control_Management`.`customer`(`Customer_ID`,`First_Name`,`Last_Name`,`Address`,`Phone`,`Email`)VALUES(816,"Clayton","Huels","9717 Kilback Plaza AZ 57601-1791","2039636322","Clayton39@yahoo.com");
INSERT INTO `inventory_Control_Management`.`customer`(`Customer_ID`,`First_Name`,`Last_Name`,`Address`,`Phone`,`Email`)VALUES(142,"Tracy","Littel","19467 Concepcion Plaza VT 63626-9935","7138006227","Tracy52@gmail.com");
INSERT INTO `inventory_Control_Management`.`customer`(`Customer_ID`,`First_Name`,`Last_Name`,`Address`,`Phone`,`Email`)VALUES(694,"Eloise","Von","9065 Shawna Roads T 30423","9667026922","Eloise.Von@gmail.com");
INSERT INTO `inventory_Control_Management`.`customer`(`Customer_ID`,`First_Name`,`Last_Name`,`Address`,`Phone`,`Email`)VALUES(357,"Gertrude","Goyette","49985 Maxwell Harbor MA 69995","4552859752","Gertrude_Goyette42@gmail.com");
INSERT INTO `inventory_Control_Management`.`customer`(`Customer_ID`,`First_Name`,`Last_Name`,`Address`,`Phone`,`Email`)VALUES(756,"Rudy","DuBuque","5864 Clemmie Rue FL 33305","8042780217","Rudy32@yahoo.com");
INSERT INTO `inventory_Control_Management`.`customer`(`Customer_ID`,`First_Name`,`Last_Name`,`Address`,`Phone`,`Email`)VALUES(028,"Ross","Streich","77740 Kaitlin Lights OR 10979-7050","4834223275","Ross_Streich@yahoo.com");
INSERT INTO `inventory_Control_Management`.`customer`(`Customer_ID`,`First_Name`,`Last_Name`,`Address`,`Phone`,`Email`)VALUES(032,"Carlton","Goodwin","5622 Mosciski Creek SD 65659","8633063716","Carlton_Goodwin19@hotmail.com");
INSERT INTO `inventory_Control_Management`.`customer`(`Customer_ID`,`First_Name`,`Last_Name`,`Address`,`Phone`,`Email`)VALUES(812,"Terrance","Rice","835 Tiffany Plaza NH 15595","4467164554","Terrance.Rice@gmail.com");
INSERT INTO `inventory_Control_Management`.`customer`(`Customer_ID`,`First_Name`,`Last_Name`,`Address`,`Phone`,`Email`)VALUES(905,"Valerie","Von","117 Amelie Rapid ND 97654-9188","9629299626","Valerie88@yahoo.com");
INSERT INTO `inventory_Control_Management`.`customer`(`Customer_ID`,`First_Name`,`Last_Name`,`Address`,`Phone`,`Email`)VALUES(773,"Gloria","Schuppe","743 Wilburn Terrace AR 37167","4293269302","Gloria_Schuppe@gmail.com");
INSERT INTO `inventory_Control_Management`.`customer`(`Customer_ID`,`First_Name`,`Last_Name`,`Address`,`Phone`,`Email`)VALUES(457,"David","Ernser","068 Koelpin Parkway LA 50673","3767541367","David_Ernser@hotmail.com");
INSERT INTO `inventory_Control_Management`.`customer`(`Customer_ID`,`First_Name`,`Last_Name`,`Address`,`Phone`,`Email`)VALUES(988,"Bertha","Schmidt","2862 Garnet Vista WI 49902-3853","4139298950","Bertha_Schmidt58@gmail.com");
INSERT INTO `inventory_Control_Management`.`customer`(`Customer_ID`,`First_Name`,`Last_Name`,`Address`,`Phone`,`Email`)VALUES(246,"Opal","Feeney","5597 Leuschke Mountain NJ 43769","6015763637","Opal_Feeney@yahoo.com");
INSERT INTO `inventory_Control_Management`.`customer`(`Customer_ID`,`First_Name`,`Last_Name`,`Address`,`Phone`,`Email`)VALUES(397,"Sharon","Nienow","334 Kuphal Rapids WV 62891","8155541962","Sharon.Nienow@gmail.com");
INSERT INTO `inventory_Control_Management`.`customer`(`Customer_ID`,`First_Name`,`Last_Name`,`Address`,`Phone`,`Email`)VALUES(596,"Arthur","Nikolaus","03937 Bette Cliffs MA 16985","3688378996","Arthur89@gmail.com");
INSERT INTO `inventory_Control_Management`.`customer`(`Customer_ID`,`First_Name`,`Last_Name`,`Address`,`Phone`,`Email`)VALUES(525,"Leigh","Dickens","40918 Abernathy Wall SD 97956","4058222347","Leigh.Dickens62@hotmail.com");



-- -----------------------------------------------------
-- Table `Inventory_Control_Management`.`Employee_Role`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Inventory_Control_Management`.`Employee_Role` ;

CREATE TABLE IF NOT EXISTS `Inventory_Control_Management`.`Employee_Role` (
  `Role_ID` INT(10) UNSIGNED NOT NULL,
  `Role_Name` VARCHAR(45) NOT NULL,
  `Description` VARCHAR(90) NOT NULL,
  PRIMARY KEY (`Role_ID`),
  UNIQUE INDEX `Role_ID_UNIQUE` (`Role_ID` ASC) VISIBLE)
ENGINE = InnoDB;


INSERT INTO `inventory_control_management`.`employee_role`(`Role_ID`,`Role_Name`,`Description`)VALUES(69,"Senior Store Manager","will monitor the store ");
INSERT INTO `inventory_control_management`.`employee_role`(`Role_ID`,`Role_Name`,`Description`)VALUES(656,"Security","Night shift");
INSERT INTO `inventory_control_management`.`employee_role`(`Role_ID`,`Role_Name`,`Description`)VALUES(811,"Security","Night shift");
INSERT INTO `inventory_control_management`.`employee_role`(`Role_ID`,`Role_Name`,`Description`)VALUES(162,"Security","Night shift");
INSERT INTO `inventory_control_management`.`employee_role`(`Role_ID`,`Role_Name`,`Description`)VALUES(754,"Security","Morning shift");
INSERT INTO `inventory_control_management`.`employee_role`(`Role_ID`,`Role_Name`,`Description`)VALUES(884,"Security","Morning shift");
INSERT INTO `inventory_control_management`.`employee_role`(`Role_ID`,`Role_Name`,`Description`)VALUES(324,"Security","Morning shift");
INSERT INTO `inventory_control_management`.`employee_role`(`Role_ID`,`Role_Name`,`Description`)VALUES(729,"Inventory Associate","Tracks and supplies goods");
INSERT INTO `inventory_control_management`.`employee_role`(`Role_ID`,`Role_Name`,`Description`)VALUES(509,"Warehouse Associate","Tracks and supplies goods from warehouse");
INSERT INTO `inventory_control_management`.`employee_role`(`Role_ID`,`Role_Name`,`Description`)VALUES(621,"Inventory Control Specialist","Track inventory and stock changes");
INSERT INTO `inventory_control_management`.`employee_role`(`Role_ID`,`Role_Name`,`Description`)VALUES(169,"Production Scheduler","Developing Production schedules");
INSERT INTO `inventory_control_management`.`employee_role`(`Role_ID`,`Role_Name`,`Description`)VALUES(156,"Inventory Analyst","Managing daily inventory operations");
INSERT INTO `inventory_control_management`.`employee_role`(`Role_ID`,`Role_Name`,`Description`)VALUES(111,"Warehouse Analyst","Managing daily warehouse operations");
INSERT INTO `inventory_control_management`.`employee_role`(`Role_ID`,`Role_Name`,`Description`)VALUES(62,"Replenishment Manager","leads replenishment teams");
INSERT INTO `inventory_control_management`.`employee_role`(`Role_ID`,`Role_Name`,`Description`)VALUES(154,"Materials manager","takes care of total material requirements");
INSERT INTO `inventory_control_management`.`employee_role`(`Role_ID`,`Role_Name`,`Description`)VALUES(184,"Stocker","manages the movement of items");
INSERT INTO `inventory_control_management`.`employee_role`(`Role_ID`,`Role_Name`,`Description`)VALUES(124,"warehouse packer","Retrieves items from warehouse for shipping");
INSERT INTO `inventory_control_management`.`employee_role`(`Role_ID`,`Role_Name`,`Description`)VALUES(129,"Loader","Load the items for transport");
INSERT INTO `inventory_control_management`.`employee_role`(`Role_ID`,`Role_Name`,`Description`)VALUES(109,"warehouse worker","handles shipping, receiving items");
INSERT INTO `inventory_control_management`.`employee_role`(`Role_ID`,`Role_Name`,`Description`)VALUES(121,"Material handler","loads and re-distributes items");
INSERT INTO `inventory_control_management`.`employee_role`(`Role_ID`,`Role_Name`,`Description`)VALUES(269,"Machine Operator","works on heavy load machines");
INSERT INTO `inventory_control_management`.`employee_role`(`Role_ID`,`Role_Name`,`Description`)VALUES(256,"Receiver","check incoming shipments against records");
INSERT INTO `inventory_control_management`.`employee_role`(`Role_ID`,`Role_Name`,`Description`)VALUES(211,"Warehouse supervisor","maintains the safety and efficiency");
INSERT INTO `inventory_control_management`.`employee_role`(`Role_ID`,`Role_Name`,`Description`)VALUES(152,"forklift driver","moves goods or cargo using forklift");
INSERT INTO `inventory_control_management`.`employee_role`(`Role_ID`,`Role_Name`,`Description`)VALUES(254,"inventory control manager"," works to meet inventory standards ");
INSERT INTO `inventory_control_management`.`employee_role`(`Role_ID`,`Role_Name`,`Description`)VALUES(284,"Quality Assurance Manager","develops and maintains quality standards ");
INSERT INTO `inventory_control_management`.`employee_role`(`Role_ID`,`Role_Name`,`Description`)VALUES(224,"Logistics Manager","manages the movement of materials in a warehouse ");
INSERT INTO `inventory_control_management`.`employee_role`(`Role_ID`,`Role_Name`,`Description`)VALUES(229,"Purchasing Clerk","Receives request, prepares purchase orders");
INSERT INTO `inventory_control_management`.`employee_role`(`Role_ID`,`Role_Name`,`Description`)VALUES(209,"Category Analyst","Monitors how a category or brand is performing");
INSERT INTO `inventory_control_management`.`employee_role`(`Role_ID`,`Role_Name`,`Description`)VALUES(221,"Procurement Specialist","responsible for sourcing goods");
INSERT INTO `inventory_control_management`.`employee_role`(`Role_ID`,`Role_Name`,`Description`)VALUES(369,"Supply chain analyst","Gathers data & uses it to recommend improvements");
INSERT INTO `inventory_control_management`.`employee_role`(`Role_ID`,`Role_Name`,`Description`)VALUES(356,"Export manager","Oversees transportation");
INSERT INTO `inventory_control_management`.`employee_role`(`Role_ID`,`Role_Name`,`Description`)VALUES(311,"Demand Planner","Evaluatees the current market and estimates future demands");
INSERT INTO `inventory_control_management`.`employee_role`(`Role_ID`,`Role_Name`,`Description`)VALUES(163,"Capacity Manager","monitors the capacity levels of all manufacturing parts");


-- -----------------------------------------------------
-- Table `Inventory_Control_Management`.`Employee`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Inventory_Control_Management`.`Employee` ;

CREATE TABLE IF NOT EXISTS `Inventory_Control_Management`.`Employee` (
  `Employee_ID` INT(10) UNSIGNED NOT NULL,
  `First_Name` VARCHAR(45) NOT NULL,
  `Last_Name` VARCHAR(45) NOT NULL,
  `Address` VARCHAR(150) NULL,
  `Phone` VARCHAR(15) NOT NULL,
  `Email` VARCHAR(45) NOT NULL,
  `UserName` VARCHAR(45) NOT NULL,
  `PassWord` VARCHAR(45) NOT NULL,
  `Salary` FLOAT NOT NULL,
  `Role_ID` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`Employee_ID`),
  INDEX `fk_Employee_Employee_Role1_idx` (`Role_ID` ASC) VISIBLE,
  CONSTRAINT `fk_Employee_Employee_Role1`
    FOREIGN KEY (`Role_ID`)
    REFERENCES `Inventory_Control_Management`.`Employee_Role` (`Role_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


INSERT INTO `inventory_control_management`.`employee`(`Employee_ID`,`First_Name`,`Last_Name`,`Address`,`Phone`,`Email`,`UserName`,`PassWord`,`Salary`,`Role_ID`)VALUES(1,"Ember","Rose","Queen Caroline   Road, 9112","84746551650","Ember_Rose7024@sheye.org","674634814","1","11000",069);
INSERT INTO `inventory_control_management`.`employee`(`Employee_ID`,`First_Name`,`Last_Name`,`Address`,`Phone`,`Email`,`UserName`,`PassWord`,`Salary`,`Role_ID`)VALUES(2,"Dasha","Wright","Waite  Way, 9697","10303055203","Dasha_Wright2132@hourpy.biz","502236482","2","16000",656);
INSERT INTO `inventory_control_management`.`employee`(`Employee_ID`,`First_Name`,`Last_Name`,`Address`,`Phone`,`Email`,`UserName`,`PassWord`,`Salary`,`Role_ID`)VALUES(3,"Gil","Dubois","Cavendish Hill, 214","40381556635","Gil_Dubois2934@zorer.org","420627747","3","20000",811);
INSERT INTO `inventory_control_management`.`employee`(`Employee_ID`,`First_Name`,`Last_Name`,`Address`,`Phone`,`Email`,`UserName`,`PassWord`,`Salary`,`Role_ID`)VALUES(4,"Percy","Cox","Chancellor  Avenue, 3895","85505780260","Percy_Cox4309@iatim.tech","501207172","4","30000",162);
INSERT INTO `inventory_control_management`.`employee`(`Employee_ID`,`First_Name`,`Last_Name`,`Address`,`Phone`,`Email`,`UserName`,`PassWord`,`Salary`,`Role_ID`)VALUES(5,"Abdul","Robertson","Blendon    Crossroad, 9692","70712660226","Abdul_Robertson3482@dionrab.com","457381228","5","10000",754);
INSERT INTO `inventory_control_management`.`employee`(`Employee_ID`,`First_Name`,`Last_Name`,`Address`,`Phone`,`Email`,`UserName`,`PassWord`,`Salary`,`Role_ID`)VALUES(6,"Bryon","Donnelly","Earl Rise Vale, 8982","20110351237","Bryon_Donnelly2910@dionrab.com","861777773","6","15000",884);
INSERT INTO `inventory_control_management`.`employee`(`Employee_ID`,`First_Name`,`Last_Name`,`Address`,`Phone`,`Email`,`UserName`,`PassWord`,`Salary`,`Role_ID`)VALUES(7,"Naomi","Lakey","Empress  Alley, 8156","76151014100","Naomi_Lakey147@mafthy.com","043828274","7","14000",324);
INSERT INTO `inventory_control_management`.`employee`(`Employee_ID`,`First_Name`,`Last_Name`,`Address`,`Phone`,`Email`,`UserName`,`PassWord`,`Salary`,`Role_ID`)VALUES(8,"Sebastian","Taylor","Blandford  Avenue, 7133","53443456688","Sebastian_Taylor5580@iatim.tech","566722005","8","13000",729);
INSERT INTO `inventory_control_management`.`employee`(`Employee_ID`,`First_Name`,`Last_Name`,`Address`,`Phone`,`Email`,`UserName`,`PassWord`,`Salary`,`Role_ID`)VALUES(9,"Gladys","Parker","Cleaver Road, 2885","31167555415","Gladys_Parker9533@muall.tech","220618803","9","12000",509);
INSERT INTO `inventory_control_management`.`employee`(`Employee_ID`,`First_Name`,`Last_Name`,`Address`,`Phone`,`Email`,`UserName`,`PassWord`,`Salary`,`Role_ID`)VALUES(10,"Luke","Weston","Ensign   Road, 4413","63143276778","Luke_Weston1207@deons.tech","306133000","10","11000",621);
INSERT INTO `inventory_control_management`.`employee`(`Employee_ID`,`First_Name`,`Last_Name`,`Address`,`Phone`,`Email`,`UserName`,`PassWord`,`Salary`,`Role_ID`)VALUES(14,"Eber","Rse","Quen Caroline   Road, 9112","846551650","Eber_Rose7024@sheye.org","67434814","1","11000",169);
INSERT INTO `inventory_control_management`.`employee`(`Employee_ID`,`First_Name`,`Last_Name`,`Address`,`Phone`,`Email`,`UserName`,`PassWord`,`Salary`,`Role_ID`)VALUES(15,"Dsha","Wriht","Waie  Way, 9697","103055203","Dsha_Wright2132@hourpy.biz","50236482","2","10000",156);
INSERT INTO `inventory_control_management`.`employee`(`Employee_ID`,`First_Name`,`Last_Name`,`Address`,`Phone`,`Email`,`UserName`,`PassWord`,`Salary`,`Role_ID`)VALUES(16,"Giwl","Dbois","Cavedish Hill, 214","403856635","Gil_Dubos2934@zorer.org","42027747","3","9000",111);
INSERT INTO `inventory_control_management`.`employee`(`Employee_ID`,`First_Name`,`Last_Name`,`Address`,`Phone`,`Email`,`UserName`,`PassWord`,`Salary`,`Role_ID`)VALUES(17,"Pecy","Coxy","Chacellor  Avenue, 3895","855050260","PercyCox4309@iatim.tech","50127172","4","8000",062);
INSERT INTO `inventory_control_management`.`employee`(`Employee_ID`,`First_Name`,`Last_Name`,`Address`,`Phone`,`Email`,`UserName`,`PassWord`,`Salary`,`Role_ID`)VALUES(18,"Abdl","Roberson","Blendone    Crossroad, 9692","707160226","Abdul.Robertson3482@dionrab.com","45781228","5","45000",154);
INSERT INTO `inventory_control_management`.`employee`(`Employee_ID`,`First_Name`,`Last_Name`,`Address`,`Phone`,`Email`,`UserName`,`PassWord`,`Salary`,`Role_ID`)VALUES(19,"Bron","Donnlly","Earl Rse Vale, 8982","201103237","BryonDonnelly2910@dionrab.com","86677773","6","40000",184);
INSERT INTO `inventory_control_management`.`employee`(`Employee_ID`,`First_Name`,`Last_Name`,`Address`,`Phone`,`Email`,`UserName`,`PassWord`,`Salary`,`Role_ID`)VALUES(20,"Naoi","Laker","Empresss  Alley, 8156","761510141","NaomiLakey147@mafthy.com","04388274","7","35000",124);
INSERT INTO `inventory_control_management`.`employee`(`Employee_ID`,`First_Name`,`Last_Name`,`Address`,`Phone`,`Email`,`UserName`,`PassWord`,`Salary`,`Role_ID`)VALUES(21,"Sebastan","Taylr","Blandfrd  Avenue, 7133","534456688","SebastianTaylor5580@iatim.tech","56622005","8","30000",129);
INSERT INTO `inventory_control_management`.`employee`(`Employee_ID`,`First_Name`,`Last_Name`,`Address`,`Phone`,`Email`,`UserName`,`PassWord`,`Salary`,`Role_ID`)VALUES(22,"Glays","Parke","Clever Road, 2885","311555415","GladysParker9533@muall.tech","22061803","9","25000",109);
INSERT INTO `inventory_control_management`.`employee`(`Employee_ID`,`First_Name`,`Last_Name`,`Address`,`Phone`,`Email`,`UserName`,`PassWord`,`Salary`,`Role_ID`)VALUES(23,"Lukey","Weton","Ensigner  Road, 4413","633276778","Luke.Weston1207@deons.tech","30613000","10","26000",121);
INSERT INTO `inventory_control_management`.`employee`(`Employee_ID`,`First_Name`,`Last_Name`,`Address`,`Phone`,`Email`,`UserName`,`PassWord`,`Salary`,`Role_ID`)VALUES(24,"Emer","Roe","Quee Caroline   Road, 9112","847551650","Emer_Rose7024@sheye.org","67463814","1","25000",269);
INSERT INTO `inventory_control_management`.`employee`(`Employee_ID`,`First_Name`,`Last_Name`,`Address`,`Phone`,`Email`,`UserName`,`PassWord`,`Salary`,`Role_ID`)VALUES(25,"Daha","Wrght","Wait  Way, 9697","103030553","Daha_Wright2132@hourpy.biz","50223682","2","14000",256);
INSERT INTO `inventory_control_management`.`employee`(`Employee_ID`,`First_Name`,`Last_Name`,`Address`,`Phone`,`Email`,`UserName`,`PassWord`,`Salary`,`Role_ID`)VALUES(26,"Gieel","Dubis","Cavendsh Hill, 214","403815635","Gil_Dubois234@zorer.org","42062747","3","15000",211);
INSERT INTO `inventory_control_management`.`employee`(`Employee_ID`,`First_Name`,`Last_Name`,`Address`,`Phone`,`Email`,`UserName`,`PassWord`,`Salary`,`Role_ID`)VALUES(27,"Pery","Coxt","Chancelor  Avenue, 3895","855057800","Percy_x4309@iatim.tech","50120172","4","16000",152);
INSERT INTO `inventory_control_management`.`employee`(`Employee_ID`,`First_Name`,`Last_Name`,`Address`,`Phone`,`Email`,`UserName`,`PassWord`,`Salary`,`Role_ID`)VALUES(28,"Adul","Roberton","Blenon    Crossroad, 9692","707126626","AbdulRobertson3482@dionrab.com","45738228","5","17000",254);
INSERT INTO `inventory_control_management`.`employee`(`Employee_ID`,`First_Name`,`Last_Name`,`Address`,`Phone`,`Email`,`UserName`,`PassWord`,`Salary`,`Role_ID`)VALUES(29,"Byon","Donelly","Earl Riser Vale, 8982","210351237","Bryon.Donnelly2910@dionrab.com","86177773","6","18000",284);
INSERT INTO `inventory_control_management`.`employee`(`Employee_ID`,`First_Name`,`Last_Name`,`Address`,`Phone`,`Email`,`UserName`,`PassWord`,`Salary`,`Role_ID`)VALUES(30,"Naom","Lake","Empresso  Alley, 8156","761014100","Naomi.Lakey147@mafthy.com","04382824","7","19000",224);
INSERT INTO `inventory_control_management`.`employee`(`Employee_ID`,`First_Name`,`Last_Name`,`Address`,`Phone`,`Email`,`UserName`,`PassWord`,`Salary`,`Role_ID`)VALUES(31,"Sebastin","Taylo","Blanford  Avenue, 7133","534434588","Sebastian.Taylor5580@iatim.tech","56672205","8","20000",229);
INSERT INTO `inventory_control_management`.`employee`(`Employee_ID`,`First_Name`,`Last_Name`,`Address`,`Phone`,`Email`,`UserName`,`PassWord`,`Salary`,`Role_ID`)VALUES(32,"Glady","Prker","Claver Road, 2885","311675415","Gladys.Parker9533@muall.tech","22018803","9","15000",209);
INSERT INTO `inventory_control_management`.`employee`(`Employee_ID`,`First_Name`,`Last_Name`,`Address`,`Phone`,`Email`,`UserName`,`PassWord`,`Salary`,`Role_ID`)VALUES(33,"Luk","Weson","Ensig   Road, 4413","631432778","LukeWeston1207@deons.tech","30613300","10","14000",221);
INSERT INTO `inventory_control_management`.`employee`(`Employee_ID`,`First_Name`,`Last_Name`,`Address`,`Phone`,`Email`,`UserName`,`PassWord`,`Salary`,`Role_ID`)VALUES(34,"Embr","Ros","Qeen Caroline   Road, 9112","847465650","Embr_Rose7024@sheye.org","67463414","1","13000",369);
INSERT INTO `inventory_control_management`.`employee`(`Employee_ID`,`First_Name`,`Last_Name`,`Address`,`Phone`,`Email`,`UserName`,`PassWord`,`Salary`,`Role_ID`)VALUES(35,"Dasa","Wight","Wite  Way, 9697","303055203","Dasa_Wright213@hourpy.biz","50226482","2","12000",356);
INSERT INTO `inventory_control_management`.`employee`(`Employee_ID`,`First_Name`,`Last_Name`,`Address`,`Phone`,`Email`,`UserName`,`PassWord`,`Salary`,`Role_ID`)VALUES(36,"Gigl","Dubos","Cavndish Hill, 214","403815565","Gil_Dubois2934@zorer.org","42062777","3","11000",311);
INSERT INTO `inventory_control_management`.`employee`(`Employee_ID`,`First_Name`,`Last_Name`,`Address`,`Phone`,`Email`,`UserName`,`PassWord`,`Salary`,`Role_ID`)VALUES(37,"Perc","Coxd","Chancello  Avenue, 3895","855057802","Percy_Cox49@iatim.tech","50120712","4","10000",163);



-- -----------------------------------------------------
-- Table `Inventory_Control_Management`.`Order`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Inventory_Control_Management`.`Order` ;

CREATE TABLE IF NOT EXISTS `Inventory_Control_Management`.`Order` (
  `Order-ID` INT UNSIGNED NOT NULL,
  `Store_ID` INT UNSIGNED NOT NULL,
  `Order_sequence` INT UNSIGNED NOT NULL,
  `Order_Date` DATE NOT NULL,
  `Product_ID` VARCHAR(45) NOT NULL,
  `Product_Size` VARCHAR(45) NOT NULL,
  `Unit_Price_for_the_product` FLOAT NOT NULL,
  `Quantity_of_Product_Purchased` INT(10) NOT NULL,
  `Discount` FLOAT NOT NULL,
  `Total` FLOAT NOT NULL,
  `Bill_number` INT(10) UNSIGNED NOT NULL,
  `Customer_ID` INT(10) UNSIGNED NOT NULL,
  `Employee_ID` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`Order-ID`, `Store_ID`, `Order_sequence`, `Order_Date`),
  INDEX `fk_Order_Detail_Product1_idx` (`Product_ID` ASC) VISIBLE,
  INDEX `fk_Order_Detail_Payment1_idx` (`Bill_number` ASC) VISIBLE,
  INDEX `fk_Order_Customer1_idx` (`Customer_ID` ASC) VISIBLE,
  INDEX `fk_Order_Employee1_idx` (`Employee_ID` ASC) VISIBLE,
  CONSTRAINT `fk_Order_Detail_Product1`
    FOREIGN KEY (`Product_ID`)
    REFERENCES `Inventory_Control_Management`.`Product` (`Product_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Order_Detail_Payment1`
    FOREIGN KEY (`Bill_number`)
    REFERENCES `Inventory_Control_Management`.`Transaction` (`Bill_number`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Order_Customer1`
    FOREIGN KEY (`Customer_ID`)
    REFERENCES `Inventory_Control_Management`.`Customer` (`Customer_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Order_Employee1`
    FOREIGN KEY (`Employee_ID`)
    REFERENCES `Inventory_Control_Management`.`Employee` (`Employee_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

INSERT INTO `inventory_control_management`.`order`(`Order-ID`,`Store_ID`,`Order_sequence`,`Order_Date`,`Product_ID`,`Product_Size`,`Unit_Price_for_the_product`,`Quantity_of_Product_Purchased`,`Discount`,`Total`,`Bill_number`,`Customer_ID`,`Employee_ID`) values (10001, 20001, 30001, '2022-02-21', 40001, '3XL', 1780.66, 63, 71, 8524, 50001, 8, 1013);
INSERT INTO `inventory_control_management`.`order`(`Order-ID`,`Store_ID`,`Order_sequence`,`Order_Date`,`Product_ID`,`Product_Size`,`Unit_Price_for_the_product`,`Quantity_of_Product_Purchased`,`Discount`,`Total`,`Bill_number`,`Customer_ID`,`Employee_ID`) values (10001, 20002, 30002, '2022-01-04', 40002, 'M', 2720.93, 20, 59, 9295, 50002, 8, 1004);
INSERT INTO `inventory_control_management`.`order`(`Order-ID`,`Store_ID`,`Order_sequence`,`Order_Date`,`Product_ID`,`Product_Size`,`Unit_Price_for_the_product`,`Quantity_of_Product_Purchased`,`Discount`,`Total`,`Bill_number`,`Customer_ID`,`Employee_ID`) values (10001, 20003, 30003, '2022-03-26', 40003, 'XS', 3409.94, 66, 12, 4856, 50003, 3, 1012);
INSERT INTO `inventory_control_management`.`order`(`Order-ID`,`Store_ID`,`Order_sequence`,`Order_Date`,`Product_ID`,`Product_Size`,`Unit_Price_for_the_product`,`Quantity_of_Product_Purchased`,`Discount`,`Total`,`Bill_number`,`Customer_ID`,`Employee_ID`) values (10002, 20004, 30004, '2022-04-29', 40004, '2XL', 2705.78, 8, 56, 1394, 50004, 8, 1015);
INSERT INTO `inventory_control_management`.`order`(`Order-ID`,`Store_ID`,`Order_sequence`,`Order_Date`,`Product_ID`,`Product_Size`,`Unit_Price_for_the_product`,`Quantity_of_Product_Purchased`,`Discount`,`Total`,`Bill_number`,`Customer_ID`,`Employee_ID`) values (10002, 20005, 30005, '2022-01-12', 40005, 'M', 2599.2, 91, 6, 8673, 50005, 5, 1019);
INSERT INTO `inventory_control_management`.`order`(`Order-ID`,`Store_ID`,`Order_sequence`,`Order_Date`,`Product_ID`,`Product_Size`,`Unit_Price_for_the_product`,`Quantity_of_Product_Purchased`,`Discount`,`Total`,`Bill_number`,`Customer_ID`,`Employee_ID`) values (10003, 20006, 30006, '2022-04-16', 40006, 'XS', 420.31, 70, 29, 3481, 50006, 1, 1010);
INSERT INTO `inventory_control_management`.`order`(`Order-ID`,`Store_ID`,`Order_sequence`,`Order_Date`,`Product_ID`,`Product_Size`,`Unit_Price_for_the_product`,`Quantity_of_Product_Purchased`,`Discount`,`Total`,`Bill_number`,`Customer_ID`,`Employee_ID`) values (10004, 20007, 30007, '2022-04-11', 40007, 'XS', 2686.74, 52, 2, 9049, 50007, 9, 1012);
INSERT INTO `inventory_control_management`.`order`(`Order-ID`,`Store_ID`,`Order_sequence`,`Order_Date`,`Product_ID`,`Product_Size`,`Unit_Price_for_the_product`,`Quantity_of_Product_Purchased`,`Discount`,`Total`,`Bill_number`,`Customer_ID`,`Employee_ID`) values (10004, 20008, 30008, '2022-02-17', 40008, 'XS', 4645.44, 95, 74, 7499, 50008, 1, 1003);
INSERT INTO `inventory_control_management`.`order`(`Order-ID`,`Store_ID`,`Order_sequence`,`Order_Date`,`Product_ID`,`Product_Size`,`Unit_Price_for_the_product`,`Quantity_of_Product_Purchased`,`Discount`,`Total`,`Bill_number`,`Customer_ID`,`Employee_ID`) values (10004, 20009, 30009, '2022-05-03', 40009, '3XL', 2539.06, 51, 11, 9485, 50009, 8, 1022);
INSERT INTO `inventory_control_management`.`order`(`Order-ID`,`Store_ID`,`Order_sequence`,`Order_Date`,`Product_ID`,`Product_Size`,`Unit_Price_for_the_product`,`Quantity_of_Product_Purchased`,`Discount`,`Total`,`Bill_number`,`Customer_ID`,`Employee_ID`) values (10004, 20010, 30010, '2022-02-16', 40010, '3XL', 3285.66, 79, 23, 2082, 50010, 7, 1008);
INSERT INTO `inventory_control_management`.`order`(`Order-ID`,`Store_ID`,`Order_sequence`,`Order_Date`,`Product_ID`,`Product_Size`,`Unit_Price_for_the_product`,`Quantity_of_Product_Purchased`,`Discount`,`Total`,`Bill_number`,`Customer_ID`,`Employee_ID`) values (10005, 20011, 30011, '2022-02-12', 40011, '3XL', 1055.74, 29, 10, 9052, 50011, 10, 1006);
INSERT INTO `inventory_control_management`.`order`(`Order-ID`,`Store_ID`,`Order_sequence`,`Order_Date`,`Product_ID`,`Product_Size`,`Unit_Price_for_the_product`,`Quantity_of_Product_Purchased`,`Discount`,`Total`,`Bill_number`,`Customer_ID`,`Employee_ID`) values (10005, 20012, 30012, '2022-03-04', 40012, 'XS', 1769.04, 58, 66, 4611, 50012, 3, 1012);
INSERT INTO `inventory_control_management`.`order`(`Order-ID`,`Store_ID`,`Order_sequence`,`Order_Date`,`Product_ID`,`Product_Size`,`Unit_Price_for_the_product`,`Quantity_of_Product_Purchased`,`Discount`,`Total`,`Bill_number`,`Customer_ID`,`Employee_ID`) values (10006, 20013, 30013, '2022-03-22', 40013, 'L', 3049.15, 65, 68, 576, 50013, 1, 1007);
INSERT INTO `inventory_control_management`.`order`(`Order-ID`,`Store_ID`,`Order_sequence`,`Order_Date`,`Product_ID`,`Product_Size`,`Unit_Price_for_the_product`,`Quantity_of_Product_Purchased`,`Discount`,`Total`,`Bill_number`,`Customer_ID`,`Employee_ID`) values (10006, 20014, 30014, '2022-03-15', 40014, '3XL', 3989.5, 65, 76, 4876, 50014, 10, 1001);
INSERT INTO `inventory_control_management`.`order`(`Order-ID`,`Store_ID`,`Order_sequence`,`Order_Date`,`Product_ID`,`Product_Size`,`Unit_Price_for_the_product`,`Quantity_of_Product_Purchased`,`Discount`,`Total`,`Bill_number`,`Customer_ID`,`Employee_ID`) values (10007, 20015, 30015, '2022-05-06', 40015, 'S', 2450.81, 21, 5, 5714, 50015, 1, 1015);
INSERT INTO `inventory_control_management`.`order`(`Order-ID`,`Store_ID`,`Order_sequence`,`Order_Date`,`Product_ID`,`Product_Size`,`Unit_Price_for_the_product`,`Quantity_of_Product_Purchased`,`Discount`,`Total`,`Bill_number`,`Customer_ID`,`Employee_ID`) values (10007, 20016, 30016, '2022-02-15', 40016, 'S', 2277.48, 98, 80, 8580, 50016, 6, 1023);
INSERT INTO `inventory_control_management`.`order`(`Order-ID`,`Store_ID`,`Order_sequence`,`Order_Date`,`Product_ID`,`Product_Size`,`Unit_Price_for_the_product`,`Quantity_of_Product_Purchased`,`Discount`,`Total`,`Bill_number`,`Customer_ID`,`Employee_ID`) values (10008, 20017, 30017, '2022-01-09', 40017, 'L', 1726.58, 26, 12, 1912, 50017, 1, 1013);
INSERT INTO `inventory_control_management`.`order`(`Order-ID`,`Store_ID`,`Order_sequence`,`Order_Date`,`Product_ID`,`Product_Size`,`Unit_Price_for_the_product`,`Quantity_of_Product_Purchased`,`Discount`,`Total`,`Bill_number`,`Customer_ID`,`Employee_ID`) values (10009, 20018, 30018, '2022-04-22', 40018, 'S', 835.27, 44, 59, 5470, 50018, 8, 1001);
INSERT INTO `inventory_control_management`.`order`(`Order-ID`,`Store_ID`,`Order_sequence`,`Order_Date`,`Product_ID`,`Product_Size`,`Unit_Price_for_the_product`,`Quantity_of_Product_Purchased`,`Discount`,`Total`,`Bill_number`,`Customer_ID`,`Employee_ID`) values (10010, 20019, 30019, '2022-03-17', 40019, 'XL', 3858.54, 1, 67, 8415, 50019, 5, 1017);
INSERT INTO `inventory_control_management`.`order`(`Order-ID`,`Store_ID`,`Order_sequence`,`Order_Date`,`Product_ID`,`Product_Size`,`Unit_Price_for_the_product`,`Quantity_of_Product_Purchased`,`Discount`,`Total`,`Bill_number`,`Customer_ID`,`Employee_ID`) values (10011, 20020, 30020, '2022-01-20', 40020, 'XS', 3165.69, 12, 13, 1060, 50020, 5, 1012);
INSERT INTO `inventory_control_management`.`order`(`Order-ID`,`Store_ID`,`Order_sequence`,`Order_Date`,`Product_ID`,`Product_Size`,`Unit_Price_for_the_product`,`Quantity_of_Product_Purchased`,`Discount`,`Total`,`Bill_number`,`Customer_ID`,`Employee_ID`) values (10012, 20021, 30021, '2022-03-05', 40021, 'L', 456.44, 74, 56, 3240, 50021, 1, 1016);
INSERT INTO `inventory_control_management`.`order`(`Order-ID`,`Store_ID`,`Order_sequence`,`Order_Date`,`Product_ID`,`Product_Size`,`Unit_Price_for_the_product`,`Quantity_of_Product_Purchased`,`Discount`,`Total`,`Bill_number`,`Customer_ID`,`Employee_ID`) values (10013, 20022, 30022, '2022-02-13', 40022, 'XS', 309.96, 4, 5, 5992, 50022, 8, 1003);
INSERT INTO `inventory_control_management`.`order`(`Order-ID`,`Store_ID`,`Order_sequence`,`Order_Date`,`Product_ID`,`Product_Size`,`Unit_Price_for_the_product`,`Quantity_of_Product_Purchased`,`Discount`,`Total`,`Bill_number`,`Customer_ID`,`Employee_ID`) values (10013, 20023, 30023, '2022-03-31', 40023, 'L', 1006.62, 76, 16, 1511, 50023, 6, 1021);
INSERT INTO `inventory_control_management`.`order`(`Order-ID`,`Store_ID`,`Order_sequence`,`Order_Date`,`Product_ID`,`Product_Size`,`Unit_Price_for_the_product`,`Quantity_of_Product_Purchased`,`Discount`,`Total`,`Bill_number`,`Customer_ID`,`Employee_ID`) values (10014, 20024, 30024, '2022-01-30', 40024, '3XL', 2462.39, 26, 2, 5259, 50024, 7, 1001);
INSERT INTO `inventory_control_management`.`order`(`Order-ID`,`Store_ID`,`Order_sequence`,`Order_Date`,`Product_ID`,`Product_Size`,`Unit_Price_for_the_product`,`Quantity_of_Product_Purchased`,`Discount`,`Total`,`Bill_number`,`Customer_ID`,`Employee_ID`) values (10015, 20025, 30025, '2022-03-11', 40025, 'XS', 911.23, 55, 44, 9727, 50025, 7, 1009);
INSERT INTO `inventory_control_management`.`order`(`Order-ID`,`Store_ID`,`Order_sequence`,`Order_Date`,`Product_ID`,`Product_Size`,`Unit_Price_for_the_product`,`Quantity_of_Product_Purchased`,`Discount`,`Total`,`Bill_number`,`Customer_ID`,`Employee_ID`) values (10015, 20026, 30026, '2022-01-03', 40026, 'XS', 2402.28, 33, 77, 2345, 50026, 1, 1013);
INSERT INTO `inventory_control_management`.`order`(`Order-ID`,`Store_ID`,`Order_sequence`,`Order_Date`,`Product_ID`,`Product_Size`,`Unit_Price_for_the_product`,`Quantity_of_Product_Purchased`,`Discount`,`Total`,`Bill_number`,`Customer_ID`,`Employee_ID`) values (10016, 20027, 30027, '2022-04-25', 40027, '2XL', 963.63, 15, 61, 6345, 50027, 7, 1014);
INSERT INTO `inventory_control_management`.`order`(`Order-ID`,`Store_ID`,`Order_sequence`,`Order_Date`,`Product_ID`,`Product_Size`,`Unit_Price_for_the_product`,`Quantity_of_Product_Purchased`,`Discount`,`Total`,`Bill_number`,`Customer_ID`,`Employee_ID`) values (10017, 20028, 30028, '2022-01-08', 40028, 'L', 2975.9, 98, 18, 2933, 50028, 1, 1017);
INSERT INTO `inventory_control_management`.`order`(`Order-ID`,`Store_ID`,`Order_sequence`,`Order_Date`,`Product_ID`,`Product_Size`,`Unit_Price_for_the_product`,`Quantity_of_Product_Purchased`,`Discount`,`Total`,`Bill_number`,`Customer_ID`,`Employee_ID`) values (10018, 20029, 30029, '2022-04-05', 40029, '2XL', 318.72, 46, 17, 8674, 50029, 4, 1008);
INSERT INTO `inventory_control_management`.`order`(`Order-ID`,`Store_ID`,`Order_sequence`,`Order_Date`,`Product_ID`,`Product_Size`,`Unit_Price_for_the_product`,`Quantity_of_Product_Purchased`,`Discount`,`Total`,`Bill_number`,`Customer_ID`,`Employee_ID`) values (10019, 20030, 30030, '2022-02-12', 40030, 'L', 1775.74, 17, 34, 3086, 50030, 5, 1006);
INSERT INTO `inventory_control_management`.`order`(`Order-ID`,`Store_ID`,`Order_sequence`,`Order_Date`,`Product_ID`,`Product_Size`,`Unit_Price_for_the_product`,`Quantity_of_Product_Purchased`,`Discount`,`Total`,`Bill_number`,`Customer_ID`,`Employee_ID`) values (10020, 20031, 30031, '2022-01-29', 40031, 'XL', 2274.19, 35, 41, 6333, 50031, 10, 1001);
INSERT INTO `inventory_control_management`.`order`(`Order-ID`,`Store_ID`,`Order_sequence`,`Order_Date`,`Product_ID`,`Product_Size`,`Unit_Price_for_the_product`,`Quantity_of_Product_Purchased`,`Discount`,`Total`,`Bill_number`,`Customer_ID`,`Employee_ID`) values (10021, 20032, 30032, '2022-04-12', 40032, 'S', 4457.76, 64, 22, 6499, 50032, 1, 1005);
INSERT INTO `inventory_control_management`.`order`(`Order-ID`,`Store_ID`,`Order_sequence`,`Order_Date`,`Product_ID`,`Product_Size`,`Unit_Price_for_the_product`,`Quantity_of_Product_Purchased`,`Discount`,`Total`,`Bill_number`,`Customer_ID`,`Employee_ID`) values (10021, 20033, 30033, '2022-04-04', 40033, 'XS', 4233.72, 26, 24, 4984, 50033, 8, 1009);
INSERT INTO `inventory_control_management`.`order`(`Order-ID`,`Store_ID`,`Order_sequence`,`Order_Date`,`Product_ID`,`Product_Size`,`Unit_Price_for_the_product`,`Quantity_of_Product_Purchased`,`Discount`,`Total`,`Bill_number`,`Customer_ID`,`Employee_ID`) values (10021, 20034, 30034, '2022-03-15', 40034, 'M', 3860.05, 75, 45, 3722, 50034, 10, 1005);
INSERT INTO `inventory_control_management`.`order`(`Order-ID`,`Store_ID`,`Order_sequence`,`Order_Date`,`Product_ID`,`Product_Size`,`Unit_Price_for_the_product`,`Quantity_of_Product_Purchased`,`Discount`,`Total`,`Bill_number`,`Customer_ID`,`Employee_ID`) values (10022, 20035, 30035, '2022-01-03', 40035, 'XS', 2334.52, 34, 69, 483, 50035, 6, 1009);
INSERT INTO `inventory_control_management`.`order`(`Order-ID`,`Store_ID`,`Order_sequence`,`Order_Date`,`Product_ID`,`Product_Size`,`Unit_Price_for_the_product`,`Quantity_of_Product_Purchased`,`Discount`,`Total`,`Bill_number`,`Customer_ID`,`Employee_ID`) values (10022, 20036, 30036, '2022-02-16', 40036, 'S', 2038.5, 71, 15, 7546, 50036, 6, 1010);
INSERT INTO `inventory_control_management`.`order`(`Order-ID`,`Store_ID`,`Order_sequence`,`Order_Date`,`Product_ID`,`Product_Size`,`Unit_Price_for_the_product`,`Quantity_of_Product_Purchased`,`Discount`,`Total`,`Bill_number`,`Customer_ID`,`Employee_ID`) values (10022, 20037, 30037, '2022-03-06', 40037, '3XL', 695.87, 74, 51, 3542, 50037, 1, 1005);
INSERT INTO `inventory_control_management`.`order`(`Order-ID`,`Store_ID`,`Order_sequence`,`Order_Date`,`Product_ID`,`Product_Size`,`Unit_Price_for_the_product`,`Quantity_of_Product_Purchased`,`Discount`,`Total`,`Bill_number`,`Customer_ID`,`Employee_ID`) values (10023, 20038, 30038, '2022-02-12', 40038, 'L', 3130.67, 90, 2, 6138, 50038, 1, 1007);
INSERT INTO `inventory_control_management`.`order`(`Order-ID`,`Store_ID`,`Order_sequence`,`Order_Date`,`Product_ID`,`Product_Size`,`Unit_Price_for_the_product`,`Quantity_of_Product_Purchased`,`Discount`,`Total`,`Bill_number`,`Customer_ID`,`Employee_ID`) values (10023, 20039, 30039, '2022-03-03', 40039, 'S', 2219.12, 75, 42, 9208, 50039, 7, 1023);
INSERT INTO `inventory_control_management`.`order`(`Order-ID`,`Store_ID`,`Order_sequence`,`Order_Date`,`Product_ID`,`Product_Size`,`Unit_Price_for_the_product`,`Quantity_of_Product_Purchased`,`Discount`,`Total`,`Bill_number`,`Customer_ID`,`Employee_ID`) values (10023, 20040, 30040, '2022-05-06', 40040, 'L', 811.23, 93, 54, 6014, 50040, 5, 1007);
INSERT INTO `inventory_control_management`.`order`(`Order-ID`,`Store_ID`,`Order_sequence`,`Order_Date`,`Product_ID`,`Product_Size`,`Unit_Price_for_the_product`,`Quantity_of_Product_Purchased`,`Discount`,`Total`,`Bill_number`,`Customer_ID`,`Employee_ID`) values (10024, 20041, 30041, '2022-04-17', 40041, 'M', 2506.97, 9, 1, 4143, 50041, 1, 1010);
INSERT INTO `inventory_control_management`.`order`(`Order-ID`,`Store_ID`,`Order_sequence`,`Order_Date`,`Product_ID`,`Product_Size`,`Unit_Price_for_the_product`,`Quantity_of_Product_Purchased`,`Discount`,`Total`,`Bill_number`,`Customer_ID`,`Employee_ID`) values (10025, 20042, 30042, '2022-03-17', 40042, 'S', 1302.28, 8, 5, 374, 50042, 9, 1024);
INSERT INTO `inventory_control_management`.`order`(`Order-ID`,`Store_ID`,`Order_sequence`,`Order_Date`,`Product_ID`,`Product_Size`,`Unit_Price_for_the_product`,`Quantity_of_Product_Purchased`,`Discount`,`Total`,`Bill_number`,`Customer_ID`,`Employee_ID`) values (10025, 20043, 30043, '2022-05-04', 40043, '3XL', 2455.71, 66, 3, 755, 50043, 4, 1014);
INSERT INTO `inventory_control_management`.`order`(`Order-ID`,`Store_ID`,`Order_sequence`,`Order_Date`,`Product_ID`,`Product_Size`,`Unit_Price_for_the_product`,`Quantity_of_Product_Purchased`,`Discount`,`Total`,`Bill_number`,`Customer_ID`,`Employee_ID`) values (10025, 20044, 30044, '2022-01-29', 40044, '3XL', 676.67, 99, 42, 229, 50044, 3, 1005);
INSERT INTO `inventory_control_management`.`order`(`Order-ID`,`Store_ID`,`Order_sequence`,`Order_Date`,`Product_ID`,`Product_Size`,`Unit_Price_for_the_product`,`Quantity_of_Product_Purchased`,`Discount`,`Total`,`Bill_number`,`Customer_ID`,`Employee_ID`) values (10026, 20045, 30045, '2022-03-13', 40045, 'XS', 469.8, 15, 6, 6508, 50045, 3, 1024);
INSERT INTO `inventory_control_management`.`order`(`Order-ID`,`Store_ID`,`Order_sequence`,`Order_Date`,`Product_ID`,`Product_Size`,`Unit_Price_for_the_product`,`Quantity_of_Product_Purchased`,`Discount`,`Total`,`Bill_number`,`Customer_ID`,`Employee_ID`) values (10027, 20046, 30046, '2022-03-08', 40046, 'M', 317.83, 70, 13, 7928, 50046, 9, 1005);
INSERT INTO `inventory_control_management`.`order`(`Order-ID`,`Store_ID`,`Order_sequence`,`Order_Date`,`Product_ID`,`Product_Size`,`Unit_Price_for_the_product`,`Quantity_of_Product_Purchased`,`Discount`,`Total`,`Bill_number`,`Customer_ID`,`Employee_ID`) values (10027, 20047, 30047, '2022-01-08', 40047, '3XL', 4725.83, 41, 15, 6184, 50047, 8, 1009);
INSERT INTO `inventory_control_management`.`order`(`Order-ID`,`Store_ID`,`Order_sequence`,`Order_Date`,`Product_ID`,`Product_Size`,`Unit_Price_for_the_product`,`Quantity_of_Product_Purchased`,`Discount`,`Total`,`Bill_number`,`Customer_ID`,`Employee_ID`) values (10028, 20048, 30048, '2022-04-13', 40048, 'M', 1195.8, 80, 60, 9627, 50048, 7, 1020);
INSERT INTO `inventory_control_management`.`order`(`Order-ID`,`Store_ID`,`Order_sequence`,`Order_Date`,`Product_ID`,`Product_Size`,`Unit_Price_for_the_product`,`Quantity_of_Product_Purchased`,`Discount`,`Total`,`Bill_number`,`Customer_ID`,`Employee_ID`) values (10029, 20049, 30049, '2022-03-22', 40049, '3XL', 4500.87, 11, 72, 4594, 50049, 8, 1023);
INSERT INTO `inventory_control_management`.`order`(`Order-ID`,`Store_ID`,`Order_sequence`,`Order_Date`,`Product_ID`,`Product_Size`,`Unit_Price_for_the_product`,`Quantity_of_Product_Purchased`,`Discount`,`Total`,`Bill_number`,`Customer_ID`,`Employee_ID`) values (10030, 20050, 30050, '2022-01-06', 40050, '2XL', 3369.9, 42, 73, 7888, 50050, 7, 1003);

-- -----------------------------------------------------
-- Table `Inventory_Control_Management`.`Inventory`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Inventory_Control_Management`.`Inventory` ;

CREATE TABLE IF NOT EXISTS `Inventory_Control_Management`.`Inventory` (
  `Store_ID` INT NOT NULL,
  `Week_ID` INT NOT NULL,
  `Product_ID` VARCHAR(45) NOT NULL,
  `On_Order_Quantity` INT NOT NULL,
  `In_Transit_Quantity` INT NOT NULL,
  `On_Hand_Quantity` INT NOT NULL,
  `Warehouse_ID` INT(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`Store_ID`, `Week_ID`, `Product_ID`),
  INDEX `fk_Inventory_Product1_idx` (`Product_ID` ASC) VISIBLE,
  INDEX `fk_Inventory_Warehouse1_idx` (`Warehouse_ID` ASC) VISIBLE,
  CONSTRAINT `fk_Inventory_Product1`
    FOREIGN KEY (`Product_ID`)
    REFERENCES `Inventory_Control_Management`.`Product` (`Product_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Inventory_Warehouse1`
    FOREIGN KEY (`Warehouse_ID`)
    REFERENCES `Inventory_Control_Management`.`Warehouse` (`Warehouse_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

INSERT INTO `inventory_control_management`.`inventory`(`Store_ID`,`Week_ID`,`Product_ID`,`On_Order_Quantity`,`In_Transit_Quantity`,`On_Hand_Quantity`,`Warehouse_ID`) values (70001, 202210, 40017, 89, 94, 1, 80042);
INSERT INTO `inventory_control_management`.`inventory`(`Store_ID`,`Week_ID`,`Product_ID`,`On_Order_Quantity`,`In_Transit_Quantity`,`On_Hand_Quantity`,`Warehouse_ID`) values (70002, 202202, 40002, 24, 86, 37, 80017);
INSERT INTO `inventory_control_management`.`inventory`(`Store_ID`,`Week_ID`,`Product_ID`,`On_Order_Quantity`,`In_Transit_Quantity`,`On_Hand_Quantity`,`Warehouse_ID`) values (70003, 202211, 40009, 0, 73, 47, 80007);
INSERT INTO `inventory_control_management`.`inventory`(`Store_ID`,`Week_ID`,`Product_ID`,`On_Order_Quantity`,`In_Transit_Quantity`,`On_Hand_Quantity`,`Warehouse_ID`) values (70004, 202201, 40012, 17, 55, 41, 80029);
INSERT INTO `inventory_control_management`.`inventory`(`Store_ID`,`Week_ID`,`Product_ID`,`On_Order_Quantity`,`In_Transit_Quantity`,`On_Hand_Quantity`,`Warehouse_ID`) values (70005, 202202, 40009, 39, 1, 68, 80015);
INSERT INTO `inventory_control_management`.`inventory`(`Store_ID`,`Week_ID`,`Product_ID`,`On_Order_Quantity`,`In_Transit_Quantity`,`On_Hand_Quantity`,`Warehouse_ID`) values (70006, 202207, 40009, 90, 57, 95, 80009);
INSERT INTO `inventory_control_management`.`inventory`(`Store_ID`,`Week_ID`,`Product_ID`,`On_Order_Quantity`,`In_Transit_Quantity`,`On_Hand_Quantity`,`Warehouse_ID`) values (70007, 202210, 40019, 57, 20, 65, 80042);
INSERT INTO `inventory_control_management`.`inventory`(`Store_ID`,`Week_ID`,`Product_ID`,`On_Order_Quantity`,`In_Transit_Quantity`,`On_Hand_Quantity`,`Warehouse_ID`) values (70008, 202205, 40006, 59, 82, 10, 80027);
INSERT INTO `inventory_control_management`.`inventory`(`Store_ID`,`Week_ID`,`Product_ID`,`On_Order_Quantity`,`In_Transit_Quantity`,`On_Hand_Quantity`,`Warehouse_ID`) values (70009, 202204, 40001, 11, 16, 12, 80040);
INSERT INTO `inventory_control_management`.`inventory`(`Store_ID`,`Week_ID`,`Product_ID`,`On_Order_Quantity`,`In_Transit_Quantity`,`On_Hand_Quantity`,`Warehouse_ID`) values (70010, 202207, 40013, 51, 67, 45, 80012);
INSERT INTO `inventory_control_management`.`inventory`(`Store_ID`,`Week_ID`,`Product_ID`,`On_Order_Quantity`,`In_Transit_Quantity`,`On_Hand_Quantity`,`Warehouse_ID`) values (70011, 202203, 40012, 49, 31, 94, 80033);
INSERT INTO `inventory_control_management`.`inventory`(`Store_ID`,`Week_ID`,`Product_ID`,`On_Order_Quantity`,`In_Transit_Quantity`,`On_Hand_Quantity`,`Warehouse_ID`) values (70012, 202210, 40010, 48, 38, 61, 80045);
INSERT INTO `inventory_control_management`.`inventory`(`Store_ID`,`Week_ID`,`Product_ID`,`On_Order_Quantity`,`In_Transit_Quantity`,`On_Hand_Quantity`,`Warehouse_ID`) values (70013, 202206, 40011, 15, 21, 57, 80042);
INSERT INTO `inventory_control_management`.`inventory`(`Store_ID`,`Week_ID`,`Product_ID`,`On_Order_Quantity`,`In_Transit_Quantity`,`On_Hand_Quantity`,`Warehouse_ID`) values (70014, 202201, 40009, 18, 89, 76, 80003);
INSERT INTO `inventory_control_management`.`inventory`(`Store_ID`,`Week_ID`,`Product_ID`,`On_Order_Quantity`,`In_Transit_Quantity`,`On_Hand_Quantity`,`Warehouse_ID`) values (70015, 202211, 40007, 46, 65, 48, 80012);
INSERT INTO `inventory_control_management`.`inventory`(`Store_ID`,`Week_ID`,`Product_ID`,`On_Order_Quantity`,`In_Transit_Quantity`,`On_Hand_Quantity`,`Warehouse_ID`) values (70016, 202210, 40004, 21, 81, 13, 80008);
INSERT INTO `inventory_control_management`.`inventory`(`Store_ID`,`Week_ID`,`Product_ID`,`On_Order_Quantity`,`In_Transit_Quantity`,`On_Hand_Quantity`,`Warehouse_ID`) values (70017, 202207, 40006, 51, 85, 78, 80011);
INSERT INTO `inventory_control_management`.`inventory`(`Store_ID`,`Week_ID`,`Product_ID`,`On_Order_Quantity`,`In_Transit_Quantity`,`On_Hand_Quantity`,`Warehouse_ID`) values (70018, 202211, 40018, 69, 57, 19, 80050);
INSERT INTO `inventory_control_management`.`inventory`(`Store_ID`,`Week_ID`,`Product_ID`,`On_Order_Quantity`,`In_Transit_Quantity`,`On_Hand_Quantity`,`Warehouse_ID`) values (70019, 202202, 40016, 64, 90, 53, 80042);
INSERT INTO `inventory_control_management`.`inventory`(`Store_ID`,`Week_ID`,`Product_ID`,`On_Order_Quantity`,`In_Transit_Quantity`,`On_Hand_Quantity`,`Warehouse_ID`) values (70020, 202208, 40016, 26, 34, 96, 80048);
INSERT INTO `inventory_control_management`.`inventory`(`Store_ID`,`Week_ID`,`Product_ID`,`On_Order_Quantity`,`In_Transit_Quantity`,`On_Hand_Quantity`,`Warehouse_ID`) values (70021, 202204, 40019, 29, 47, 38, 80008);
INSERT INTO `inventory_control_management`.`inventory`(`Store_ID`,`Week_ID`,`Product_ID`,`On_Order_Quantity`,`In_Transit_Quantity`,`On_Hand_Quantity`,`Warehouse_ID`) values (70022, 202201, 40014, 100, 33, 51, 80034);
INSERT INTO `inventory_control_management`.`inventory`(`Store_ID`,`Week_ID`,`Product_ID`,`On_Order_Quantity`,`In_Transit_Quantity`,`On_Hand_Quantity`,`Warehouse_ID`) values (70023, 202208, 40007, 52, 17, 89, 80025);
INSERT INTO `inventory_control_management`.`inventory`(`Store_ID`,`Week_ID`,`Product_ID`,`On_Order_Quantity`,`In_Transit_Quantity`,`On_Hand_Quantity`,`Warehouse_ID`) values (70024, 202208, 40009, 67, 37, 99, 80007);
INSERT INTO `inventory_control_management`.`inventory`(`Store_ID`,`Week_ID`,`Product_ID`,`On_Order_Quantity`,`In_Transit_Quantity`,`On_Hand_Quantity`,`Warehouse_ID`) values (70025, 202207, 40017, 96, 13, 39, 80024);
INSERT INTO `inventory_control_management`.`inventory`(`Store_ID`,`Week_ID`,`Product_ID`,`On_Order_Quantity`,`In_Transit_Quantity`,`On_Hand_Quantity`,`Warehouse_ID`) values (70026, 202212, 40003, 78, 36, 64, 80029);
INSERT INTO `inventory_control_management`.`inventory`(`Store_ID`,`Week_ID`,`Product_ID`,`On_Order_Quantity`,`In_Transit_Quantity`,`On_Hand_Quantity`,`Warehouse_ID`) values (70027, 202212, 40011, 95, 31, 50, 80023);
INSERT INTO `inventory_control_management`.`inventory`(`Store_ID`,`Week_ID`,`Product_ID`,`On_Order_Quantity`,`In_Transit_Quantity`,`On_Hand_Quantity`,`Warehouse_ID`) values (70028, 202212, 40005, 39, 8, 71, 80021);
INSERT INTO `inventory_control_management`.`inventory`(`Store_ID`,`Week_ID`,`Product_ID`,`On_Order_Quantity`,`In_Transit_Quantity`,`On_Hand_Quantity`,`Warehouse_ID`) values (70029, 202211, 40018, 18, 38, 12, 80026);
INSERT INTO `inventory_control_management`.`inventory`(`Store_ID`,`Week_ID`,`Product_ID`,`On_Order_Quantity`,`In_Transit_Quantity`,`On_Hand_Quantity`,`Warehouse_ID`) values (70030, 202202, 40018, 49, 21, 30, 80033);
INSERT INTO `inventory_control_management`.`inventory`(`Store_ID`,`Week_ID`,`Product_ID`,`On_Order_Quantity`,`In_Transit_Quantity`,`On_Hand_Quantity`,`Warehouse_ID`) values (70031, 202202, 40004, 36, 37, 6, 80042);
INSERT INTO `inventory_control_management`.`inventory`(`Store_ID`,`Week_ID`,`Product_ID`,`On_Order_Quantity`,`In_Transit_Quantity`,`On_Hand_Quantity`,`Warehouse_ID`) values (70032, 202201, 40016, 74, 71, 42, 80007);
INSERT INTO `inventory_control_management`.`inventory`(`Store_ID`,`Week_ID`,`Product_ID`,`On_Order_Quantity`,`In_Transit_Quantity`,`On_Hand_Quantity`,`Warehouse_ID`) values (70033, 202205, 40018, 30, 34, 1, 80038);
INSERT INTO `inventory_control_management`.`inventory`(`Store_ID`,`Week_ID`,`Product_ID`,`On_Order_Quantity`,`In_Transit_Quantity`,`On_Hand_Quantity`,`Warehouse_ID`) values (70034, 202208, 40005, 44, 52, 67, 80027);
INSERT INTO `inventory_control_management`.`inventory`(`Store_ID`,`Week_ID`,`Product_ID`,`On_Order_Quantity`,`In_Transit_Quantity`,`On_Hand_Quantity`,`Warehouse_ID`) values (70035, 202206, 40013, 70, 5, 32, 80017);
INSERT INTO `inventory_control_management`.`inventory`(`Store_ID`,`Week_ID`,`Product_ID`,`On_Order_Quantity`,`In_Transit_Quantity`,`On_Hand_Quantity`,`Warehouse_ID`) values (70036, 202211, 40005, 76, 41, 72, 80034);
INSERT INTO `inventory_control_management`.`inventory`(`Store_ID`,`Week_ID`,`Product_ID`,`On_Order_Quantity`,`In_Transit_Quantity`,`On_Hand_Quantity`,`Warehouse_ID`) values (70037, 202208, 40004, 62, 40, 45, 80016);
INSERT INTO `inventory_control_management`.`inventory`(`Store_ID`,`Week_ID`,`Product_ID`,`On_Order_Quantity`,`In_Transit_Quantity`,`On_Hand_Quantity`,`Warehouse_ID`) values (70038, 202202, 40001, 64, 30, 13, 80017);
INSERT INTO `inventory_control_management`.`inventory`(`Store_ID`,`Week_ID`,`Product_ID`,`On_Order_Quantity`,`In_Transit_Quantity`,`On_Hand_Quantity`,`Warehouse_ID`) values (70039, 202210, 40011, 33, 75, 96, 80020);
INSERT INTO `inventory_control_management`.`inventory`(`Store_ID`,`Week_ID`,`Product_ID`,`On_Order_Quantity`,`In_Transit_Quantity`,`On_Hand_Quantity`,`Warehouse_ID`) values (70040, 202209, 40003, 21, 13, 13, 80033);
INSERT INTO `inventory_control_management`.`inventory`(`Store_ID`,`Week_ID`,`Product_ID`,`On_Order_Quantity`,`In_Transit_Quantity`,`On_Hand_Quantity`,`Warehouse_ID`) values (70041, 202207, 40010, 81, 2, 12, 80049);
INSERT INTO `inventory_control_management`.`inventory`(`Store_ID`,`Week_ID`,`Product_ID`,`On_Order_Quantity`,`In_Transit_Quantity`,`On_Hand_Quantity`,`Warehouse_ID`) values (70042, 202206, 40006, 80, 9, 62, 80032);
INSERT INTO `inventory_control_management`.`inventory`(`Store_ID`,`Week_ID`,`Product_ID`,`On_Order_Quantity`,`In_Transit_Quantity`,`On_Hand_Quantity`,`Warehouse_ID`) values (70043, 202209, 40017, 1, 13, 97, 80012);
INSERT INTO `inventory_control_management`.`inventory`(`Store_ID`,`Week_ID`,`Product_ID`,`On_Order_Quantity`,`In_Transit_Quantity`,`On_Hand_Quantity`,`Warehouse_ID`) values (70044, 202210, 40002, 32, 37, 0, 80043);
INSERT INTO `inventory_control_management`.`inventory`(`Store_ID`,`Week_ID`,`Product_ID`,`On_Order_Quantity`,`In_Transit_Quantity`,`On_Hand_Quantity`,`Warehouse_ID`) values (70045, 202208, 40003, 52, 1, 85, 80013);
INSERT INTO `inventory_control_management`.`inventory`(`Store_ID`,`Week_ID`,`Product_ID`,`On_Order_Quantity`,`In_Transit_Quantity`,`On_Hand_Quantity`,`Warehouse_ID`) values (70046, 202202, 40010, 8, 100, 7, 80039);
INSERT INTO `inventory_control_management`.`inventory`(`Store_ID`,`Week_ID`,`Product_ID`,`On_Order_Quantity`,`In_Transit_Quantity`,`On_Hand_Quantity`,`Warehouse_ID`) values (70047, 202210, 40007, 47, 53, 79, 80048);
INSERT INTO `inventory_control_management`.`inventory`(`Store_ID`,`Week_ID`,`Product_ID`,`On_Order_Quantity`,`In_Transit_Quantity`,`On_Hand_Quantity`,`Warehouse_ID`) values (70048, 202210, 40002, 56, 0, 87, 80040);
INSERT INTO `inventory_control_management`.`inventory`(`Store_ID`,`Week_ID`,`Product_ID`,`On_Order_Quantity`,`In_Transit_Quantity`,`On_Hand_Quantity`,`Warehouse_ID`) values (70049, 202201, 40002, 25, 53, 33, 80024);
INSERT INTO `inventory_control_management`.`inventory`(`Store_ID`,`Week_ID`,`Product_ID`,`On_Order_Quantity`,`In_Transit_Quantity`,`On_Hand_Quantity`,`Warehouse_ID`) values (70050, 202210, 40004, 24, 98, 95, 80037);

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

ALTER TABLE `inventory_control_management`.`order`
RENAME TO orders;


