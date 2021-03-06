USE [DS2DW]
GO
create schema [staging]
GO
/****** Object:  Table [staging].[CustomerDim]    Script Date: 10/21/2017 9:31:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [staging].[CustomerDim](
	[CustomerID] [int] NOT NULL,
	[CustomerBK] [int] NOT NULL,
	[FullName] [nvarchar](100) NULL,
	[Age] [tinyint] NULL,
	[Income] [int] NULL,
	[Gender] [nchar](1) NULL,
	[RegionName] [nvarchar](50) NULL,
	[Country] [nvarchar](50) NULL,
	[State] [nvarchar](50) NULL,
	[City] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[StartDate] [date] NULL,
	[EndDate] [date] NULL,
 CONSTRAINT [PK__Customer] PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [staging].[DateDim]    Script Date: 10/21/2017 9:31:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [staging].[DateDim](
	[DateID] [int] NOT NULL,
	[FullDate] [date] NULL,
	[Year] [smallint] NULL,
	[HalfYear] [tinyint] NULL,
	[Quarter] [tinyint] NULL,
	[MonthNumOfYear] [tinyint] NULL,
	[MonthName] [nvarchar](9) NULL,
	[DayNumOfMonth] [tinyint] NULL,
	[DayNameOfWeek] [nvarchar](9) NULL,
	[WeekNumOfMonth] [tinyint] NULL,
PRIMARY KEY CLUSTERED 
(
	[DateID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [staging].[OrdersFacts]    Script Date: 10/21/2017 9:31:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [staging].[OrdersFacts](
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
/****** Object:  Table [staging].[ProductDim]    Script Date: 10/21/2017 9:31:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [staging].[ProductDim](
	[ProductID] [int] NOT NULL,
	[ProductBK] [int] NOT NULL,
	[ProductCategoryName] [nvarchar](50) NULL,
	[Title] [nvarchar](50) NULL,
	[Actor] [nvarchar](50) NULL,
	[Price] [money] NULL,
	[StartDate] [date] NULL,
	[EndDate] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
