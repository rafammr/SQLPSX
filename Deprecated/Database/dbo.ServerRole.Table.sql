/****** Object:  Table [dbo].[ServerRole]    Script Date: 07/09/2008 12:08:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ServerRole]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ServerRole](
	[members] [xml] NULL,
	[Server] [varchar](255) NULL,
	[Name] [varchar](255) NULL,
	[timestamp] [datetime] NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[ServerRole]') AND name = N'IX_ServerRole')
CREATE CLUSTERED INDEX [IX_ServerRole] ON [dbo].[ServerRole] 
(
	[timestamp] ASC,
	[Server] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
