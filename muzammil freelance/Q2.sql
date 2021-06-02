USE [freelance]
GO

/****** Object:  Table [dbo].[StoreCard]    Script Date: 5/23/2021 8:05:08 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[StoreCard](
	[customer_id] [int] NOT NULL,
	[CardID] [int] NULL,
	[CreditLimit] [int] NULL,
	[Balance] [decimal](12, 2) NULL
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[StoreCard]  WITH CHECK ADD  CONSTRAINT [FK_StoreCard_customer] FOREIGN KEY([customer_id])
REFERENCES [dbo].[customer] ([customer_id])
GO

ALTER TABLE [dbo].[StoreCard] CHECK CONSTRAINT [FK_StoreCard_customer]
GO


