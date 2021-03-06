USE [DS2_DW]
GO
/****** Object:  Table [dbo].[CustomerDim]    Script Date: 12.10.2017 0:21:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerDim](
    [CustomerID] [int] IDENTITY(1,1) NOT NULL,
    [CustomerBusinessID] [int]  NOT NULL,
	[FullName] [varchar](120) NULL,
	[Age] [tinyint] NULL,
	[Income] [int] NULL,
	[Gender] [char](1) NULL,
	[RegionName] [varchar](50) NULL,
	[Country] [varchar](50) NULL,
	[State] [varchar](50) NULL,
	[City] [varchar](50) NULL,
	[Email] [varchar](130) NULL,
	[StartDate] [date] NULL,
	[EndDate] [date] NULL,
	PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) 

GO
/****** Object:  Table [dbo].[DateDim]    Script Date: 12.10.2017 0:21:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DateDim](
	[DateID] [int] IDENTITY(1,1) NOT NULL,
	[FullDate] [datetime] NULL,
	[Year] [smallint] NULL,
	[HalfYear] [tinyint] NULL,
	[Quarter] [tinyint] NULL,
	[MonthNumOfYear] [tinyint] NULL,
	[MonthName] [nvarchar](30) NULL,
	[DayNumOfMonth] [tinyint] NULL,
	[DayNameOfWeek] [nvarchar](30) NULL,
	[WeekNumOfMonth] [tinyint] NULL,
PRIMARY KEY CLUSTERED 
(
	[DateID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OrdersFacts]    Script Date: 12.10.2017 0:21:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrdersFacts](
	[OrderID] [int] NOT NULL,
	[DateID] [int] NOT NULL,
	[CustomerID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[Quantity] [int] NULL,
	[RevenueOrderLine] [money] NULL,
	[TaxOrderLine] [money] NULL,
	[NetAmountOrder] [money] NULL,
	[TaxOrder] [money] NULL,
	[TotalAmountOrder] [money] NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC,
	[DateID] ASC,
	[CustomerID] ASC,
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ProductDim]    Script Date: 12.10.2017 0:21:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductDim](
	[ProductID] [int] IDENTITY(1,1) NOT NULL,
    [ProductBusinessID] [int]  NOT NULL,
	[ProductCategoryName] [varchar](50) NULL,
	[Title] [varchar](50) NULL,
	[Actor] [varchar](50) NULL,
	[Price] [money] NULL,
	[StartDate] [date] NULL,
	[EndDate] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[OrdersFacts]  WITH CHECK ADD  CONSTRAINT [FK_CustomerDim_CustomerID] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[CustomerDim] ([CustomerID])
GO
ALTER TABLE [dbo].[OrdersFacts] CHECK CONSTRAINT [FK_CustomerDim_CustomerID]
GO
ALTER TABLE [dbo].[OrdersFacts]  WITH CHECK ADD  CONSTRAINT [FK_DateDim_DateID] FOREIGN KEY([DateID])
REFERENCES [dbo].[DateDim] ([DateID])
GO
ALTER TABLE [dbo].[OrdersFacts] CHECK CONSTRAINT [FK_DateDim_DateID]
GO
ALTER TABLE [dbo].[OrdersFacts]  WITH CHECK ADD  CONSTRAINT [FK_ProductDim_ProductID] FOREIGN KEY([ProductID])
REFERENCES [dbo].[ProductDim] ([ProductID])
GO
ALTER TABLE [dbo].[OrdersFacts] CHECK CONSTRAINT [FK_ProductDim_ProductID]
GO
