CREATE TABLE [dbo].[REF$KATEGORI]
(
[KAT_SUBGRUP_ID] [int] NULL,
[KAT_CODE] [varchar] (6) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[KAT_NAME] [varchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[OP_CREATE] [int] NULL,
[DATE_CREATE] [datetime] NULL CONSTRAINT [DF__REF$KATEG__DATE___0FB750B3] DEFAULT (getdate()),
[OP_MODIFY] [int] NULL,
[DATE_MODIFY] [datetime] NULL,
[OPC_UNIT] [int] NULL,
[OPM_UNIT] [int] NULL,
[KAT_HO_AUTHORIZE] [int] NOT NULL CONSTRAINT [DF__REF$KATEG__KAT_H__10AB74EC] DEFAULT ((0)),
[REF$KATEGORI_ID] [uniqueidentifier] NOT NULL CONSTRAINT [DF__REF$KATEG__REF$K__270FB757] DEFAULT (newid()),
[REF$SUB_GRUP_ID] [uniqueidentifier] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[REF$KATEGORI] ADD CONSTRAINT [PK__REF$KATE__6F5CB9F428F7FFC9] PRIMARY KEY CLUSTERED  ([REF$KATEGORI_ID]) ON [PRIMARY]
GO