USE [DS2OLTP]
GO
/****** Object:  Table [dbo].[StateFull]    Script Date: 21-Oct-17 20:49:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StateFull](
	[stateID] [int] IDENTITY(1,1) NOT NULL,
	[stateCode] [nchar](2) NOT NULL,
	[stateName] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_state] PRIMARY KEY CLUSTERED 
(
	[stateID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[StateFull] ON 

INSERT [dbo].[StateFull] ([stateID], [stateCode], [stateName]) VALUES (1, N'AL', N'Alabama')
INSERT [dbo].[StateFull] ([stateID], [stateCode], [stateName]) VALUES (2, N'AK', N'Alaska')
INSERT [dbo].[StateFull] ([stateID], [stateCode], [stateName]) VALUES (3, N'AZ', N'Arizona')
INSERT [dbo].[StateFull] ([stateID], [stateCode], [stateName]) VALUES (4, N'AR', N'Arkansas')
INSERT [dbo].[StateFull] ([stateID], [stateCode], [stateName]) VALUES (5, N'CA', N'California')
INSERT [dbo].[StateFull] ([stateID], [stateCode], [stateName]) VALUES (6, N'CO', N'Colorado')
INSERT [dbo].[StateFull] ([stateID], [stateCode], [stateName]) VALUES (7, N'CT', N'Connecticut')
INSERT [dbo].[StateFull] ([stateID], [stateCode], [stateName]) VALUES (8, N'DE', N'Delaware')
INSERT [dbo].[StateFull] ([stateID], [stateCode], [stateName]) VALUES (9, N'DC', N'District of Columbia')
INSERT [dbo].[StateFull] ([stateID], [stateCode], [stateName]) VALUES (10, N'FL', N'Florida')
INSERT [dbo].[StateFull] ([stateID], [stateCode], [stateName]) VALUES (11, N'GA', N'Georgia')
INSERT [dbo].[StateFull] ([stateID], [stateCode], [stateName]) VALUES (12, N'HI', N'Hawaii')
INSERT [dbo].[StateFull] ([stateID], [stateCode], [stateName]) VALUES (13, N'ID', N'Idaho')
INSERT [dbo].[StateFull] ([stateID], [stateCode], [stateName]) VALUES (14, N'IL', N'Illinois')
INSERT [dbo].[StateFull] ([stateID], [stateCode], [stateName]) VALUES (15, N'IN', N'Indiana')
INSERT [dbo].[StateFull] ([stateID], [stateCode], [stateName]) VALUES (16, N'IA', N'Iowa')
INSERT [dbo].[StateFull] ([stateID], [stateCode], [stateName]) VALUES (17, N'KS', N'Kansas')
INSERT [dbo].[StateFull] ([stateID], [stateCode], [stateName]) VALUES (18, N'KY', N'Kentucky')
INSERT [dbo].[StateFull] ([stateID], [stateCode], [stateName]) VALUES (19, N'LA', N'Louisiana')
INSERT [dbo].[StateFull] ([stateID], [stateCode], [stateName]) VALUES (20, N'ME', N'Maine')
INSERT [dbo].[StateFull] ([stateID], [stateCode], [stateName]) VALUES (21, N'MD', N'Maryland')
INSERT [dbo].[StateFull] ([stateID], [stateCode], [stateName]) VALUES (22, N'MA', N'Massachusetts')
INSERT [dbo].[StateFull] ([stateID], [stateCode], [stateName]) VALUES (23, N'MI', N'Michigan')
INSERT [dbo].[StateFull] ([stateID], [stateCode], [stateName]) VALUES (24, N'MN', N'Minnesota')
INSERT [dbo].[StateFull] ([stateID], [stateCode], [stateName]) VALUES (25, N'MS', N'Mississippi')
INSERT [dbo].[StateFull] ([stateID], [stateCode], [stateName]) VALUES (26, N'MO', N'Missouri')
INSERT [dbo].[StateFull] ([stateID], [stateCode], [stateName]) VALUES (27, N'MT', N'Montana')
INSERT [dbo].[StateFull] ([stateID], [stateCode], [stateName]) VALUES (28, N'NE', N'Nebraska')
INSERT [dbo].[StateFull] ([stateID], [stateCode], [stateName]) VALUES (29, N'NV', N'Nevada')
INSERT [dbo].[StateFull] ([stateID], [stateCode], [stateName]) VALUES (30, N'NH', N'New Hampshire')
INSERT [dbo].[StateFull] ([stateID], [stateCode], [stateName]) VALUES (31, N'NJ', N'New Jersey')
INSERT [dbo].[StateFull] ([stateID], [stateCode], [stateName]) VALUES (32, N'NM', N'New Mexico')
INSERT [dbo].[StateFull] ([stateID], [stateCode], [stateName]) VALUES (33, N'NY', N'New York')
INSERT [dbo].[StateFull] ([stateID], [stateCode], [stateName]) VALUES (34, N'NC', N'North Carolina')
INSERT [dbo].[StateFull] ([stateID], [stateCode], [stateName]) VALUES (35, N'ND', N'North Dakota')
INSERT [dbo].[StateFull] ([stateID], [stateCode], [stateName]) VALUES (36, N'OH', N'Ohio')
INSERT [dbo].[StateFull] ([stateID], [stateCode], [stateName]) VALUES (37, N'OK', N'Oklahoma')
INSERT [dbo].[StateFull] ([stateID], [stateCode], [stateName]) VALUES (38, N'OR', N'Oregon')
INSERT [dbo].[StateFull] ([stateID], [stateCode], [stateName]) VALUES (39, N'PA', N'Pennsylvania')
INSERT [dbo].[StateFull] ([stateID], [stateCode], [stateName]) VALUES (40, N'PR', N'Puerto Rico')
INSERT [dbo].[StateFull] ([stateID], [stateCode], [stateName]) VALUES (41, N'RI', N'Rhode Island')
INSERT [dbo].[StateFull] ([stateID], [stateCode], [stateName]) VALUES (42, N'SC', N'South Carolina')
INSERT [dbo].[StateFull] ([stateID], [stateCode], [stateName]) VALUES (43, N'SD', N'South Dakota')
INSERT [dbo].[StateFull] ([stateID], [stateCode], [stateName]) VALUES (44, N'TN', N'Tennessee')
INSERT [dbo].[StateFull] ([stateID], [stateCode], [stateName]) VALUES (45, N'TX', N'Texas')
INSERT [dbo].[StateFull] ([stateID], [stateCode], [stateName]) VALUES (46, N'UT', N'Utah')
INSERT [dbo].[StateFull] ([stateID], [stateCode], [stateName]) VALUES (47, N'VT', N'Vermont')
INSERT [dbo].[StateFull] ([stateID], [stateCode], [stateName]) VALUES (48, N'VA', N'Virginia')
INSERT [dbo].[StateFull] ([stateID], [stateCode], [stateName]) VALUES (49, N'WA', N'Washington')
INSERT [dbo].[StateFull] ([stateID], [stateCode], [stateName]) VALUES (50, N'WV', N'West Virginia')
INSERT [dbo].[StateFull] ([stateID], [stateCode], [stateName]) VALUES (51, N'WI', N'Wisconsin')
INSERT [dbo].[StateFull] ([stateID], [stateCode], [stateName]) VALUES (52, N'WY', N'Wyoming')
SET IDENTITY_INSERT [dbo].[StateFull] OFF

GO

  INSERT INTO [DS2OLTP].[dbo].[StateFull] ([stateCode], [stateName])
SELECT DISTINCT [State], [State]
FROM [DataForUpdateNew].[dbo].[Knime]
WHERE [Country] <> 'United States';
