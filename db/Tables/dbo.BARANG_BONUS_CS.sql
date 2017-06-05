CREATE TABLE [dbo].[BARANG_BONUS_CS]
(
[BNSCS_CODE] [varchar] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BNSCS_UNT_ID] [int] NOT NULL,
[BNSCS_STOCK] [int] NULL CONSTRAINT [DF__BARANG_BO__BNSCS__6477ECF3] DEFAULT ((0)),
[BNSCS_SAT_CODE] [varchar] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OP_CREATE] [int] NULL,
[DATE_CREATE] [datetime] NULL CONSTRAINT [DF__BARANG_BO__DATE___656C112C] DEFAULT (getdate()),
[OP_MODIFY] [int] NULL,
[DATE_MODIFY] [datetime] NULL,
[OPC_UNIT] [int] NULL,
[OPM_UNIT] [int] NULL,
[BARANG_BONUS_CS_ID] [uniqueidentifier] NOT NULL CONSTRAINT [DF__BARANG_BO__BARAN__51E506C3] DEFAULT (newid())
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[BARANG_BONUS_CS] ADD CONSTRAINT [PK__BARANG_B__11012F1E53CD4F35] PRIMARY KEY CLUSTERED  ([BARANG_BONUS_CS_ID]) ON [PRIMARY]
GO