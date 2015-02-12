CREATE TABLE [dbo].[physician] (
    [physicianid] INT            IDENTITY (1, 1) NOT NULL,
    [name]        CHAR (30)      NOT NULL,
    [salary]      NUMERIC (8, 2) NULL,
    CONSTRAINT [PK__physicia__82B3610EBDD0231E] PRIMARY KEY CLUSTERED ([physicianid] ASC),
    CONSTRAINT [CK__physician__salar__108B795B] CHECK ([salary]>=(0))
);

