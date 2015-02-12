CREATE TABLE [dbo].[departments] (
    [code]      CHAR (5)     NOT NULL,
    [name]      VARCHAR (30) NOT NULL,
    [managerid] INT          NULL,
    [subdeptof] CHAR (5)     NULL,
    CONSTRAINT [PK__departme__357D4CF8686C3EB8] PRIMARY KEY CLUSTERED ([code] ASC),
    CONSTRAINT [FK__departmen__manag__1273C1CD] FOREIGN KEY ([managerid]) REFERENCES [dbo].[employees] ([employeeid]),
    CONSTRAINT [FK__departmen__subde__1367E606] FOREIGN KEY ([subdeptof]) REFERENCES [dbo].[departments] ([code])
);

