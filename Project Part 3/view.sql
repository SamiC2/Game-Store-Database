--This is the SQL View Query Code that I created and then put into phpmyadmin

CREATE VIEW gameData AS
  SELECT `Name`, `Console Name`, `Market Price`, `Rating`
  FROM `Games`, `Consoles`, `Developers`, `Reviews`
  WHERE `Games`.`Name` = `Developers`.`Game Title` AND
        `Games`.`System` = `Consoles`.`Console Name` AND
        `Developers`.`Console` = `Consoles`.`Console Name` AND
        `Games`.`Name` = `Reviews`.`Game Name`

-- From here, this is what i got when i exported my view as an sql file

        -- phpMyAdmin SQL Dump
        -- version 4.4.15.10
        -- https://www.phpmyadmin.net
        --
        -- Host: database.cs.tamu.edu
        -- Generation Time: Jul 31, 2018 at 01:10 PM
        -- Server version: 5.5.56-MariaDB
        -- PHP Version: 5.4.16

        SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
        SET time_zone = "+00:00";


        /*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
        /*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
        /*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
        /*!40101 SET NAMES utf8mb4 */;

        --
        -- Database: `samic22`
        --

        -- --------------------------------------------------------

        --
        -- Structure for view `gameData`
        -- Here is what i got ripped from phpmyadmin website when i exported as SQL

        CREATE ALGORITHM=UNDEFINED DEFINER=`samic22`@`%` SQL SECURITY DEFINER VIEW `gameData` AS select `Games`.`Name` AS `Name`,`Consoles`.`Console Name` AS `Console Name`,`Developers`.`Market Price` AS `Market Price`,`Reviews`.`Rating` AS `Rating` from (((`Games` join `Consoles`) join `Developers`) join `Reviews`) where ((`Games`.`Name` = `Developers`.`Game Title`) and (`Games`.`System` = `Consoles`.`Console Name`) and (`Developers`.`Console` = `Consoles`.`Console Name`) and (`Games`.`Name` = `Reviews`.`Game Name`));
