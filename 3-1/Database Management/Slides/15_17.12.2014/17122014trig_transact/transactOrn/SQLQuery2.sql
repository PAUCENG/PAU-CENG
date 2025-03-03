USE myTestDB;
GO

DECLARE @TransactionName varchar(20) = 'Transaction1';

--The following statements start a named transaction,
--insert two rows, and then roll back
--the transaction named in the variable @TransactionName.
--Another statement outside of the named transaction inserts two rows.
--The query returns the results of the previous statements.

BEGIN TRAN @TransactionName
       INSERT INTO ValueTable VALUES(1), (2);
ROLLBACK TRAN @TransactionName;

INSERT INTO ValueTable VALUES(3),(4);

--SELECT [value] FROM ValueTable;

--DROP TABLE ValueTable;
