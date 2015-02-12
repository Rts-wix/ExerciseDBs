CREATE TABLE [dbo].[patient] (
    [patientid]        INT          IDENTITY (1, 1) NOT NULL,
    [firstname]        VARCHAR (30) NOT NULL,
    [lastname]         VARCHAR (30) NOT NULL,
    [gender]           CHAR (1)     NULL,
    [primaryphysician] INT          NULL,
    [birthday]         DATE         NULL,
    [insurance]        INT          NULL,
    CONSTRAINT [PK__patient__A17101B4ECC975A4] PRIMARY KEY CLUSTERED ([patientid] ASC),
    CONSTRAINT [CK__patient__gender__1367E606] CHECK ([gender]='F' OR [gender]='M'),
    CONSTRAINT [FK__patient__insuran__1920BF5C] FOREIGN KEY ([insurance]) REFERENCES [dbo].[insurance] ([cardholder]),
    CONSTRAINT [FK__patient__primary__145C0A3F] FOREIGN KEY ([primaryphysician]) REFERENCES [dbo].[physician] ([physicianid])
);

