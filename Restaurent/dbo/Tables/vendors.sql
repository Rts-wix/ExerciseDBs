CREATE TABLE [dbo].[vendors] (
    [vendorid]    CHAR (5)     NOT NULL,
    [companyname] VARCHAR (30) DEFAULT ('SECRET') NOT NULL,
    [repfname]    VARCHAR (20) DEFAULT ('Mr. or Ms.') NULL,
    [replname]    VARCHAR (20) NULL,
    [referredby]  CHAR (5)     NULL,
    PRIMARY KEY CLUSTERED ([vendorid] ASC),
    FOREIGN KEY ([referredby]) REFERENCES [dbo].[vendors] ([vendorid]),
    UNIQUE NONCLUSTERED ([repfname] ASC, [replname] ASC)
);

