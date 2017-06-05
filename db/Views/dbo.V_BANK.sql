SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [dbo].[V_BANK] AS

SELECT A.Bank_ID, A.BANK_CODE, A.BANK_NAME, A.BANK_BRANCH, A.BANK_ADDRESS,
B.REK_CODE, B.REK_NAME, A.BANK_DESCRIPTION
FROM BANK A
LEFT JOIN REKENING B ON A.REKENING_ID=B.REKENING_ID
GO