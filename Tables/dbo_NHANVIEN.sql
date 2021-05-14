﻿CREATE TABLE [dbo].[NHANVIEN] (
  [MANV] [varchar](5) NOT NULL,
  [MACV] [varchar](5) NULL,
  [MABP] [varchar](5) NULL,
  [TENNV] [nvarchar](50) NULL,
  [DIENTHOAINV] [varchar](50) NULL,
  [EMAILNV] [nvarchar](50) NULL,
  [DIACHINV] [nvarchar](300) NULL,
  [SOTAIKHOANNV] [nvarchar](50) NULL,
  [TENDANGNHAP] [varchar](20) NULL,
  [MATKHAU] [varchar](20) NULL,
  [NGAYVAOLAM] [date] NULL,
  [matrangthai] [varchar](5) NULL,
  [NGAYROIKHOI] [datetime] NULL,
  CONSTRAINT [PK_NHANVIEN] PRIMARY KEY NONCLUSTERED ([MANV]),
  CONSTRAINT [FK_NHANVIEN_BP_NV_BOPHAN] FOREIGN KEY ([MABP]) REFERENCES [dbo].[BOPHAN] ([MABP]),
  CONSTRAINT [FK_NHANVIEN_NV_CV_CHUCVU] FOREIGN KEY ([MACV]) REFERENCES [dbo].[CHUCVU] ([MACV])
)
ON [PRIMARY]
GO

CREATE INDEX [BP_NV_FK]
  ON [dbo].[NHANVIEN] ([MABP])
  ON [PRIMARY]
GO

CREATE INDEX [NV_CV_FK]
  ON [dbo].[NHANVIEN] ([MACV])
  ON [PRIMARY]
GO