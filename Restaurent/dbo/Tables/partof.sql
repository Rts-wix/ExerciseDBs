CREATE TABLE [dbo].[partof] (
    [mealid]   CHAR (5)       NOT NULL,
    [itemid]   CHAR (5)       NOT NULL,
    [quantity] INT            NULL,
    [discount] DECIMAL (2, 2) DEFAULT ((0.00)) NULL,
    PRIMARY KEY CLUSTERED ([mealid] ASC, [itemid] ASC),
    FOREIGN KEY ([itemid]) REFERENCES [dbo].[items] ([itemid]),
    FOREIGN KEY ([mealid]) REFERENCES [dbo].[meals] ([mealid])
);

