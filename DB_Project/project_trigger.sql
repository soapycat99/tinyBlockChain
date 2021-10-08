DELIMITER $$
CREATE 
	TRIGGER HashUser BEFORE INSERT 
    ON Wallet
    FOR EACH ROW
    BEGIN 
		SET NEW.private_key := (NEW.user_id+7)*7;
		SET NEW.wallet_hash := SHA1(NEW.wallet_id);
	END $$
DELIMITER ;


DELIMITER $$
CREATE 
	TRIGGER HashTransaction BEFORE INSERT 
    ON Transaction 
    FOR EACH ROW
    BEGIN 
		SET NEW.tx_hash := SHA1(NEW.tx_id+1);
	END $$



CREATE 
	TRIGGER KeyHash BEFORE INSERT 
    ON PublicKey 
    FOR EACH ROW
    BEGIN 
		SET NEW.pubkey_hash := SHA1(NEW.pubkey_id+2);
	END $$
DELIMITER ;


DELIMITER $$
CREATE 
	TRIGGER BlockGenerate BEFORE INSERT 
    ON TransBlock
    FOR EACH ROW
    BEGIN 
		DECLARE nonce VARCHAR(256); 
		SET NEW.block_hash := SHA1(NEW.block_id+3);
        SET @nonce := CONCAT(CAST(NEW.block_id AS CHAR), CAST(NEW.block_timestamp AS CHAR), NEW.block_hash) ;
        SET NEW.block_nonce := SHA1(@nonce);
	END $$
DELIMITER ;
   

DELIMITER $$
CREATE 
	TRIGGER TotalSatoshis AFTER INSERT 
    ON TransactionInput 
    FOR EACH ROW
    BEGIN 
		UPDATE TransBlock
        SET TransBlock.total_satoshis = 
			(SELECT SUM(txin_value) 
			FROM Transaction t1, TransactionInput t2
            WHERE
				TransBlock.block_id = t1.block_id AND
				t1.tx_id = t2.tx_id);
	END $$
DELIMITER ;

