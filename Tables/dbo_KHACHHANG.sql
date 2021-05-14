CREATE TABLE [dbo].[KHACHHANG] (
  [MAKH] [varchar](5) NOT NULL,
  [TENKH] [nvarchar](100) NULL,
  [DIENTHOAIKH] [varchar](10) NULL,
  [DIACHIKH] [nvarchar](200) NOT NULL,
  [NGAYSINHKH] [date] NOT NULL,
  [EMAILKH] [varchar](50) NOT NULL,
  [DIEM] [numeric] NULL,
  [TIENDATIEU] [bigint] NULL,
  [MALOAIKH] [varchar](5) NULL,
  [ngaydangky] [datetime] NULL,
  [matrangthai] [varchar](5) NULL,
  [NGAYXOATK] [datetime] NULL,
  CONSTRAINT [PK_KHACHHANG] PRIMARY KEY NONCLUSTERED ([MAKH]),
  CONSTRAINT [FK_KH_LOAIKH] FOREIGN KEY ([MALOAIKH]) REFERENCES [dbo].[LOAIKH] ([maloaikh]) ON DELETE CASCADE ON UPDATE CASCADE
)
ON [PRIMARY]
GO