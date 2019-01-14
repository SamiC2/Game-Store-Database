--**************************************************************************--
-- SAMI CHOWDHURY 423006267 PROJ PART 3
--**************************************************************************--
CREATE TABLE IF NOT EXISTS `Buyers` (
  `Name` char(50) NOT NULL COMMENT 'Name of Buyer',
  `Phone Number` char(12) NOT NULL COMMENT 'Contact Number',
  `Buy Price` double NOT NULL COMMENT 'Price to Buy Game at' CHECK (`Buy Price` > 15)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for table `Buyers`
-- HERE I ADDED ONE ATTRIBUTE BASED CHECK CONSTRAINT

ALTER TABLE `Buyers`
  ADD PRIMARY KEY (`Name`,`Phone Number`);
  ADD CHECK (`Buy Price` > 15);

--**************************************************************************--

CREATE TABLE IF NOT EXISTS `Consoles` (
  `Console Name` char(40) NOT NULL COMMENT 'Name of Console',
  `Company Name` char(40) NOT NULL COMMENT 'Name of Company that produces said console',
  `Model Number` varchar(30) NOT NULL COMMENT 'Version/Model of the console being listed',
  `Number of Units` int(11) NOT NULL COMMENT 'Number of units in stock',
  `Price` double NOT NULL COMMENT 'Price for console',
  CHECK (`Price` >= 25 AND `Number of Units` >= 1000)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for table `Consoles`
-- HERE I ADDED ONE TUPLE BASED CHECK CONSTRAINT

ALTER TABLE `Consoles`
  ADD PRIMARY KEY (`Console Name`,`Company Name`,`Model Number`);
  ADD CONSTRAINT make_profit CHECK (`Price` >= 25 AND `Number of Units` >= 1000);

--**************************************************************************--


CREATE TABLE IF NOT EXISTS `Developers` (
  `Company Name` char(50) NOT NULL COMMENT 'Name of Company',
  `Game Title` varchar(60) NOT NULL COMMENT 'Name of Game Title',
  `Console` char(30) NOT NULL COMMENT 'Console game can be played on',
  `Market Price` double NOT NULL COMMENT 'Market Price for game to be sold at',
  `Genre` char(30) NOT NULL COMMENT 'Genre classified for game',
  `Units to Sell` int(11) NOT NULL COMMENT 'Number of units to sell to store', --added unique here
  CHECK (`Market Price` >= 10 AND `Units to Sell` > 1000)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for table `Developers` I added unique here
-- HERE I ADDED ONE TUPLE BASED CHECK CONSTRAINT AND ONE UNIQUE CONSTRAINT

ALTER TABLE `Developers`
  ADD PRIMARY KEY (`Company Name`,`Game Title`,`Console`);
  ADD UNIQUE KEY ('Units to Sell');
  ADD CONSTRAINT make_sell CHECK (`Market Price` >= 10 AND `Units to Sell` > 1000);

--**************************************************************************--


CREATE TABLE IF NOT EXISTS `Games` (
  `Name` varchar(50) NOT NULL COMMENT 'Name of Game',
  `System` varchar(30) NOT NULL COMMENT 'System Game can be Played on',
  `dig/phys` char(2) NOT NULL COMMENT 'D/P what type of copy it is',
  `numStock` mediumint(9) NOT NULL COMMENT 'Number of Units in Stock',
  `Genre` tinytext NOT NULL COMMENT 'What type of game it is',
  FOREIGN KEY(`System`) REFERENCES `Consoles`(`Console Name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


--
-- Indexes for table `Games`
-- HERE I ADDED ONE FOREIGN REFERENTIAL INTEGRITY CONSTRAINT AS WELL AS MY
-- REFERENCE STATEMENT
ALTER TABLE `Games`
  ADD PRIMARY KEY (`Name`,`System`,`dig/phys`);
  ADD FOREIGN KEY(`System`) REFERENCES `Consoles`(`Console Name`);

--**************************************************************************--

CREATE TABLE IF NOT EXISTS `Reviews` (
  `Reviewer Name` char(40) NOT NULL COMMENT 'Name of Reviewer',
  `Game Name` char(50) NOT NULL COMMENT 'Name of game being reviewed',
  `Console Played on` char(40) NOT NULL COMMENT 'Name of console game was played on that is being reviewed (or console)',
  `Rating` int(11) NOT NULL COMMENT 'Rating out of 10 for game',
  `Description` mediumtext NOT NULL COMMENT 'Description of review (review must be linked)'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for table `Reviews`
-- NOTHING ALTERED HERE
ALTER TABLE `Reviews`
  ADD PRIMARY KEY (`Reviewer Name`,`Game Name`,`Console Played on`);

--**************************************************************************--

CREATE TABLE IF NOT EXISTS `Sellers` (
  `Name` char(50) NOT NULL COMMENT 'Name of Seller',
  `Phone Number` char(12) NOT NULL COMMENT 'Contact Number',
  `Sell Price` decimal(10,0) NOT NULL COMMENT 'Price to Sell Game at' CHECK (`Sell Price` > 10)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for table `Sellers`
-- HERE I ADDED ONE ATTRIBUTE BASED CHECK CONSTRAINT
ALTER TABLE `Sellers`
  ADD PRIMARY KEY (`Name`,`Phone Number`);
  ADD CHECK (`Sell Price` > 10);

--**************************************************************************--
