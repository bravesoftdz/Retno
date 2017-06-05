CREATE TABLE [dbo].[CN_RETUR_DETIL]
(
[CNRTD_UNT_ID] [int] NOT NULL,
[CNRTD_CNRET_NO] [varchar] (16) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CNRTD_CNRET_UNT_ID] [int] NOT NULL,
[CNRTD_BRGSUP_ID] [int] NOT NULL,
[CNRTD_PO_NO] [varchar] (16) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CNRTD_PO_UNT_ID] [int] NOT NULL,
[CNRTD_QTY] [numeric] (18, 3) NULL CONSTRAINT [DF__CN_RETUR___CNRTD__46B27FE2] DEFAULT ((0)),
[CNRTD_SAT_CODE] [varchar] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CNRTD_PRICE] [numeric] (21, 3) NULL,
[CNRTD_TOTAL] [numeric] (21, 3) NULL,
[CNRTD_PPN_PERSEN] [numeric] (7, 2) NULL,
[CNRTD_PPN] [numeric] (21, 3) NULL,
[CNRTD_PPNBM_PERSEN] [numeric] (7, 2) NULL,
[CNRTD_PPNBM] [numeric] (21, 3) NULL,
[CNRTD_TOTAL_TAX] [numeric] (21, 3) NULL,
[CNRTD_IS_PROCESS] [int] NULL,
[CNRTD_IS_REPLACE] [int] NULL,
[OP_CREATE] [int] NULL,
[DATE_CREATE] [datetime] NULL CONSTRAINT [DF__CN_RETUR___DATE___47A6A41B] DEFAULT (getdate()),
[OP_MODIFY] [int] NULL,
[DATE_MODIFY] [datetime] NULL,
[CNRTD_IGRD_ID] [int] NULL,
[CNRTD_IGRD_UNT_ID] [int] NULL,
[CNRTD_BRG_CODE] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CNRTD_SUP_CODE] [varchar] (8) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OPC_UNIT] [int] NULL,
[OPM_UNIT] [int] NULL,
[CN_RETUR_DETIL_ID] [uniqueidentifier] NOT NULL CONSTRAINT [DF__CN_RETUR___CN_RE__2A7633E7] DEFAULT (newid())
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CN_RETUR_DETIL] ADD CONSTRAINT [PK__CN_RETUR__6B803C522C5E7C59] PRIMARY KEY CLUSTERED  ([CN_RETUR_DETIL_ID]) ON [PRIMARY]
GO