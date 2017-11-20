CREATE TABLE [dbo].[AdjustedPriceModels]
(
[Id] [int] NOT NULL IDENTITY(1, 1),
[ProductId] [int] NOT NULL,
[ISIN] [nvarchar] (max) COLLATE Persian_100_CI_AS NULL,
[Value] [decimal] (18, 2) NOT NULL,
[Type] [int] NOT NULL,
[FromDateJalali] [nvarchar] (max) COLLATE Persian_100_CI_AS NULL,
[ToDateJalali] [nvarchar] (max) COLLATE Persian_100_CI_AS NULL,
[Description] [nvarchar] (max) COLLATE Persian_100_CI_AS NULL,
[Reason] [nvarchar] (max) COLLATE Persian_100_CI_AS NULL,
[Created] [datetime] NOT NULL,
[Modified] [datetime] NOT NULL,
[Symbol] [nvarchar] (max) COLLATE Persian_100_CI_AS NULL,
[ProductTitle] [nvarchar] (max) COLLATE Persian_100_CI_AS NULL,
[SecurityExchangeId] [int] NOT NULL,
[TypeTitle] [nvarchar] (max) COLLATE Persian_100_CI_AS NULL,
[IsEditMode] [bit] NOT NULL,
[SubmitButton] [nvarchar] (max) COLLATE Persian_100_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[AdjustedPriceModels] ADD CONSTRAINT [PK_dbo.AdjustedPriceModels] PRIMARY KEY CLUSTERED  ([Id]) ON [PRIMARY]
GO
