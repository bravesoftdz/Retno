CREATE TABLE [dbo].[IGRA]
(
[IGR_NO] [varchar] (16) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[IGR_UNT_ID] [int] NOT NULL,
[IGR_INV_NO] [varchar] (16) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__IGRA__IGR_INV_NO__50FB042B] DEFAULT ('IGR-'),
[IGR_DATE] [datetime] NULL CONSTRAINT [DF__IGRA__IGR_DATE__51EF2864] DEFAULT (getdate()),
[IGR_QTY_ITEM] [numeric] (18, 3) NULL CONSTRAINT [DF__IGRA__IGR_QTY_IT__52E34C9D] DEFAULT ((0)),
[IGR_DESCRIPTION] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OP_CREATE] [int] NULL,
[DATE_CREATE] [datetime] NULL CONSTRAINT [DF__IGRA__DATE_CREAT__53D770D6] DEFAULT (getdate()),
[OP_MODIFY] [int] NULL,
[DATE_MODIFY] [datetime] NULL,
[OPC_UNIT] [int] NULL,
[OPM_UNIT] [int] NULL,
[IGRA_ID] [uniqueidentifier] NOT NULL CONSTRAINT [DF__IGRA__IGRA_ID__14DBF883] DEFAULT (newid())
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[IGRA] ADD CONSTRAINT [PK__IGRA__1F62DD8A16C440F5] PRIMARY KEY CLUSTERED  ([IGRA_ID]) ON [PRIMARY]
GO