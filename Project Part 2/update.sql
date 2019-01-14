INSERT INTO `Developers`(`Company Name`, `Game Title`, `Console`, `Market Price`, `Genre`, `Units to Sell`) VALUES ("HunieDev","HuniePot","PC",10.00,"Dating Sim",40000)

INSERT INTO `Consoles`(`Console Name`, `Company Name`, `Model Number`, `Number of Units`, `Price`) VALUES ("Sega Genesis","Sega","V2.0",6000,29.99)

DELETE FROM `Reviews` WHERE `Rating` < 6

DELETE FROM `Buyers` WHERE `Buy Price`<20

UPDATE `Sellers` SET `Sell Price`=40 WHERE `Seller Name` = "Gianna Bova"

UPDATE `Games` SET `dig/phys`="D/P",`numStock`=5000 WHERE `Name` = "Awesomenauts"
