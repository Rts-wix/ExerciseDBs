CREATE TABLE [dbo].[madewith] (
    [itemid]       CHAR (5) NOT NULL,
    [ingredientid] CHAR (5) NOT NULL,
    [quantity]     INT      DEFAULT ((0)) NOT NULL,
    PRIMARY KEY CLUSTERED ([itemid] ASC, [ingredientid] ASC),
    FOREIGN KEY ([ingredientid]) REFERENCES [dbo].[ingredients] ([ingredientid]),
    FOREIGN KEY ([itemid]) REFERENCES [dbo].[items] ([itemid])
);

