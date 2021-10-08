INSERT INTO UserAccount(phone_number, SSN, name, country) VALUES('334-492-1099', '123-456-789', 'Ben', 'Vietnam') ;
INSERT INTO UserAccount(phone_number, SSN, name, country) VALUES('334-527-2133', '123-456-788', 'Lisa', 'Canada') ;
INSERT INTO UserAccount(phone_number, SSN, name, country) VALUES('551-213-4132', '342-432-564', 'Lee', 'Korea') ;
INSERT INTO UserAccount(phone_number, SSN, name, country) VALUES('925-312-5212', '102-312-919', 'Salah', 'Egypt') ;

INSERT INTO TransBlock(block_timestamp) VALUES(NOW());
INSERT INTO TransBlock(block_timestamp, prev_block_id) VALUES(NOW(),LAST_INSERT_ID());
INSERT INTO TransBlock(block_timestamp, prev_block_id) VALUES(NOW(),LAST_INSERT_ID());
INSERT INTO TransBlock(block_timestamp, prev_block_id) VALUES(NOW(),LAST_INSERT_ID());


INSERT INTO Wallet(user_id) VALUES(3000);
INSERT INTO Wallet(user_id) VALUES(3001);
INSERT INTO Wallet(user_id) VALUES(3002);
INSERT INTO Wallet(user_id) VALUES(3003);

INSERT INTO Transaction(tx_timestamp,block_id) VALUES(NOW(),1);
INSERT INTO Transaction(tx_timestamp,block_id) VALUES(NOW(),1);
INSERT INTO Transaction(tx_timestamp,block_id) VALUES(NOW(),1);
INSERT INTO Transaction(tx_timestamp,block_id) VALUES(NOW(),2);
INSERT INTO Transaction(tx_timestamp,block_id) VALUES(NOW(),2);
INSERT INTO Transaction(tx_timestamp,block_id) VALUES(NOW(),3);
INSERT INTO Transaction(tx_timestamp,block_id) VALUES(NOW(),3);
INSERT INTO Transaction(tx_timestamp,block_id) VALUES(NOW(),4);
INSERT INTO Transaction(tx_timestamp,block_id) VALUES(NOW(),4);

INSERT INTO WalletTransaction(wallet_id,tx_id) VALUES (1000,1);
INSERT INTO WalletTransaction(wallet_id,tx_id) VALUES (1000,4);
INSERT INTO WalletTransaction(wallet_id,tx_id) VALUES (1000,7);
INSERT INTO WalletTransaction(wallet_id,tx_id) VALUES (1001,2);
INSERT INTO WalletTransaction(wallet_id,tx_id) VALUES (1001,5);
INSERT INTO WalletTransaction(wallet_id,tx_id) VALUES (1001,8);
INSERT INTO WalletTransaction(wallet_id,tx_id) VALUES (1002,3);
INSERT INTO WalletTransaction(wallet_id,tx_id) VALUES (1003,6);
INSERT INTO WalletTransaction(wallet_id,tx_id) VALUES (1003,9);

INSERT INTO PublicKey(pubkey_id) VALUES(1999);
INSERT INTO PublicKey(pubkey_id) VALUES(2999);
INSERT INTO PublicKey(pubkey_id) VALUES(3999);
INSERT INTO PublicKey(pubkey_id) VALUES(4999);
INSERT INTO PublicKey(pubkey_id) VALUES(5999);
INSERT INTO PublicKey(pubkey_id) VALUES(6999);
INSERT INTO PublicKey(pubkey_id) VALUES(7999);
INSERT INTO PublicKey(pubkey_id) VALUES(8999);
INSERT INTO PublicKey(pubkey_id) VALUES(9999);

INSERT INTO TransactionOutput(txout_value, tx_id, pubkey_id) VALUES(100, 1, 1999);
INSERT INTO TransactionOutput(txout_value, tx_id, pubkey_id) VALUES(110, 1, 1999);
INSERT INTO TransactionOutput(txout_value, tx_id, pubkey_id) VALUES(200, 2, 2999);
INSERT INTO TransactionOutput(txout_value, tx_id, pubkey_id) VALUES(220, 2, 2999);
INSERT INTO TransactionOutput(txout_value, tx_id, pubkey_id) VALUES(310, 3, 3999);
INSERT INTO TransactionOutput(txout_value, tx_id, pubkey_id) VALUES(115, 3, 3999);
INSERT INTO TransactionOutput(txout_value, tx_id, pubkey_id) VALUES(510, 4, 4999);
INSERT INTO TransactionOutput(txout_value, tx_id, pubkey_id) VALUES(1000, 5, 5999);
INSERT INTO TransactionOutput(txout_value, tx_id, pubkey_id) VALUES(2000, 6, 6999);
INSERT INTO TransactionOutput(txout_value, tx_id, pubkey_id) VALUES(300, 7, 7999);
INSERT INTO TransactionOutput(txout_value, tx_id, pubkey_id) VALUES(50, 7, 7999);
INSERT INTO TransactionOutput(txout_value, tx_id, pubkey_id) VALUES(215, 8, 8999);
INSERT INTO TransactionOutput(txout_value, tx_id, pubkey_id) VALUES(155, 8, 8999);
INSERT INTO TransactionOutput(txout_value, tx_id, pubkey_id) VALUES(1110, 9, 9999);

INSERT INTO TransactionInput(txin_value,tx_id, txout_id) VALUES(310, 1, 2);
INSERT INTO TransactionInput(txin_value,tx_id, txout_id) VALUES(115, 1, 1);
INSERT INTO TransactionInput(txin_value,tx_id, txout_id) VALUES(300, 2, 2);
INSERT INTO TransactionInput(txin_value,tx_id, txout_id) VALUES(125, 2, 1);
INSERT INTO TransactionInput(txin_value,tx_id, txout_id) VALUES(415, 3, 4);
INSERT INTO TransactionInput(txin_value,tx_id, txout_id) VALUES(415, 3, 3);
INSERT INTO TransactionInput(txin_value,tx_id, txout_id) VALUES(1500, 4, 4);
INSERT INTO TransactionInput(txin_value,tx_id, txout_id) VALUES(100, 5, 5);
INSERT INTO TransactionInput(txin_value,tx_id, txout_id) VALUES(200, 5, 3);
INSERT INTO TransactionInput(txin_value,tx_id, txout_id) VALUES(515, 6, 5);
INSERT INTO TransactionInput(txin_value,tx_id, txout_id) VALUES(515, 7, 14);
INSERT INTO TransactionInput(txin_value,tx_id, txout_id) VALUES(250, 8, 13);
INSERT INTO TransactionInput(txin_value,tx_id, txout_id) VALUES(255, 9, 12);
INSERT INTO TransactionInput(txin_value,tx_id, txout_id) VALUES(425, 9, 11);
INSERT INTO TransactionInput(txin_value,tx_id, txout_id) VALUES(155, 9, 10);
INSERT INTO TransactionInput(txin_value,tx_id, txout_id) VALUES(515, 8, 10);
INSERT INTO TransactionInput(txin_value,tx_id, txout_id) VALUES(100, 5, 14);
INSERT INTO TransactionInput(txin_value,tx_id, txout_id) VALUES(185, 4, 9);
INSERT INTO TransactionInput(txin_value,tx_id, txout_id) VALUES(225, 2, 8);
INSERT INTO TransactionInput(txin_value,tx_id, txout_id) VALUES(840, 2, 7);
INSERT INTO TransactionInput(txin_value,tx_id, txout_id) VALUES(1000, 6, 6);

SELECT * FROM TransBlock;