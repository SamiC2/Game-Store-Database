CREATE TABLE IF NOT EXISTS `Buyers` (
  `Name` char(50) NOT NULL COMMENT 'Name of Buyer',
  `Phone Number` char(12) NOT NULL COMMENT 'Contact Number',
  `Buy Price` double NOT NULL COMMENT 'Price to Buy Game at'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE IF NOT EXISTS `Consoles` (
  `Console Name` char(40) NOT NULL COMMENT 'Name of Console',
  `Company Name` char(40) NOT NULL COMMENT 'Name of Company that produces said console',
  `Model Number` varchar(30) NOT NULL COMMENT 'Version/Model of the console being listed',
  `Number of Units` int(11) NOT NULL COMMENT 'Number of units in stock',
  `Price` double NOT NULL COMMENT 'Price for console'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE IF NOT EXISTS `Developers` (
  `Company Name` char(50) NOT NULL COMMENT 'Name of Company',
  `Game Title` varchar(60) NOT NULL COMMENT 'Name of Game Title',
  `Console` char(30) NOT NULL COMMENT 'Console game can be played on',
  `Market Price` double NOT NULL COMMENT 'Market Price for game to be sold at',
  `Genre` char(30) NOT NULL COMMENT 'Genre classified for game',
  `Units to Sell` int(11) NOT NULL COMMENT 'Number of units to sell to store'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE IF NOT EXISTS `Games` (
  `Name` varchar(50) NOT NULL COMMENT 'Name of Game',
  `System` varchar(30) NOT NULL COMMENT 'System Game can be Played on',
  `dig/phys` char(2) NOT NULL COMMENT 'D/P what type of copy it is',
  `numStock` mediumint(9) NOT NULL COMMENT 'Number of Units in Stock',
  `Genre` tinytext NOT NULL COMMENT 'What type of game it is'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE IF NOT EXISTS `Reviews` (
  `Reviewer Name` char(40) NOT NULL COMMENT 'Name of Reviewer',
  `Game Name` char(50) NOT NULL COMMENT 'Name of game being reviewed',
  `Console Played on` char(40) NOT NULL COMMENT 'Name of console game was played on that is being reviewed (or console)',
  `Rating` int(11) NOT NULL COMMENT 'Rating out of 10 for game',
  `Description` mediumtext NOT NULL COMMENT 'Description of review (review must be linked)'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE IF NOT EXISTS `Sellers` (
  `Name` char(50) NOT NULL COMMENT 'Name of Seller',
  `Phone Number` char(12) NOT NULL COMMENT 'Contact Number',
  `Sell Price` decimal(10,0) NOT NULL COMMENT 'Price to Sell Game at'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for table `Buyers`
--
ALTER TABLE `Buyers`
  ADD PRIMARY KEY (`Name`,`Phone Number`);



--
-- Indexes for table `Consoles`
--
ALTER TABLE `Consoles`
  ADD PRIMARY KEY (`Console Name`,`Company Name`,`Model Number`);



--
-- Indexes for table `Developers`
--
ALTER TABLE `Developers`
  ADD PRIMARY KEY (`Company Name`,`Game Title`,`Console`);


--
-- Indexes for table `Games`
--
ALTER TABLE `Games`
  ADD PRIMARY KEY (`Name`,`System`,`dig/phys`);

--
-- Indexes for table `Reviews`
--
ALTER TABLE `Reviews`
  ADD PRIMARY KEY (`Reviewer Name`,`Game Name`,`Console Played on`);


--
-- Indexes for table `Sellers`
--
ALTER TABLE `Sellers`
  ADD PRIMARY KEY (`Name`,`Phone Number`);
