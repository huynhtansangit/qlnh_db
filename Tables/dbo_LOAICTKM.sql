﻿CREATE TABLE [dbo].[LOAICTKM] (
  [MALOAIKM] [varchar](5) NOT NULL,
  [TENLOAIKM] [nvarchar](50) NULL,
  CONSTRAINT [PK_LOAICTKM] PRIMARY KEY NONCLUSTERED ([MALOAIKM])
)
ON [PRIMARY]
GO