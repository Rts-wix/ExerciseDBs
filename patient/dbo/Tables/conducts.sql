CREATE TABLE [dbo].[conducts] (
    [patientid]   INT            IDENTITY (1, 1) NOT NULL,
    [visitdate]   DATE           NOT NULL,
    [procedureid] CHAR (5)       NOT NULL,
    [physicianid] INT            NOT NULL,
    [charge]      NUMERIC (8, 2) NOT NULL,
    CONSTRAINT [PK__conducts__696483C9BC95AA2D] PRIMARY KEY CLUSTERED ([patientid] ASC, [visitdate] ASC, [procedureid] ASC),
    CONSTRAINT [FK__conducts__physic__25869641] FOREIGN KEY ([physicianid]) REFERENCES [dbo].[physician] ([physicianid]),
    CONSTRAINT [FK__conducts__proced__267ABA7A] FOREIGN KEY ([procedureid]) REFERENCES [dbo].[medicalprocedure] ([procedureid]),
    CONSTRAINT [FK__conducts_visits] FOREIGN KEY ([patientid], [visitdate]) REFERENCES [dbo].[visits] ([patientid], [visitdate])
);

