USE ApressFinancial
GO

CREATE TABLE dbo.T1 (column_1 int IDENTITY, column_2 VARCHAR(30));

INSERT T1 VALUES ('Row #1');
INSERT T1 (column_2) VALUES ('Row #2');

SET IDENTITY_INSERT T1 ON;

INSERT INTO T1 (column_1,column_2)
VALUES (-99, 'Explicit identity value');

SELECT column_1, column_2 FROM T1;

SET IDENTITY_INSERT T1 OFF;

INSERT T1 VALUES ('What Row?');

SELECT column_1, column_2 FROM T1;

SET IDENTITY_INSERT T1 ON;

INSERT INTO T1 (column_1,column_2)
VALUES (100, 'Explicit identity value');
SET IDENTITY_INSERT T1 OFF;
SET IDENTITY_INSERT T1 OFF;

SELECT column_1, column_2 FROM T1;

SET IDENTITY_INSERT T1 OFF;

INSERT T1 VALUES ('What Row?');

SELECT column_1, column_2 FROM T1;

--DROP TABLE dbo.T1
--GO