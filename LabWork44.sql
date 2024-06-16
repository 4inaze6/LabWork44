/****** Object:  Table [dbo].[Author]    Script Date: 16.06.2024 14:09:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Author](
	[AuthorId] [int] IDENTITY(1,1) NOT NULL,
	[Surname] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Country] [nvarchar](30) NOT NULL,
 CONSTRAINT [PK_Author] PRIMARY KEY CLUSTERED 
(
	[AuthorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Book]    Script Date: 16.06.2024 14:09:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Book](
	[BookId] [int] IDENTITY(1,1) NOT NULL,
	[AuthorId] [int] NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
	[Genre] [nvarchar](10) NOT NULL,
	[Price] [decimal](6, 2) NOT NULL,
	[Weight] [decimal](4, 3) NOT NULL,
	[Pages] [smallint] NOT NULL,
	[PublicationYear] [smallint] NULL,
 CONSTRAINT [PK_Book] PRIMARY KEY CLUSTERED 
(
	[BookId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 16.06.2024 14:09:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[CustomerId] [int] IDENTITY(1,1) NOT NULL,
	[Login] [varchar](20) NOT NULL,
	[Surname] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Address] [nvarchar](100) NOT NULL,
	[Phone] [nvarchar](20) NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 16.06.2024 14:09:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[OrderId] [int] IDENTITY(1,1) NOT NULL,
	[CustomerId] [int] NOT NULL,
	[OrderDatetime] [datetime] NOT NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderList]    Script Date: 16.06.2024 14:09:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderList](
	[OrderId] [int] NOT NULL,
	[BookId] [int] NOT NULL,
	[Amount] [tinyint] NOT NULL,
 CONSTRAINT [PK_OrderList] PRIMARY KEY CLUSTERED 
(
	[OrderId] ASC,
	[BookId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Author] ON 
GO
INSERT [dbo].[Author] ([AuthorId], [Surname], [Name], [Country]) VALUES (1, N'Пушкин', N'Александр', N'Россия')
GO
INSERT [dbo].[Author] ([AuthorId], [Surname], [Name], [Country]) VALUES (2, N'Роулинг', N'Джоан', N'Англия')
GO
INSERT [dbo].[Author] ([AuthorId], [Surname], [Name], [Country]) VALUES (3, N'Джордж', N'Мартин', N'США')
GO
INSERT [dbo].[Author] ([AuthorId], [Surname], [Name], [Country]) VALUES (4, N'Паланик', N'Чак', N'США')
GO
INSERT [dbo].[Author] ([AuthorId], [Surname], [Name], [Country]) VALUES (5, N'Гоголь', N'Николай', N'Кукраина')
GO
INSERT [dbo].[Author] ([AuthorId], [Surname], [Name], [Country]) VALUES (6, N'Хеллоу', N'Ворлд', N'Программистляндия')
GO
SET IDENTITY_INSERT [dbo].[Author] OFF
GO
SET IDENTITY_INSERT [dbo].[Book] ON 
GO
INSERT [dbo].[Book] ([BookId], [AuthorId], [Title], [Genre], [Price], [Weight], [Pages], [PublicationYear]) VALUES (1, 1, N'Anime', N'проза', CAST(2700.00 AS Decimal(6, 2)), CAST(6.000 AS Decimal(4, 3)), 5, NULL)
GO
INSERT [dbo].[Book] ([BookId], [AuthorId], [Title], [Genre], [Price], [Weight], [Pages], [PublicationYear]) VALUES (2, 2, N'Hanime', N'проза', CAST(1999.00 AS Decimal(6, 2)), CAST(4.000 AS Decimal(4, 3)), 1, 2000)
GO
INSERT [dbo].[Book] ([BookId], [AuthorId], [Title], [Genre], [Price], [Weight], [Pages], [PublicationYear]) VALUES (6, 3, N'Mao Dzedong Theme', N'поэзия', CAST(999.00 AS Decimal(6, 2)), CAST(5.000 AS Decimal(4, 3)), 100, 1960)
GO
INSERT [dbo].[Book] ([BookId], [AuthorId], [Title], [Genre], [Price], [Weight], [Pages], [PublicationYear]) VALUES (7, 4, N'Портрет', N'другое', CAST(600.00 AS Decimal(6, 2)), CAST(0.000 AS Decimal(4, 3)), 0, NULL)
GO
INSERT [dbo].[Book] ([BookId], [AuthorId], [Title], [Genre], [Price], [Weight], [Pages], [PublicationYear]) VALUES (12, 5, N'Gengerbrave', N'проза', CAST(500.00 AS Decimal(6, 2)), CAST(4.000 AS Decimal(4, 3)), 0, NULL)
GO
INSERT [dbo].[Book] ([BookId], [AuthorId], [Title], [Genre], [Price], [Weight], [Pages], [PublicationYear]) VALUES (14, 6, N'The way', N'другое', CAST(799.00 AS Decimal(6, 2)), CAST(0.000 AS Decimal(4, 3)), 0, 2024)
GO
INSERT [dbo].[Book] ([BookId], [AuthorId], [Title], [Genre], [Price], [Weight], [Pages], [PublicationYear]) VALUES (15, 6, N'Моя игра', N'проза', CAST(0.00 AS Decimal(6, 2)), CAST(0.000 AS Decimal(4, 3)), 0, 2006)
GO
INSERT [dbo].[Book] ([BookId], [AuthorId], [Title], [Genre], [Price], [Weight], [Pages], [PublicationYear]) VALUES (16, 2, N'Сказки', N'проза', CAST(1500.00 AS Decimal(6, 2)), CAST(9.999 AS Decimal(4, 3)), 240, 2005)
GO
INSERT [dbo].[Book] ([BookId], [AuthorId], [Title], [Genre], [Price], [Weight], [Pages], [PublicationYear]) VALUES (17, 2, N'Сказки про червяков', N'поэзия', CAST(-400.00 AS Decimal(6, 2)), CAST(0.000 AS Decimal(4, 3)), 0, NULL)
GO
INSERT [dbo].[Book] ([BookId], [AuthorId], [Title], [Genre], [Price], [Weight], [Pages], [PublicationYear]) VALUES (18, 3, N'Ничего', N'проза', CAST(9999.00 AS Decimal(6, 2)), CAST(5.000 AS Decimal(4, 3)), 10, 2000)
GO
INSERT [dbo].[Book] ([BookId], [AuthorId], [Title], [Genre], [Price], [Weight], [Pages], [PublicationYear]) VALUES (20, 2, N'Сказки про осьменожек', N'другое', CAST(9599.00 AS Decimal(6, 2)), CAST(4.000 AS Decimal(4, 3)), 250, 1001)
GO
INSERT [dbo].[Book] ([BookId], [AuthorId], [Title], [Genre], [Price], [Weight], [Pages], [PublicationYear]) VALUES (21, 6, N'Моя игра2', N'проза', CAST(0.00 AS Decimal(6, 2)), CAST(0.000 AS Decimal(4, 3)), 0, 2006)
GO
INSERT [dbo].[Book] ([BookId], [AuthorId], [Title], [Genre], [Price], [Weight], [Pages], [PublicationYear]) VALUES (22, 6, N'Моя игра2', N'проза', CAST(0.00 AS Decimal(6, 2)), CAST(0.000 AS Decimal(4, 3)), 0, 2006)
GO
SET IDENTITY_INSERT [dbo].[Book] OFF
GO
SET IDENTITY_INSERT [dbo].[Customer] ON 
GO
INSERT [dbo].[Customer] ([CustomerId], [Login], [Surname], [Name], [Address], [Phone]) VALUES (1, N'User123', N'Klyush', N'Kirya', N'Pushkina 77', N'898126126')
GO
INSERT [dbo].[Customer] ([CustomerId], [Login], [Surname], [Name], [Address], [Phone]) VALUES (5, N'Rebuilder', N'Goodman', N'Wolf', N'Попова 1', N'918236464')
GO
INSERT [dbo].[Customer] ([CustomerId], [Login], [Surname], [Name], [Address], [Phone]) VALUES (6, N'BELKA_RAYONA', N'Pogrebnoy', N'Ivaness', N'Южная 21', N'+79111138')
GO
INSERT [dbo].[Customer] ([CustomerId], [Login], [Surname], [Name], [Address], [Phone]) VALUES (8, N'Nonon', N'Hek', N'Huk', N'Крутая 1', NULL)
GO
INSERT [dbo].[Customer] ([CustomerId], [Login], [Surname], [Name], [Address], [Phone]) VALUES (9, N'Golovach', N'Михаил', N'Эйнштейн', N'Калатушкина 3', NULL)
GO
SET IDENTITY_INSERT [dbo].[Customer] OFF
GO
SET IDENTITY_INSERT [dbo].[Order] ON 
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDatetime]) VALUES (1, 1, CAST(N'2024-04-12T13:41:38.920' AS DateTime))
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDatetime]) VALUES (2, 5, CAST(N'2024-04-12T13:41:49.743' AS DateTime))
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDatetime]) VALUES (7, 6, CAST(N'2024-04-12T13:42:07.020' AS DateTime))
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDatetime]) VALUES (12, 5, CAST(N'2023-01-02T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDatetime]) VALUES (13, 1, CAST(N'2000-01-30T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDatetime]) VALUES (14, 5, CAST(N'2001-02-22T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDatetime]) VALUES (15, 1, CAST(N'2024-06-05T17:18:06.917' AS DateTime))
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDatetime]) VALUES (16, 6, CAST(N'2013-12-12T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDatetime]) VALUES (17, 5, CAST(N'2002-01-01T00:00:00.000' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
INSERT [dbo].[OrderList] ([OrderId], [BookId], [Amount]) VALUES (1, 1, 2)
GO
INSERT [dbo].[OrderList] ([OrderId], [BookId], [Amount]) VALUES (1, 2, 2)
GO
INSERT [dbo].[OrderList] ([OrderId], [BookId], [Amount]) VALUES (1, 12, 2)
GO
INSERT [dbo].[OrderList] ([OrderId], [BookId], [Amount]) VALUES (7, 12, 99)
GO
INSERT [dbo].[OrderList] ([OrderId], [BookId], [Amount]) VALUES (12, 1, 9)
GO
INSERT [dbo].[OrderList] ([OrderId], [BookId], [Amount]) VALUES (13, 2, 2)
GO
INSERT [dbo].[OrderList] ([OrderId], [BookId], [Amount]) VALUES (13, 16, 20)
GO
ALTER TABLE [dbo].[Author] ADD  CONSTRAINT [DF_Author_Country]  DEFAULT (N'Россия') FOR [Country]
GO
ALTER TABLE [dbo].[Book] ADD  CONSTRAINT [DF_Book_Genre]  DEFAULT (N'проза') FOR [Genre]
GO
ALTER TABLE [dbo].[Book] ADD  CONSTRAINT [DF_Book_Price]  DEFAULT ((0)) FOR [Price]
GO
ALTER TABLE [dbo].[Book] ADD  CONSTRAINT [DF_Book_Weight]  DEFAULT ((0)) FOR [Weight]
GO
ALTER TABLE [dbo].[Book] ADD  CONSTRAINT [DF_Book_Pages]  DEFAULT ((0)) FOR [Pages]
GO
ALTER TABLE [dbo].[Order] ADD  CONSTRAINT [DF_Order_OrderDatetime]  DEFAULT (getdate()) FOR [OrderDatetime]
GO
ALTER TABLE [dbo].[OrderList] ADD  CONSTRAINT [DF_OrderList_Amount]  DEFAULT ((1)) FOR [Amount]
GO
ALTER TABLE [dbo].[Book]  WITH CHECK ADD  CONSTRAINT [FK_Book_Author] FOREIGN KEY([AuthorId])
REFERENCES [dbo].[Author] ([AuthorId])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Book] CHECK CONSTRAINT [FK_Book_Author]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Customer] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customer] ([CustomerId])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Customer]
GO
ALTER TABLE [dbo].[OrderList]  WITH CHECK ADD  CONSTRAINT [FK_OrderList_Book] FOREIGN KEY([BookId])
REFERENCES [dbo].[Book] ([BookId])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[OrderList] CHECK CONSTRAINT [FK_OrderList_Book]
GO
ALTER TABLE [dbo].[OrderList]  WITH CHECK ADD  CONSTRAINT [FK_OrderList_Order] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Order] ([OrderId])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[OrderList] CHECK CONSTRAINT [FK_OrderList_Order]
GO
ALTER TABLE [dbo].[Book]  WITH CHECK ADD  CONSTRAINT [CK_BookGenre] CHECK  (([genre]='проза' OR [genre]='поэзия' OR [genre]='другое'))
GO
ALTER TABLE [dbo].[Book] CHECK CONSTRAINT [CK_BookGenre]
GO
ALTER TABLE [dbo].[OrderList]  WITH CHECK ADD  CONSTRAINT [CK_OrderListAmount] CHECK  (([Amount]<=(100)))
GO
ALTER TABLE [dbo].[OrderList] CHECK CONSTRAINT [CK_OrderListAmount]
GO
