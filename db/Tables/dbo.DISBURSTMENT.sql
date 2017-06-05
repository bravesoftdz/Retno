CREATE TABLE [dbo].[DISBURSTMENT]
(
[DIS_UNT_ID] [int] NOT NULL,
[DIS_NO] [varchar] (16) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DIS_DATE] [datetime] NULL CONSTRAINT [DF__DISBURSTM__DIS_D__6166761E] DEFAULT (getdate()),
[DIS_TPBYR_ID] [int] NULL,
[DIS_KDJUR_ID] [int] NULL,
[DIS_KDJUR_COMP_ID] [int] NULL,
[DIS_REK_CODE] [varchar] (16) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DIS_REK_COMP_ID] [int] NOT NULL,
[DIS_DUE_DATE] [datetime] NULL,
[DIS_REF] [varchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DIS_PAYMENT_TO] [varchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DIS_DESCRIPTION] [varchar] (256) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DIS_STAPRO_ID] [int] NULL,
[DIS_CHECKOUT_DATE] [datetime] NULL,
[DIS_IS_JURNAL] [int] NULL,
[OP_CREATE] [int] NULL,
[DATE_CREATE] [datetime] NULL CONSTRAINT [DF__DISBURSTM__DATE___625A9A57] DEFAULT (getdate()),
[OP_MODIFY] [int] NULL,
[DATE_MODIFY] [datetime] NULL,
[OPC_UNIT] [int] NULL,
[OPM_UNIT] [int] NULL,
[DISBURSTMENT_ID] [uniqueidentifier] NOT NULL CONSTRAINT [DF__DISBURSTM__DISBU__0BF1ACC7] DEFAULT (newid())
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DISBURSTMENT] ADD CONSTRAINT [PK__DISBURST__EB574A620DD9F539] PRIMARY KEY CLUSTERED  ([DISBURSTMENT_ID]) ON [PRIMARY]
GO