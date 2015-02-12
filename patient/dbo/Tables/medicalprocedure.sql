CREATE TABLE [dbo].[medicalprocedure] (
    [procedureid] CHAR (5)       NOT NULL,
    [name]        VARCHAR (30)   NOT NULL,
    [followup]    CHAR (5)       NULL,
    [risk]        CHAR (20)      NOT NULL,
    [price]       NUMERIC (5, 2) NULL,
    CONSTRAINT [PK__medicalp__8471DDB49004CDF4] PRIMARY KEY CLUSTERED ([procedureid] ASC),
    CONSTRAINT [CK__medicalpr__price__20C1E124] CHECK ([price]>=(0)),
    CONSTRAINT [CK__medicalpro__risk__1FCDBCEB] CHECK ([risk]='Certain Death' OR [risk]='High' OR [risk]='Moderate' OR [risk]='Minimal'),
    CONSTRAINT [FK__medicalpr__follo__21B6055D] FOREIGN KEY ([followup]) REFERENCES [dbo].[medicalprocedure] ([procedureid])
);

