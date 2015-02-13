CREATE TABLE [dbo].[stores] (
    [storeid] CHAR (5)     NOT NULL,
    [address] VARCHAR (30) NULL,
    [city]    VARCHAR (20) NULL,
    [state]   CHAR (2)     NULL,
    [zip]     CHAR (10)    NULL,
    [manager] VARCHAR (30) NULL,
    PRIMARY KEY CLUSTERED ([storeid] ASC)
);

