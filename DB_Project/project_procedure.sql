DELIMITER $$
CREATE PROCEDURE retrieveWallet(ID INT)
BEGIN 
	SELECT * FROM Wallet
    WHERE wallet_id = ID;
END $$
DELIMITER ;

DELIMITER $$
CREATE PROCEDURE retrieveInfo(ID INT)
BEGIN 
	SELECT * FROM UserAccount
    WHERE user_id = ID;
END $$
DELIMITER ;

DELIMITER $$
CREATE PROCEDURE createAccount(phoneNum CHAR(20), ssn CHAR(20), userName CHAR(50), country CHAR(30))
BEGIN 
	INSERT INTO UserAccount(phone_number, SSN, name, country) VALUES(phoneNum, ssn, userName, country);
END $$
DELIMITER ;

