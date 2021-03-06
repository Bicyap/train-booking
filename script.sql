USE [mydatabase]
GO
/****** Object:  Table [dbo].[TBLADMIN]    Script Date: 16.01.2022 21:35:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBLADMIN](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[KULLANICI] [varchar](50) NULL,
	[SIFRE] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBLBOOKINGS]    Script Date: 16.01.2022 21:35:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBLBOOKINGS](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[NEREDEN] [varchar](50) NULL,
	[NEREYE] [varchar](50) NULL,
	[TARIH] [varchar](50) NULL,
	[SAYI] [int] NULL,
	[REZNO] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBLBUS]    Script Date: 16.01.2022 21:35:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBLBUS](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[NEREDEN] [varchar](50) NULL,
	[NEREYE] [varchar](50) NULL,
	[TARIH] [varchar](50) NULL,
	[BOS] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBLLOGINS]    Script Date: 16.01.2022 21:35:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBLLOGINS](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[KULLANICI] [varchar](50) NOT NULL,
	[SIFRE] [varchar](50) NOT NULL,
	[AD] [varchar](50) NOT NULL,
	[SOYAD] [varchar](50) NOT NULL,
	[MAIL] [varchar](50) NOT NULL,
 CONSTRAINT [PK_TBLLOGINS] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[TBLADMIN] ON 

INSERT [dbo].[TBLADMIN] ([ID], [KULLANICI], [SIFRE]) VALUES (1, N'admin', N'1234')
INSERT [dbo].[TBLADMIN] ([ID], [KULLANICI], [SIFRE]) VALUES (2, N'bicyap', N'hello')
SET IDENTITY_INSERT [dbo].[TBLADMIN] OFF
GO
SET IDENTITY_INSERT [dbo].[TBLBOOKINGS] ON 

INSERT [dbo].[TBLBOOKINGS] ([ID], [NEREDEN], [NEREYE], [TARIH], [SAYI], [REZNO]) VALUES (1, N'Antalya', N'Adana', N'30.01.2022', 4, 30)
INSERT [dbo].[TBLBOOKINGS] ([ID], [NEREDEN], [NEREYE], [TARIH], [SAYI], [REZNO]) VALUES (2, N'Antalya', N'Adana', N'30.01.2022', 4, 26)
INSERT [dbo].[TBLBOOKINGS] ([ID], [NEREDEN], [NEREYE], [TARIH], [SAYI], [REZNO]) VALUES (3, N'İstanbul', N'Ankara', N'31.01.2022', 4, 30)
INSERT [dbo].[TBLBOOKINGS] ([ID], [NEREDEN], [NEREYE], [TARIH], [SAYI], [REZNO]) VALUES (4, N'Ankara', N'İzmir', N'28.01.2022', 5, 30)
INSERT [dbo].[TBLBOOKINGS] ([ID], [NEREDEN], [NEREYE], [TARIH], [SAYI], [REZNO]) VALUES (5, N'Ankara', N'İzmir', N'28.01.2022', 2, 25)
SET IDENTITY_INSERT [dbo].[TBLBOOKINGS] OFF
GO
SET IDENTITY_INSERT [dbo].[TBLBUS] ON 

INSERT [dbo].[TBLBUS] ([ID], [NEREDEN], [NEREYE], [TARIH], [BOS]) VALUES (1, N'Ankara', N'İstanbul', N'31.01.2022', 30)
INSERT [dbo].[TBLBUS] ([ID], [NEREDEN], [NEREYE], [TARIH], [BOS]) VALUES (2, N'Antalya', N'Adana', N'30.01.2022', 30)
INSERT [dbo].[TBLBUS] ([ID], [NEREDEN], [NEREYE], [TARIH], [BOS]) VALUES (3, N'İstanbul', N'Ankara', N'31.01.2022', 26)
INSERT [dbo].[TBLBUS] ([ID], [NEREDEN], [NEREYE], [TARIH], [BOS]) VALUES (4, N'Adana', N'Antalya', N'30.01.2022', 30)
INSERT [dbo].[TBLBUS] ([ID], [NEREDEN], [NEREYE], [TARIH], [BOS]) VALUES (5, N'İzmir', N'Mersin', N'29.01.2022', 30)
INSERT [dbo].[TBLBUS] ([ID], [NEREDEN], [NEREYE], [TARIH], [BOS]) VALUES (6, N'Mersin', N'İzmir', N'29.01.2022', 30)
INSERT [dbo].[TBLBUS] ([ID], [NEREDEN], [NEREYE], [TARIH], [BOS]) VALUES (7, N'Ankara', N'İzmir', N'28.01.2022', 23)
INSERT [dbo].[TBLBUS] ([ID], [NEREDEN], [NEREYE], [TARIH], [BOS]) VALUES (8, N'İzmir', N'Antalya', N'28.012022', 30)
INSERT [dbo].[TBLBUS] ([ID], [NEREDEN], [NEREYE], [TARIH], [BOS]) VALUES (9, N'Mersin', N'İstanbul', N'28.01.2022', 30)
INSERT [dbo].[TBLBUS] ([ID], [NEREDEN], [NEREYE], [TARIH], [BOS]) VALUES (10, N'Adana', N'Ankara', N'28.01.2022', 30)
INSERT [dbo].[TBLBUS] ([ID], [NEREDEN], [NEREYE], [TARIH], [BOS]) VALUES (11, N'İstanbul', N'İzmir', N'27.01.2022', 30)
SET IDENTITY_INSERT [dbo].[TBLBUS] OFF
GO
SET IDENTITY_INSERT [dbo].[TBLLOGINS] ON 

INSERT [dbo].[TBLLOGINS] ([ID], [KULLANICI], [SIFRE], [AD], [SOYAD], [MAIL]) VALUES (2, N'bicyap', N'123456', N'Burak', N'Biçyap', N'bicyap@gmail.com')
INSERT [dbo].[TBLLOGINS] ([ID], [KULLANICI], [SIFRE], [AD], [SOYAD], [MAIL]) VALUES (3, N'cmylmz', N'komikadam', N'Cem', N'Yılmaz', N'abc@gmail.com')
INSERT [dbo].[TBLLOGINS] ([ID], [KULLANICI], [SIFRE], [AD], [SOYAD], [MAIL]) VALUES (6, N'kova', N'kk123', N'İsmail', N'Çipe', N'kütükdahaiyi@gmail.com')
INSERT [dbo].[TBLLOGINS] ([ID], [KULLANICI], [SIFRE], [AD], [SOYAD], [MAIL]) VALUES (7, N'zfralgoz', N'asdfgh', N'Zafer', N'Algöz', N'algoz@hotmail.com')
SET IDENTITY_INSERT [dbo].[TBLLOGINS] OFF
GO
