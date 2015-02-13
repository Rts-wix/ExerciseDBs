CREATE TABLE [dbo].[ingredients] (
    [ingredientid] CHAR (5)       NOT NULL,
    [name]         VARCHAR (30)   NOT NULL,
    [unit]         CHAR (10)      NULL,
    [unitprice]    NUMERIC (5, 2) NULL,
    [foodgroup]    CHAR (15)      NULL,
    [inventory]    INT            DEFAULT ((0)) NULL,
    [vendorid]     CHAR (5)       NULL,
    PRIMARY KEY CLUSTERED ([ingredientid] ASC),
    CHECK ([foodgroup]='Vegetable' OR [foodgroup]='Fruit' OR [foodgroup]='Bread' OR [foodgroup]='Meat' OR [foodgroup]='Milk'),
    CHECK ([unitprice]*[inventory]<=(4000)),
    FOREIGN KEY ([vendorid]) REFERENCES [dbo].[vendors] ([vendorid])
);

