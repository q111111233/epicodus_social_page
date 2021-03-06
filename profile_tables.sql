create epicodex
USE [epicodex]
GO
/****** Object:  Table [dbo].[comfortlvls]    Script Date: 7/27/2016 4:06:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[comfortlvls](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[lvl] [varchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[comments]    Script Date: 7/27/2016 4:06:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[comments](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[comment_body] [text] NULL,
	[message_Id] [int] NULL,
	[profile_id] [int] NULL,
	[total_likes] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[hobbies]    Script Date: 7/27/2016 4:06:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[hobbies](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[languages]    Script Date: 7/27/2016 4:06:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[languages](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[messages_posts]    Script Date: 7/27/2016 4:06:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[messages_posts](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[body] [text] NULL,
	[profile_id] [int] NULL,
	[title] [varchar](255) NULL,
	[timestamp] [datetime] NULL,
	[type_id] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[messages_subhobbies]    Script Date: 7/27/2016 4:07:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[messages_subhobbies](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[message_id] [int] NULL,
	[subhobby_id] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[messages_types]    Script Date: 7/27/2016 4:07:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[messages_types](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[profile_subhobby]    Script Date: 7/27/2016 4:07:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[profile_subhobby](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[profile_id] [int] NULL,
	[subhobby_id] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[profiles]    Script Date: 7/27/2016 4:07:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[profiles](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ei] [bit] NULL,
	[email] [varchar](255) NULL,
	[enrollment] [int] NULL,
	[experience] [int] NULL,
	[github] [varchar](255) NULL,
	[home] [varchar](255) NULL,
	[linkedin] [varchar](255) NULL,
	[ns] [bit] NULL,
	[pj] [bit] NULL,
	[portland] [int] NULL,
	[style] [int] NULL,
	[tf] [bit] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[styles]    Script Date: 7/27/2016 4:07:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[styles](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[subhobbies]    Script Date: 7/27/2016 4:07:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[subhobbies](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[hobby_id] [int] NULL,
	[name] [varchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[comfortlvls] ON 

INSERT [dbo].[comfortlvls] ([id], [lvl]) VALUES (1, N'beginner')
INSERT [dbo].[comfortlvls] ([id], [lvl]) VALUES (2, N'intermediate')
INSERT [dbo].[comfortlvls] ([id], [lvl]) VALUES (3, N'advanced')
SET IDENTITY_INSERT [dbo].[comfortlvls] OFF
SET IDENTITY_INSERT [dbo].[hobbies] ON 

INSERT [dbo].[hobbies] ([id], [name]) VALUES (1, N'games')
INSERT [dbo].[hobbies] ([id], [name]) VALUES (2, N'movies')
INSERT [dbo].[hobbies] ([id], [name]) VALUES (3, N'pets')
SET IDENTITY_INSERT [dbo].[hobbies] OFF
SET IDENTITY_INSERT [dbo].[languages] ON 

INSERT [dbo].[languages] ([id], [name]) VALUES (1, N'intro')
INSERT [dbo].[languages] ([id], [name]) VALUES (2, N'ruby')
INSERT [dbo].[languages] ([id], [name]) VALUES (3, N'php')
INSERT [dbo].[languages] ([id], [name]) VALUES (4, N'java')
INSERT [dbo].[languages] ([id], [name]) VALUES (5, N'csharp')
INSERT [dbo].[languages] ([id], [name]) VALUES (6, N'javascript')
INSERT [dbo].[languages] ([id], [name]) VALUES (7, N'css')
INSERT [dbo].[languages] ([id], [name]) VALUES (8, N'design')
INSERT [dbo].[languages] ([id], [name]) VALUES (9, N'rails')
INSERT [dbo].[languages] ([id], [name]) VALUES (10, N'drupal')
INSERT [dbo].[languages] ([id], [name]) VALUES (11, N'android')
INSERT [dbo].[languages] ([id], [name]) VALUES (12, N'net')
SET IDENTITY_INSERT [dbo].[languages] OFF
SET IDENTITY_INSERT [dbo].[messages_posts] ON 

INSERT [dbo].[messages_posts] ([id], [body], [profile_id], [title], [timestamp], [type_id]) VALUES (1, N'Today Tony Roma will speak on site design for his rib web site.', 1, N'Speaker Today', CAST(N'2016-07-28T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[messages_posts] ([id], [body], [profile_id], [title], [timestamp], [type_id]) VALUES (2, N'I get the following error:  Object not set to an instance of the object.  Please help!!!!!!!', 2, N'CS 2088', CAST(N'2016-07-27T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[messages_posts] ([id], [body], [profile_id], [title], [timestamp], [type_id]) VALUES (3, N'I''ll be out of town this weekend.  I need to find someone to feed my 27 cats.', 3, N'Cat sitter needed', CAST(N'2016-07-26T00:00:00.000' AS DateTime), 4)
SET IDENTITY_INSERT [dbo].[messages_posts] OFF
SET IDENTITY_INSERT [dbo].[messages_subhobbies] ON 

INSERT [dbo].[messages_subhobbies] ([id], [message_id], [subhobby_id]) VALUES (1, 3, 12)
SET IDENTITY_INSERT [dbo].[messages_subhobbies] OFF
SET IDENTITY_INSERT [dbo].[messages_types] ON 

INSERT [dbo].[messages_types] ([id], [name]) VALUES (1, N'Announcement')
INSERT [dbo].[messages_types] ([id], [name]) VALUES (2, N'Burning Question and Answer')
INSERT [dbo].[messages_types] ([id], [name]) VALUES (3, N'Off Topic')
INSERT [dbo].[messages_types] ([id], [name]) VALUES (4, N'Hobbies and Pets')
INSERT [dbo].[messages_types] ([id], [name]) VALUES (5, N'Class Resource')
INSERT [dbo].[messages_types] ([id], [name]) VALUES (6, N'Language Resource')
SET IDENTITY_INSERT [dbo].[messages_types] OFF
SET IDENTITY_INSERT [dbo].[profiles] ON 

INSERT [dbo].[profiles] ([id], [ei], [email], [enrollment], [experience], [github], [home], [linkedin], [ns], [pj], [portland], [style], [tf]) VALUES (1, 1, N'paulblart@gmail.com', 5, 2, N'paul', N'Cleveland', N'paul', 0, 1, 1, 2, 0)
INSERT [dbo].[profiles] ([id], [ei], [email], [enrollment], [experience], [github], [home], [linkedin], [ns], [pj], [portland], [style], [tf]) VALUES (2, 1, N'missy@gmail.com', 5, 2, N'missy', N'Boston', N'missy', 0, 0, 2, 2, 0)
INSERT [dbo].[profiles] ([id], [ei], [email], [enrollment], [experience], [github], [home], [linkedin], [ns], [pj], [portland], [style], [tf]) VALUES (3, 0, N'nancy@gmail.com', 5, 1, N'nancy', N'Seattle', N'nancy', 1, 1, 2, 3, 0)
INSERT [dbo].[profiles] ([id], [ei], [email], [enrollment], [experience], [github], [home], [linkedin], [ns], [pj], [portland], [style], [tf]) VALUES (4, 1, N'elliot@gmail.com', 5, 3, N'elliot', N'Eugene', N'elliot', 0, 1, 3, 1, 0)
INSERT [dbo].[profiles] ([id], [ei], [email], [enrollment], [experience], [github], [home], [linkedin], [ns], [pj], [portland], [style], [tf]) VALUES (5, 1, N'kit@gmail.com', 5, 3, N'kit', N'Orlando', N'kit', 0, 0, 1, 1, 0)
INSERT [dbo].[profiles] ([id], [ei], [email], [enrollment], [experience], [github], [home], [linkedin], [ns], [pj], [portland], [style], [tf]) VALUES (6, 0, N'pete@gmail.com', 5, 1, N'pete', N'New York City', N'pete', 1, 1, 1, 1, 0)
INSERT [dbo].[profiles] ([id], [ei], [email], [enrollment], [experience], [github], [home], [linkedin], [ns], [pj], [portland], [style], [tf]) VALUES (7, 1, N'sam@gmail.com', 5, 1, N'sam', N'Portland', N'sam', 0, 0, 4, 2, 0)
INSERT [dbo].[profiles] ([id], [ei], [email], [enrollment], [experience], [github], [home], [linkedin], [ns], [pj], [portland], [style], [tf]) VALUES (8, 0, N'mae@gmail.com', 5, 2, N'mae', N'Portland', N'mae', 1, 1, 4, 1, 1)
INSERT [dbo].[profiles] ([id], [ei], [email], [enrollment], [experience], [github], [home], [linkedin], [ns], [pj], [portland], [style], [tf]) VALUES (9, 0, N'kate@gmail.com', 6, 3, N'kate', N'Helena', N'kate', 0, 0, 2, 1, 0)
INSERT [dbo].[profiles] ([id], [ei], [email], [enrollment], [experience], [github], [home], [linkedin], [ns], [pj], [portland], [style], [tf]) VALUES (10, 1, N'pat@gmail.com', 6, 2, N'pat', N'Tampa', N'pat', 1, 1, 2, 2, 1)
INSERT [dbo].[profiles] ([id], [ei], [email], [enrollment], [experience], [github], [home], [linkedin], [ns], [pj], [portland], [style], [tf]) VALUES (11, 1, N'phil@gmail.com', 5, 2, N'phil', N'Columbus', N'phil', 0, 1, 1, 2, 0)
INSERT [dbo].[profiles] ([id], [ei], [email], [enrollment], [experience], [github], [home], [linkedin], [ns], [pj], [portland], [style], [tf]) VALUES (12, 1, N'tim@gmail.com', 5, 2, N'tim', N'Houston', N'tim', 0, 1, 1, 2, 0)
INSERT [dbo].[profiles] ([id], [ei], [email], [enrollment], [experience], [github], [home], [linkedin], [ns], [pj], [portland], [style], [tf]) VALUES (13, 1, N'bethany@gmail.com', 5, 2, N'bethany', N'Calgary', N'bethany', 1, 1, 1, 2, 1)
INSERT [dbo].[profiles] ([id], [ei], [email], [enrollment], [experience], [github], [home], [linkedin], [ns], [pj], [portland], [style], [tf]) VALUES (14, 0, N'allen@gmail.com', 6, 3, N'allen', N'Garden View', N'allen', 0, 0, 2, 1, 0)
INSERT [dbo].[profiles] ([id], [ei], [email], [enrollment], [experience], [github], [home], [linkedin], [ns], [pj], [portland], [style], [tf]) VALUES (15, 1, N'pat@gmail.com', 6, 2, N'yeardly', N'Chicago', N'yeardly', 0, 1, 2, 2, 0)
SET IDENTITY_INSERT [dbo].[profiles] OFF
SET IDENTITY_INSERT [dbo].[styles] ON 

INSERT [dbo].[styles] ([id], [name]) VALUES (1, N'audio')
INSERT [dbo].[styles] ([id], [name]) VALUES (2, N'visual')
SET IDENTITY_INSERT [dbo].[styles] OFF
SET IDENTITY_INSERT [dbo].[subhobbies] ON 

INSERT [dbo].[subhobbies] ([id], [hobby_id], [name]) VALUES (1, 1, N'tabletop')
INSERT [dbo].[subhobbies] ([id], [hobby_id], [name]) VALUES (2, 1, N'video')
INSERT [dbo].[subhobbies] ([id], [hobby_id], [name]) VALUES (3, 1, N'playingcard')
INSERT [dbo].[subhobbies] ([id], [hobby_id], [name]) VALUES (4, 1, N'mobile')
INSERT [dbo].[subhobbies] ([id], [hobby_id], [name]) VALUES (7, 2, N'action')
INSERT [dbo].[subhobbies] ([id], [hobby_id], [name]) VALUES (8, 2, N'drama')
INSERT [dbo].[subhobbies] ([id], [hobby_id], [name]) VALUES (9, 2, N'comedy')
INSERT [dbo].[subhobbies] ([id], [hobby_id], [name]) VALUES (10, 2, N'documentary')
INSERT [dbo].[subhobbies] ([id], [hobby_id], [name]) VALUES (11, 3, N'dog')
INSERT [dbo].[subhobbies] ([id], [hobby_id], [name]) VALUES (12, 3, N'cat')
INSERT [dbo].[subhobbies] ([id], [hobby_id], [name]) VALUES (13, 3, N'reptile')
INSERT [dbo].[subhobbies] ([id], [hobby_id], [name]) VALUES (14, 3, N'rodent')
INSERT [dbo].[subhobbies] ([id], [hobby_id], [name]) VALUES (15, 3, N'bird')
INSERT [dbo].[subhobbies] ([id], [hobby_id], [name]) VALUES (16, 3, N'other')
SET IDENTITY_INSERT [dbo].[subhobbies] OFF
