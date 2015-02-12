CREATE TABLE [dbo].[projects] (
    [projectid]   CHAR (8)        NOT NULL,
    [deptcode]    CHAR (5)        NOT NULL,
    [description] VARCHAR (200)   NOT NULL,
    [startdate]   DATE            CONSTRAINT [DF_projects_startdate] DEFAULT (getdate()) NOT NULL,
    [enddate]     DATE            NULL,
    [revenue]     NUMERIC (12, 2) NOT NULL,
    CONSTRAINT [PK__projects__11EC39DDE0D424AC] PRIMARY KEY CLUSTERED ([projectid] ASC),
    CONSTRAINT [FK__projects__deptco__173876EA] FOREIGN KEY ([deptcode]) REFERENCES [dbo].[departments] ([code])
);

