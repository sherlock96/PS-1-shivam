USE [revide]
GO
/****** Object:  Table [dbo].[Videos]    Script Date: 07/12/2016 12:47:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Videos](
	[ID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[Title] [varchar](50) NOT NULL,
	[FullTitle] [varchar](50) NOT NULL,
	[PosterSrc] [varchar](100) NULL,
	[Language] [varchar](50) NOT NULL,
	[ReleaseDate] [datetime] NULL,
	[Genre] [varchar](50) NOT NULL,
	[Overall_rating] [nchar](10) NULL,
	[AdultRating] [varchar](5) NOT NULL,
	[Synopsis] [nchar](500) NULL,
	[Type] [nchar](10) NULL,
 CONSTRAINT [PK_Videos] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[User]    Script Date: 07/12/2016 12:47:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[User](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[RoleID] [int] NOT NULL,
	[Username] [varchar](50) NOT NULL,
	[LoginID] [varchar](50) NOT NULL,
	[Password] [varchar](50) NOT NULL,
	[IsActive] [int] NULL,
	[UpdatedOn] [datetime] NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Default [DF_User_IsActive]    Script Date: 07/12/2016 12:47:31 ******/
ALTER TABLE [dbo].[User] ADD  CONSTRAINT [DF_User_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
/****** Object:  Default [DF_User_UpdatedOn]    Script Date: 07/12/2016 12:47:31 ******/
ALTER TABLE [dbo].[User] ADD  CONSTRAINT [DF_User_UpdatedOn]  DEFAULT (getdate()) FOR [UpdatedOn]
GO
/****** Object:  Default [DF_Videos_PosterSrc]    Script Date: 07/12/2016 12:47:31 ******/
ALTER TABLE [dbo].[Videos] ADD  CONSTRAINT [DF_Videos_PosterSrc]  DEFAULT ('Source Not Found') FOR [PosterSrc]
GO
/****** Object:  Default [DF_Videos_ReleaseDate]    Script Date: 07/12/2016 12:47:31 ******/
ALTER TABLE [dbo].[Videos] ADD  CONSTRAINT [DF_Videos_ReleaseDate]  DEFAULT (getdate()) FOR [ReleaseDate]
GO
/****** Object:  Default [DF_Videos_Type]    Script Date: 07/12/2016 12:47:31 ******/
ALTER TABLE [dbo].[Videos] ADD  CONSTRAINT [DF_Videos_Type]  DEFAULT ('movie') FOR [Type]
GO
