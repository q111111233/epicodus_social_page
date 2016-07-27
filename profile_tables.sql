USE [epicodex]
GO
/****** Object:  Table [dbo].[comfortlvls]    Script Date: 7/27/2016 1:25:01 PM ******/
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
/****** Object:  Table [dbo].[comments]    Script Date: 7/27/2016 1:25:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[comments](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[comment_body] [text] NULL,
	[message_Id] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[hobbies]    Script Date: 7/27/2016 1:25:02 PM ******/
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
/****** Object:  Table [dbo].[languages]    Script Date: 7/27/2016 1:25:02 PM ******/
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
/****** Object:  Table [dbo].[messages_posts]    Script Date: 7/27/2016 1:25:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[messages_posts](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [varchar](255) NULL,
	[body] [text] NULL,
	[type_id] [int] NULL,
	[timestamp] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[messages_subhobbies]    Script Date: 7/27/2016 1:25:02 PM ******/
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
/****** Object:  Table [dbo].[messages_types]    Script Date: 7/27/2016 1:25:02 PM ******/
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
/****** Object:  Table [dbo].[profile_subhobby]    Script Date: 7/27/2016 1:25:02 PM ******/
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
/****** Object:  Table [dbo].[profiles]    Script Date: 7/27/2016 1:25:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[profiles](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[experience] [int] NULL,
	[style] [int] NULL,
	[enrollment] [int] NULL,
	[portland] [int] NULL,
	[home] [varchar](255) NULL,
	[github] [varchar](255) NULL,
	[linkedin] [varchar](255) NULL,
	[email] [varchar](255) NULL,
	[ei] [bit] NULL,
	[ns] [bit] NULL,
	[tf] [bit] NULL,
	[pj] [bit] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[styles]    Script Date: 7/27/2016 1:25:02 PM ******/
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
/****** Object:  Table [dbo].[subhobbies]    Script Date: 7/27/2016 1:25:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[subhobbies](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](255) NULL,
	[hobby_id] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
