SELECT `Buyer Name`, `Seller Name` `Phone Number` FROM `Buyers`, `Sellers` WHERE `Buy Price` = `Sell Price` LIMIT 0, 25 ;

SELECT `Buyer Name`, `Seller Name` FROM `Buyers`, `Sellers` WHERE `Buy Price` = `Sell Price` LIMIT 0, 25 ;

SELECT `Game Title`, `Market Price` FROM `Developers` WHERE `Company Name` = "Nintendo" AND `Console` = "Nintendo Switch" LIMIT 0, 25 ;

SELECT `Game Title`,`Market Price` FROM `Developers` WHERE `Market Price`<50 AND `Company Name`="Nintendo" LIMIT 0, 25 ;

SELECT `Rating`, `Name`, `Console Played on` FROM `Reviews`, `Games` WHERE `name` = `Game Name` AND `System` = `Console Played on` LIMIT 0, 25 ;

SELECT * FROM `Buyers` WHERE `Buy Price` > 30 UNION ALL SELECT * FROM `Sellers` WHERE `Sell Price` > 30 LIMIT 0, 25 ;

SELECT * FROM `Buyers` t INNER JOIN `Sellers` c on c.`Sell Price`=t.`Buy Price` LIMIT 0, 25 ;

SELECT * FROM `Developers` NATURAL JOIN `Consoles` NATURAL JOIN `Games` LIMIT 0, 25 ;

SELECT * FROM `Games` NATURAL JOIN `Developers` NATURAL JOIN `Reviews` LIMIT 0, 25 ;

SELECT `Reviewer Name`,`Game Name`,`Console Played on`,`Description` FROM `Reviews` ORDER BY `Rating` LIMIT 0, 25 ;

SELECT `Game Title`,`Market Price` FROM `Developers` WHERE `Market Price` > 0 GROUP BY `Company Name` LIMIT 0, 25 ;

SELECT DISTINCT (`Game Name`) FROM `Reviews` LIMIT 0, 25 ;

SELECT AVG(`Market Price`) FROM `Developers` WHERE `Company Name`="Nintendo" LIMIT 0, 25 ;
