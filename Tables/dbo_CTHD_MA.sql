CREATE TABLE [dbo].[CTHD_MA] (
  [MAHD] [varchar](5) NOT NULL,
  [MAMON] [varchar](5) NULL,
  [SOLUONG] [int] NULL,
  CONSTRAINT [FK_CTHD_CTHD2_HOADON] FOREIGN KEY ([MAHD]) REFERENCES [dbo].[HOADON] ([MAHD]) ON DELETE CASCADE ON UPDATE CASCADE
)
ON [PRIMARY]
GO

CREATE INDEX [CTHD2_FK]
  ON [dbo].[CTHD_MA] ([MAHD])
  ON [PRIMARY]
GO

CREATE INDEX [CTHD3_FK]
  ON [dbo].[CTHD_MA] ([MAMON])
  ON [PRIMARY]
GO

ALTER TABLE [dbo].[CTHD_MA] WITH NOCHECK
  ADD CONSTRAINT [FK_cthd_monan] FOREIGN KEY ([MAMON]) REFERENCES [dbo].[MONAN] ([MAMON])
GO