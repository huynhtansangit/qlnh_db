CREATE TABLE [dbo].[MONAN] (
  [MAMON] [varchar](5) NOT NULL,
  [TENMON] [nvarchar](100) NOT NULL,
  [GIABAN] [int] NOT NULL,
  [MOTA] [nvarchar](500) NULL,
  [DVT] [nvarchar](50) NOT NULL,
  [HINH] [image] NOT NULL,
  [matrangthai] [varchar](5) NULL,
  [NGAYXOAMON] [datetime] NULL,
  CONSTRAINT [PK_MONAN] PRIMARY KEY NONCLUSTERED ([MAMON])
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO