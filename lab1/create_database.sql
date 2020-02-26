CREATE DATABASE ApressFinancial
ON
    PRIMARY
      (   NAME = N'ApressFinancial',
          FILENAME = N'/var/opt/mssql/data/ApressFinancial.mdf',
          SIZE = 8192KB,
          MAXSIZE = UNLIMITED,
          FILEGROWTH = 1024KB ),
    FILEGROUP [SECONDARY] DEFAULT
      ( NAME = N'ApressFinancial_act',
          FILENAME = N'/var/opt/mssql/data/ApressFinancial_act.ndf',
          SIZE = 8192KB,
          MAXSIZE = UNLIMITED,
          FILEGROWTH = 1024KB )
LOG ON
    ( NAME = N'ApressFinancial_log',
        FILENAME = N'/var/opt/mssql/data/ApressFinancial_log.ldf',
        SIZE = 1024KB,
        MAXSIZE = 2048KB,
        FILEGROWTH = 10% )
GO
