CREATE TABLE [dbo].[BANK_BALANCE]
(
[BB_UNT_ID] [int] NOT NULL,
[BB_OPPER_ID] [int] NOT NULL,
[BB_OPPER_COMP_ID] [int] NOT NULL,
[BB_BANK_ID] [int] NOT NULL,
[BB_DEBET] [numeric] (21, 3) NULL,
[BB_CREDIT] [numeric] (21, 3) NULL,
[OP_CREATE] [int] NULL,
[DATE_CREATE] [datetime] NULL CONSTRAINT [DF__BANK_BALA__DATE___59063A47] DEFAULT (getdate()),
[OP_MODIFY] [int] NULL,
[DATE_MODIFY] [datetime] NULL,
[OPC_UNIT] [int] NULL,
[OPM_UNIT] [int] NULL,
[BANK_BALANCE_ID] [uniqueidentifier] NOT NULL CONSTRAINT [DF__BANK_BALA__BANK___0C5BC11B] DEFAULT (newid())
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[BANK_BALANCE] ADD CONSTRAINT [PK__BANK_BAL__17A6B5760E44098D] PRIMARY KEY CLUSTERED  ([BANK_BALANCE_ID]) ON [PRIMARY]
GO