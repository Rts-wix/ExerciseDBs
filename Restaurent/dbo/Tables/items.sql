CREATE TABLE [dbo].[items] (
    [itemid]    CHAR (5)       NOT NULL,
    [name]      VARCHAR (30)   NULL,
    [price]     NUMERIC (5, 2) NULL,
    [dateadded] DATE           DEFAULT (getdate()) NULL,
    PRIMARY KEY CLUSTERED ([itemid] ASC)
);

