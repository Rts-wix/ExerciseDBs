CREATE TABLE [dbo].[employees] (
    [employeeid] INT            IDENTITY (1, 1) NOT NULL,
    [firstname]  VARCHAR (10)   NOT NULL,
    [lastname]   VARCHAR (20)   NOT NULL,
    [deptcode]   CHAR (5)       NULL,
    [salary]     NUMERIC (9, 2) NULL,
    CONSTRAINT [PK__employee__C135F5E9D19E4E63] PRIMARY KEY CLUSTERED ([employeeid] ASC),
    CONSTRAINT [FK__employees__deptc__145C0A3F] FOREIGN KEY ([deptcode]) REFERENCES [dbo].[departments] ([code])
);

