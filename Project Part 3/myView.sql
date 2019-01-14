--This is the SQL View Query Code that I created and then put into phpmyadmin

CREATE VIEW gameData AS
  SELECT `Name`, `Console Name`, `Market Price`, `Rating`
  FROM `Games`, `Consoles`, `Developers`, `Reviews`
  WHERE `Games`.`Name` = `Developers`.`Game Title` AND
        `Games`.`System` = `Consoles`.`Console Name` AND
        `Developers`.`Console` = `Consoles`.`Console Name` AND
        `Games`.`Name` = `Reviews`.`Game Name`
