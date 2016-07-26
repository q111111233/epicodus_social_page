USE [Codex]
GO
/****** Object:  Table [dbo].[enrollement]    Script Date: 7/26/2016 10:08:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[enrollement](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ruby] [int] NULL,
	[php] [int] NULL,
	[java] [int] NULL,
	[csharp] [int] NULL,
	[javascript] [int] NULL,
	[css] [int] NULL,
	[design] [int] NULL,
	[rails] [int] NULL,
	[drupal] [int] NULL,
	[android] [int] NULL,
	[net] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[games]    Script Date: 7/26/2016 10:08:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[games](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[games_subcategory]    Script Date: 7/26/2016 10:08:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[games_subcategory](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tabletop] [varchar](255) NULL,
	[playingcard] [varchar](255) NULL,
	[video] [varchar](255) NULL,
	[mobile] [varchar](255) NULL,
	[other] [varchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[myers_briggs]    Script Date: 7/26/2016 10:08:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[myers_briggs](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ei] [bit] NULL,
	[ns] [bit] NULL,
	[tf] [bit] NULL,
	[pj] [bit] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[pets]    Script Date: 7/26/2016 10:08:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[pets](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[pets_subcategory]    Script Date: 7/26/2016 10:08:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[pets_subcategory](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[dog] [varchar](255) NULL,
	[cat] [varchar](255) NULL,
	[reptile] [varchar](255) NULL,
	[rodent] [varchar](255) NULL,
	[bird] [varchar](255) NULL,
	[nopet] [varchar](255) NULL,
	[other] [varchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[profile]    Script Date: 7/26/2016 10:08:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[profile](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[experience] [int] NULL,
	[style] [int] NULL,
	[portland] [int] NULL,
	[home] [varchar](255) NULL,
	[github] [varchar](255) NULL,
	[linkedin] [varchar](255) NULL,
	[email] [varchar](255) NULL,
	[enrollment] [varchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
