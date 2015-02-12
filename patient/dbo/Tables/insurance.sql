CREATE TABLE [dbo].[insurance] (
    [cardholder] INT            NOT NULL,
    [company]    VARCHAR (50)   NOT NULL,
    [copay]      NUMERIC (5, 2) NULL,
    PRIMARY KEY CLUSTERED ([cardholder] ASC),
    CHECK ([copay]>=(0)),
    CONSTRAINT [FK__insurance__cardh__182C9B23] FOREIGN KEY ([cardholder]) REFERENCES [dbo].[patient] ([patientid])
);

