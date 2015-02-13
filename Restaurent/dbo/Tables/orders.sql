CREATE TABLE [dbo].[orders] (
    [ordernumber] INT            NOT NULL,
    [linenumber]  INT            NOT NULL,
    [storeid]     CHAR (5)       NOT NULL,
    [menuitemid]  CHAR (5)       NULL,
    [price]       NUMERIC (5, 2) NULL,
    [time]        DATETIME       NULL,
    PRIMARY KEY CLUSTERED ([storeid] ASC, [ordernumber] ASC, [linenumber] ASC),
    FOREIGN KEY ([storeid]) REFERENCES [dbo].[stores] ([storeid])
);

