CREATE TABLE [dbo].[visits] (
    [patientid]   INT  NOT NULL,
    [visitdate]   DATE NOT NULL,
    [physicianid] INT  NULL,
    PRIMARY KEY CLUSTERED ([patientid] ASC, [visitdate] ASC),
    CONSTRAINT [FK__visits__patienti__1BFD2C07] FOREIGN KEY ([patientid]) REFERENCES [dbo].[patient] ([patientid]),
    CONSTRAINT [FK__visits__physicia__1CF15040] FOREIGN KEY ([physicianid]) REFERENCES [dbo].[physician] ([physicianid])
);

