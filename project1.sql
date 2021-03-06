create database [project1]
USE [project1]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 12/28/2020 5:52:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[uID] [int] IDENTITY(1,1) NOT NULL,
	[user] [varchar](255) NULL,
	[pass] [varchar](255) NULL,
	[isSell] [int] NULL,
	[isAdmin] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[uID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cart]    Script Date: 12/28/2020 5:52:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cart](
	[AccountID] [int] NULL,
	[ProductID] [int] NULL,
	[Amount] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 12/28/2020 5:52:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[cid] [int] NOT NULL,
	[cname] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[cid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product]    Script Date: 12/28/2020 5:52:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](max) NULL,
	[image] [nvarchar](max) NULL,
	[price] [money] NULL,
	[title] [nvarchar](max) NULL,
	[description] [nvarchar](max) NULL,
	[cateID] [int] NULL,
	[sell_ID] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Account] ON 

INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (1, N'Adam', N'123456', 1, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (2, N'Anjolie', N'SNZ6HE', 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (3, N'Ferris', N'RXH3XJ', 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (4, N'Katell', N'HWV8ZN', 0, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (5, N'Zahir', N'NPX7OF', 1, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (6, N'Conan', N'WIZ5VZ', 1, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (7, N'Cade', N'ZSW2LU', 1, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (8, N'Micah', N'RVV5SR', 0, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (9, N'Rowan', N'VAI6XR', 1, 1)
SET IDENTITY_INSERT [dbo].[Account] OFF
INSERT [dbo].[Category] ([cid], [cname]) VALUES (1, N'ĐỒ ĂN')
INSERT [dbo].[Category] ([cid], [cname]) VALUES (2, N'ĐỒ UỐNG')
INSERT [dbo].[Category] ([cid], [cname]) VALUES (3, N'ĐỒ CHAY')
INSERT [dbo].[Category] ([cid], [cname]) VALUES (4, N'TRÁNG MIỆNG')
SET IDENTITY_INSERT [dbo].[product] ON 

INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (1, N'Cơm Ngọc Bích - Cơm Gà & Cơm Sườn', N'https://images.foody.vn/res/g97/964132/prof/s640x400/image-db451904-200910115823.jpeg', 41.000, N'Ki Ốt 9 CT1 B1 KĐT Xa La, Hà Đông, Hà Nội',N'5 sao', 1, 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (2, N'Trà Sữa Tocotoco - Thượng Đình', N'https://images.foody.vn/res/g71/702021/prof/s280x175/foody-mobile-23376408_54246046275.jpg', 48.000, N'256 Thượng Đình, Thanh Xuân, Hà Nội',N'5 sao', 2, 6)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (3, N'Thế Giới Ăn Vặt - Ăn Vặt - Trần Thái Tông', N'https://images.foody.vn/res/g100004/1000030689/prof/s640x400/file_restaurant_photo_bsu0_16266-ac62908b-210719165724.jpg', 100.000, N'25 Ngõ 45 Trần Thái Tông,P. Dịch Vọng, Cầu Giấy, Hà Nội',N'5 sao', 1, 7)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (4, N'Phúc Long Trần Đại Nghĩa', N'https://images.foody.vn/res/g99/980195/prof/s280x175/foody-upload-api-foody-mobile-foody-upload-api-foo-191114152713.jpg', 49.000, N'69 Trần Đại Nghĩa, P. Bách Khoa, Hai Bà Trưng, Hà Nội',N'5 sao', 2, 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (5, N'Xôi Hiệp Hòa - Đê La Thành', N'https://images.foody.vn/res/g2/19069/prof/s280x175/foody-mobile-xoi-ran2-jpg-227-635775001980948985.jpg', 20.000, N'415 Đê La Thành, P. Thành Công, Ba Đình, Hà Nội',N'5 sao', 1, 6)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (6, N'The Alley - Trà Sữa Đài Loan ', N'https://images.foody.vn/res/g73/726012/prof/s280x175/foody-upload-api-foody-mobile-alley-jpg-180321161335.jpg', 40.000, N'23 Trung Hòa, Cầu Giấy, Hà Nội',N'5 sao', 2, 7)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (7, N'Gà Rán Popeyes - TTTM D2 Giảng Võ ', N'https://images.foody.vn/res/g12/111511/prof/s280x175/foody-upload-api-foody-mobile-co-cf620bbc-210612103035.jpeg', 50.000, N'Tầng 1, TTTM D2 Giảng Võ, Ba Đình, Hà Nội',N'5 sao', 1, 14)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (8, N'Tiệm Bánh Cầu Vồng - Bánh Kem & Bánh Ngọt', N'https://images.foody.vn/res/g113/1121691/prof/s640x400/file_restaurant_photo_cmto_16431-1d50c63f-220126130654.jpeg', 79.000, N'110 Nguyễn Thái Học, P. Điện Biên, Ba Đình, Hà Nội',N'5 sao', 4, 15)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (9, N'Cơm Chay Tuệ Tâm - Kim Giang', N'https://images.foody.vn/res/g112/1111679/prof/s640x400/foody-upload-api-foody-mobile-fo-a224a9f6-211018150402.jpeg', 50.000, N'77 Ngõ 64 Kim Giang, P. Đại Kim, Hoàng Mai, Hà Nội',N'5 sao', 3, 14)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (10, N'Tiệm Bánh Emoji - Bông Lan Trứng Muối', N'https://images.foody.vn/res/g88/875531/prof/s640x400/image-31a0bc76-200908105306.jpeg', 100.000, N'78 Cầu Giấy, P. Quan Hoa, Cầu Giấy, Hà Nội',N'5 sao', 4, 15)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (11, N'My Healthy Corner - Shop Online - Nguyễn Khang', N'https://images.foody.vn/res/g105/1044905/prof/s640x400/foody-upload-api-foody-mobile-81260489_11059214712-200831183058.jpg', 35.000, N'175B Nguyễn Khang, Cầu Giấy, Hà Nội',N'5 sao', 3, 17)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (12, N'Bếp Của Ni - Đồ Ăn Healthy & Eat Clean', N'https://images.foody.vn/res/g106/1058449/prof/s640x400/file_restaurant_photo_poay_16076-b51b6169-201211124521.jpg', 58.000, N'4 Ngõ 226 Định Công, P. Định Công, Hoàng Mai, Hà Nội',N'5 sao', 3, 19)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (13, N'Chero Buns - Bánh Bao Tươi', N'https://images.foody.vn/res/g109/1080759/prof/s750x400/foody-upload-api-foody-mobile-fo-28462a5b-210531093215.jpeg', 26.000, N'Nhà N11A Cầu Thang 2, Ngõ 123 Trần Đăng Ninh, Cầu Giấy, Hà Nội',N'5 sao', 3, 18)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (14, N'Bánh Tráng Trộn & Bánh Tráng Nướng', N'https://images.foody.vn/res/g105/1044891/prof/s750x400/foody-upload-api-foody-mobile-e1-200831173909.jpg', 20.000, N'1 Ngõ 84 Chùa Láng, P. Láng Thượng, Đống Đa, Hà Nội',N'5 sao', 4, 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (15, N'Chè Ngon Hà Đông - Quán Ăn Vặt', N'https://images.foody.vn/res/g67/667242/prof/s640x400/foody-mobile-67-jpg-431-636332088557631807.jpg', 16.000, N'36 Cầu Am, Vạn Phúc, Hà Đông, Hà Nội',N'5 sao', 4, 6)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (16, N'KOI Thé - Big C Thăng Long', N'https://images.foody.vn/res/g105/1045049/prof/s640x400/image-9fb8268b-220103124211.jpeg', 67.000, N'Tầng Trệt, Tầng Trệt, Gian Hàng 21 Big C Thăng Long, 222 Trần Duy Hưng, P. Trung Hòa, Cầu Giấy, Hà Nội',N'5 sao', 4, 7)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (17, N'Chay An Lạc - Cơm Chay Văn Phòng - Trung Kính', N'https://images.foody.vn/res/g100004/1000034034/prof/s640x400/file_restaurant_photo_g5gu_16347-77da32dc-211020233706.jpg', 50.000, N'Tập Thể Nhạc Viện 22 Ngõ 125 Trung Kính, P. Trung Hoà, Cầu Giấy, Hà Nội',N'5 sao', 3, 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (18, N'Quán Chay HAAN - Đào Tấn', N'https://images.foody.vn/res/g111/1103512/prof/s640x400/file_restaurant_photo_tztn_16321-c131f83c-210920135931.jpg', 65.000, N'71 Đào Tấn, P. Ngọc Khánh, Ba Đình, Hà Nội',N'5 sao', 3, 7)
SET IDENTITY_INSERT [dbo].[product] OFF