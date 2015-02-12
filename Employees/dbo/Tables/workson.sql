CREATE TABLE [dbo].[workson] (
    [employeeid]   INT            NOT NULL,
    [projectid]    CHAR (8)       NOT NULL,
    [assignedtime] DECIMAL (3, 2) NULL,
    CONSTRAINT [PK__workson__002B367447A70A50] PRIMARY KEY CLUSTERED ([employeeid] ASC, [projectid] ASC),
    CONSTRAINT [FK__workson__employe__1A14E395] FOREIGN KEY ([employeeid]) REFERENCES [dbo].[employees] ([employeeid]),
    CONSTRAINT [FK__workson__project__1B0907CE] FOREIGN KEY ([projectid]) REFERENCES [dbo].[projects] ([projectid])
);

