CREATE TABLE [dbo].[meals] (
    [mealid] CHAR (5)  NOT NULL,
    [name]   CHAR (20) NULL,
    PRIMARY KEY CLUSTERED ([mealid] ASC),
    UNIQUE NONCLUSTERED ([name] ASC)
);

