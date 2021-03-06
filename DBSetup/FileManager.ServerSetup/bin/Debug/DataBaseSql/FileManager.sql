 
USE [FileManager]
GO
/****** Object:  Table [dbo].[FM_UserRole]    Script Date: 08/14/2015 23:20:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FM_UserRole]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[FM_UserRole](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [varchar](200) NULL,
	[RoleType] [varbinary](200) NULL,
	[IsSys] [tinyint] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FM_UserProject]    Script Date: 08/14/2015 23:20:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FM_UserProject]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[FM_UserProject](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](100) NOT NULL,
	[IsLock] [tinyint] NULL,
	[ProjectName] [varchar](100) NOT NULL,
	[ClientIp] [varchar](100) NULL,
	[MonitoringPath] [varchar](1000) NOT NULL,
	[MonitoringSoftwareName] [varchar](100) NOT NULL,
	[AddTime] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[FM_UserProject] ON
INSERT [dbo].[FM_UserProject] ([ID], [UserName], [IsLock], [ProjectName], [ClientIp], [MonitoringPath], [MonitoringSoftwareName], [AddTime]) VALUES (4, N'Administrator', 0, N'工程二', N'127.0.0.1', N'E:\C#WINFORM_2015\私单资料准备\工程二', N'notepad.exe', CAST(0x0000A49D0155007C AS DateTime))
SET IDENTITY_INSERT [dbo].[FM_UserProject] OFF
/****** Object:  Table [dbo].[FM_UserLog]    Script Date: 08/14/2015 23:20:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FM_UserLog]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[FM_UserLog](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [varchar](100) NULL,
	[UserName] [varchar](100) NOT NULL,
	[UserRealName] [varchar](100) NOT NULL,
	[ActionType] [varchar](100) NULL,
	[ActionName] [varchar](100) NULL,
	[Remark] [varchar](100) NULL,
	[Ip] [varchar](100) NULL,
	[ProjectID] [int] NULL,
	[ProjectName] [varchar](100) NULL,
	[ProjectPath] [varchar](2000) NULL,
	[ClientPath] [varchar](2000) NULL,
	[AddTime] [datetime] NULL,
	[ActionCode] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[FM_UserLog] ON
INSERT [dbo].[FM_UserLog] ([ID], [UserID], [UserName], [UserRealName], [ActionType], [ActionName], [Remark], [Ip], [ProjectID], [ProjectName], [ProjectPath], [ClientPath], [AddTime], [ActionCode]) VALUES (380, N'1', N'Administrator', N'张三测试', N'ALLUPLOAD', N'一键上传', NULL, N'192.168.0.106', 4, N'工程二', NULL, N'E:\C#WINFORM_2015\私单资料准备\工程二', CAST(0x0000A4EA016CBF44 AS DateTime), NULL)
INSERT [dbo].[FM_UserLog] ([ID], [UserID], [UserName], [UserRealName], [ActionType], [ActionName], [Remark], [Ip], [ProjectID], [ProjectName], [ProjectPath], [ClientPath], [AddTime], [ActionCode]) VALUES (381, N'1', N'Administrator', N'张三测试', N'ALLUPLOAD', N'一键上传', NULL, N'192.168.0.106', 4, N'工程二', NULL, N'E:\C#WINFORM_2015\私单资料准备\工程二', CAST(0x0000A4EA016D21B9 AS DateTime), NULL)
INSERT [dbo].[FM_UserLog] ([ID], [UserID], [UserName], [UserRealName], [ActionType], [ActionName], [Remark], [Ip], [ProjectID], [ProjectName], [ProjectPath], [ClientPath], [AddTime], [ActionCode]) VALUES (382, N'1', N'Administrator', N'张三测试', N'ALLUPLOAD', N'一键上传', NULL, N'192.168.0.106', 4, N'工程二', NULL, N'E:\C#WINFORM_2015\私单资料准备\工程二', CAST(0x0000A4EA016EC3CA AS DateTime), NULL)
INSERT [dbo].[FM_UserLog] ([ID], [UserID], [UserName], [UserRealName], [ActionType], [ActionName], [Remark], [Ip], [ProjectID], [ProjectName], [ProjectPath], [ClientPath], [AddTime], [ActionCode]) VALUES (383, N'1', N'Administrator', N'张三测试', N'ALLUPLOAD', N'一键上传', NULL, N'192.168.0.106', 4, N'工程二', NULL, N'E:\C#WINFORM_2015\私单资料准备\工程二', CAST(0x0000A4EA016FE783 AS DateTime), NULL)
INSERT [dbo].[FM_UserLog] ([ID], [UserID], [UserName], [UserRealName], [ActionType], [ActionName], [Remark], [Ip], [ProjectID], [ProjectName], [ProjectPath], [ClientPath], [AddTime], [ActionCode]) VALUES (384, N'1', N'Administrator', N'张三测试', N'ALLUPLOAD', N'一键上传', NULL, N'192.168.0.106', 4, N'工程二', NULL, N'E:\C#WINFORM_2015\私单资料准备\工程二', CAST(0x0000A4EA0170426A AS DateTime), NULL)
INSERT [dbo].[FM_UserLog] ([ID], [UserID], [UserName], [UserRealName], [ActionType], [ActionName], [Remark], [Ip], [ProjectID], [ProjectName], [ProjectPath], [ClientPath], [AddTime], [ActionCode]) VALUES (385, N'1', N'Administrator', N'张三测试', N'ALLUPLOAD', N'一键上传', NULL, N'192.168.0.106', 4, N'工程二', NULL, N'E:\C#WINFORM_2015\私单资料准备\工程二', CAST(0x0000A4EA017076EC AS DateTime), NULL)
INSERT [dbo].[FM_UserLog] ([ID], [UserID], [UserName], [UserRealName], [ActionType], [ActionName], [Remark], [Ip], [ProjectID], [ProjectName], [ProjectPath], [ClientPath], [AddTime], [ActionCode]) VALUES (386, N'1', N'Administrator', N'张三测试', N'ALLUPLOAD', N'一键上传', NULL, N'192.168.0.106', 4, N'工程二', NULL, N'E:\C#WINFORM_2015\私单资料准备\工程二', CAST(0x0000A4EA0171429A AS DateTime), NULL)
INSERT [dbo].[FM_UserLog] ([ID], [UserID], [UserName], [UserRealName], [ActionType], [ActionName], [Remark], [Ip], [ProjectID], [ProjectName], [ProjectPath], [ClientPath], [AddTime], [ActionCode]) VALUES (387, N'1', N'Administrator', N'张三测试', N'ALLUPLOAD', N'一键上传', NULL, N'192.168.0.106', 4, N'工程二', NULL, N'E:\C#WINFORM_2015\私单资料准备\工程二', CAST(0x0000A4EA017A5C82 AS DateTime), NULL)
INSERT [dbo].[FM_UserLog] ([ID], [UserID], [UserName], [UserRealName], [ActionType], [ActionName], [Remark], [Ip], [ProjectID], [ProjectName], [ProjectPath], [ClientPath], [AddTime], [ActionCode]) VALUES (388, N'1', N'Administrator', N'张三测试', N'ALLUPLOAD', N'一键上传', NULL, N'192.168.0.106', 4, N'工程二', NULL, N'E:\C#WINFORM_2015\私单资料准备\工程二', CAST(0x0000A4EA017AD3FD AS DateTime), NULL)
INSERT [dbo].[FM_UserLog] ([ID], [UserID], [UserName], [UserRealName], [ActionType], [ActionName], [Remark], [Ip], [ProjectID], [ProjectName], [ProjectPath], [ClientPath], [AddTime], [ActionCode]) VALUES (389, N'1', N'Administrator', N'张三测试', N'ALLUPLOAD', N'一键上传', NULL, N'192.168.0.106', 4, N'工程二', NULL, N'E:\C#WINFORM_2015\私单资料准备\工程二', CAST(0x0000A4EA017B0592 AS DateTime), NULL)
INSERT [dbo].[FM_UserLog] ([ID], [UserID], [UserName], [UserRealName], [ActionType], [ActionName], [Remark], [Ip], [ProjectID], [ProjectName], [ProjectPath], [ClientPath], [AddTime], [ActionCode]) VALUES (390, N'1', N'Administrator', N'张三测试', N'ALLUPLOAD', N'一键上传', NULL, N'192.168.0.106', 4, N'工程二', NULL, N'E:\C#WINFORM_2015\私单资料准备\工程二', CAST(0x0000A4EA018A67B3 AS DateTime), NULL)
INSERT [dbo].[FM_UserLog] ([ID], [UserID], [UserName], [UserRealName], [ActionType], [ActionName], [Remark], [Ip], [ProjectID], [ProjectName], [ProjectPath], [ClientPath], [AddTime], [ActionCode]) VALUES (391, N'1', N'Administrator', N'张三测试', N'ALLUPLOAD', N'一键上传', NULL, N'192.168.0.106', 4, N'工程二', NULL, N'E:\C#WINFORM_2015\私单资料准备\工程二', CAST(0x0000A4EB0181AF93 AS DateTime), NULL)
INSERT [dbo].[FM_UserLog] ([ID], [UserID], [UserName], [UserRealName], [ActionType], [ActionName], [Remark], [Ip], [ProjectID], [ProjectName], [ProjectPath], [ClientPath], [AddTime], [ActionCode]) VALUES (392, N'1', N'Administrator', N'张三测试', N'ALLUPLOAD', N'一键上传', NULL, N'192.168.0.106', 4, N'工程二', NULL, N'E:\C#WINFORM_2015\私单资料准备\工程二', CAST(0x0000A4EB0181E86D AS DateTime), NULL)
INSERT [dbo].[FM_UserLog] ([ID], [UserID], [UserName], [UserRealName], [ActionType], [ActionName], [Remark], [Ip], [ProjectID], [ProjectName], [ProjectPath], [ClientPath], [AddTime], [ActionCode]) VALUES (393, N'1', N'Administrator', N'张三测试', N'RENAME', N'修改名称', NULL, N'192.168.0.106', 4, N'工程二', NULL, N'E:\C#WINFORM_2015\私单资料准备\工程二', CAST(0x0000A4EB0184697A AS DateTime), NULL)
INSERT [dbo].[FM_UserLog] ([ID], [UserID], [UserName], [UserRealName], [ActionType], [ActionName], [Remark], [Ip], [ProjectID], [ProjectName], [ProjectPath], [ClientPath], [AddTime], [ActionCode]) VALUES (394, N'1', N'Administrator', N'张三测试', N'RENAME', N'修改名称', NULL, N'192.168.0.106', 4, N'工程二', NULL, N'E:\C#WINFORM_2015\私单资料准备\工程二', CAST(0x0000A4EC000211E9 AS DateTime), NULL)
INSERT [dbo].[FM_UserLog] ([ID], [UserID], [UserName], [UserRealName], [ActionType], [ActionName], [Remark], [Ip], [ProjectID], [ProjectName], [ProjectPath], [ClientPath], [AddTime], [ActionCode]) VALUES (395, N'1', N'Administrator', N'张三测试', N'ALLUPLOAD', N'一键上传', NULL, N'192.168.0.106', 4, N'工程二', NULL, N'E:\C#WINFORM_2015\私单资料准备\工程二', CAST(0x0000A4EC000BD208 AS DateTime), NULL)
INSERT [dbo].[FM_UserLog] ([ID], [UserID], [UserName], [UserRealName], [ActionType], [ActionName], [Remark], [Ip], [ProjectID], [ProjectName], [ProjectPath], [ClientPath], [AddTime], [ActionCode]) VALUES (396, N'1', N'Administrator', N'张三测试', N'ONEDELFORDER', N'删除目录', NULL, N'192.168.0.106', 4, N'工程二', NULL, N'E:\C#WINFORM_2015\私单资料准备\工程二', CAST(0x0000A4EC000DF477 AS DateTime), NULL)
INSERT [dbo].[FM_UserLog] ([ID], [UserID], [UserName], [UserRealName], [ActionType], [ActionName], [Remark], [Ip], [ProjectID], [ProjectName], [ProjectPath], [ClientPath], [AddTime], [ActionCode]) VALUES (397, N'1', N'Administrator', N'张三测试', N'ALLUPLOAD', N'一键上传', NULL, N'192.168.0.102', 4, N'工程二', NULL, N'E:\C#WINFORM_2015\私单资料准备\工程二', CAST(0x0000A4EC01840D47 AS DateTime), NULL)
INSERT [dbo].[FM_UserLog] ([ID], [UserID], [UserName], [UserRealName], [ActionType], [ActionName], [Remark], [Ip], [ProjectID], [ProjectName], [ProjectPath], [ClientPath], [AddTime], [ActionCode]) VALUES (398, N'1', N'Administrator', N'张三测试', N'ALLUPLOAD', N'一键上传', NULL, N'192.168.0.102', 4, N'工程二', NULL, N'E:\C#WINFORM_2015\私单资料准备\工程二', CAST(0x0000A4EC01843D51 AS DateTime), NULL)
INSERT [dbo].[FM_UserLog] ([ID], [UserID], [UserName], [UserRealName], [ActionType], [ActionName], [Remark], [Ip], [ProjectID], [ProjectName], [ProjectPath], [ClientPath], [AddTime], [ActionCode]) VALUES (399, N'1', N'Administrator', N'张三测试', N'ALLUPLOAD', N'一键上传', NULL, N'192.168.0.102', 4, N'工程二', NULL, N'E:\C#WINFORM_2015\私单资料准备\工程二', CAST(0x0000A4EC01845533 AS DateTime), NULL)
INSERT [dbo].[FM_UserLog] ([ID], [UserID], [UserName], [UserRealName], [ActionType], [ActionName], [Remark], [Ip], [ProjectID], [ProjectName], [ProjectPath], [ClientPath], [AddTime], [ActionCode]) VALUES (400, N'1', N'Administrator', N'张三测试', N'ALLUPLOAD', N'一键上传', NULL, N'192.168.0.105', 4, N'工程二', NULL, N'E:\C#WINFORM_2015\私单资料准备\工程二', CAST(0x0000A4EE016676C1 AS DateTime), NULL)
INSERT [dbo].[FM_UserLog] ([ID], [UserID], [UserName], [UserRealName], [ActionType], [ActionName], [Remark], [Ip], [ProjectID], [ProjectName], [ProjectPath], [ClientPath], [AddTime], [ActionCode]) VALUES (401, N'1', N'Administrator', N'张三测试', N'ALLUPLOAD', N'一键上传', NULL, N'192.168.0.105', 4, N'工程二', NULL, N'E:\C#WINFORM_2015\私单资料准备\工程二', CAST(0x0000A4EE0169CACA AS DateTime), NULL)
INSERT [dbo].[FM_UserLog] ([ID], [UserID], [UserName], [UserRealName], [ActionType], [ActionName], [Remark], [Ip], [ProjectID], [ProjectName], [ProjectPath], [ClientPath], [AddTime], [ActionCode]) VALUES (402, N'1', N'Administrator', N'张三测试', N'ALLUPLOAD', N'一键上传', NULL, N'192.168.0.105', 4, N'工程二', NULL, N'E:\C#WINFORM_2015\私单资料准备\工程二', CAST(0x0000A4EE016A5CC8 AS DateTime), NULL)
INSERT [dbo].[FM_UserLog] ([ID], [UserID], [UserName], [UserRealName], [ActionType], [ActionName], [Remark], [Ip], [ProjectID], [ProjectName], [ProjectPath], [ClientPath], [AddTime], [ActionCode]) VALUES (403, N'1', N'Administrator', N'张三测试', N'ONEDELFILE', N'删除文件', NULL, N'192.168.0.105', 4, N'工程二', NULL, N'E:\C#WINFORM_2015\私单资料准备\工程二', CAST(0x0000A4EE016C30AC AS DateTime), NULL)
INSERT [dbo].[FM_UserLog] ([ID], [UserID], [UserName], [UserRealName], [ActionType], [ActionName], [Remark], [Ip], [ProjectID], [ProjectName], [ProjectPath], [ClientPath], [AddTime], [ActionCode]) VALUES (404, N'1', N'Administrator', N'张三测试', N'ONEDELFILE', N'删除文件', NULL, N'192.168.0.105', 4, N'工程二', NULL, N'E:\C#WINFORM_2015\私单资料准备\工程二', CAST(0x0000A4EE016C3329 AS DateTime), NULL)
INSERT [dbo].[FM_UserLog] ([ID], [UserID], [UserName], [UserRealName], [ActionType], [ActionName], [Remark], [Ip], [ProjectID], [ProjectName], [ProjectPath], [ClientPath], [AddTime], [ActionCode]) VALUES (405, N'1', N'Administrator', N'张三测试', N'ONEDELFILE', N'删除文件', NULL, N'192.168.0.105', 4, N'工程二', NULL, N'E:\C#WINFORM_2015\私单资料准备\工程二', CAST(0x0000A4EE016C359A AS DateTime), NULL)
INSERT [dbo].[FM_UserLog] ([ID], [UserID], [UserName], [UserRealName], [ActionType], [ActionName], [Remark], [Ip], [ProjectID], [ProjectName], [ProjectPath], [ClientPath], [AddTime], [ActionCode]) VALUES (406, N'1', N'Administrator', N'张三测试', N'ALLUPLOAD', N'一键上传', NULL, N'192.168.0.105', 4, N'工程二', NULL, N'E:\C#WINFORM_2015\私单资料准备\工程二', CAST(0x0000A4EE016E04B5 AS DateTime), NULL)
INSERT [dbo].[FM_UserLog] ([ID], [UserID], [UserName], [UserRealName], [ActionType], [ActionName], [Remark], [Ip], [ProjectID], [ProjectName], [ProjectPath], [ClientPath], [AddTime], [ActionCode]) VALUES (407, N'1', N'Administrator', N'张三测试', N'ALLUPLOAD', N'一键上传', NULL, N'192.168.0.105', 4, N'工程二', NULL, N'E:\C#WINFORM_2015\私单资料准备\工程二', CAST(0x0000A4EE016E2143 AS DateTime), NULL)
INSERT [dbo].[FM_UserLog] ([ID], [UserID], [UserName], [UserRealName], [ActionType], [ActionName], [Remark], [Ip], [ProjectID], [ProjectName], [ProjectPath], [ClientPath], [AddTime], [ActionCode]) VALUES (408, N'1', N'Administrator', N'张三测试', N'ONEDELFILE', N'删除文件', NULL, N'192.168.0.105', 4, N'工程二', NULL, N'E:\C#WINFORM_2015\私单资料准备\工程二', CAST(0x0000A4EE018313D6 AS DateTime), NULL)
INSERT [dbo].[FM_UserLog] ([ID], [UserID], [UserName], [UserRealName], [ActionType], [ActionName], [Remark], [Ip], [ProjectID], [ProjectName], [ProjectPath], [ClientPath], [AddTime], [ActionCode]) VALUES (409, N'1', N'Administrator', N'张三测试', N'ALLUPLOAD', N'一键上传', NULL, N'192.168.0.105', 4, N'工程二', NULL, N'E:\C#WINFORM_2015\私单资料准备\工程二', CAST(0x0000A4EE01831752 AS DateTime), NULL)
INSERT [dbo].[FM_UserLog] ([ID], [UserID], [UserName], [UserRealName], [ActionType], [ActionName], [Remark], [Ip], [ProjectID], [ProjectName], [ProjectPath], [ClientPath], [AddTime], [ActionCode]) VALUES (410, N'1', N'Administrator', N'张三测试', N'ALLUPLOAD', N'一键上传', NULL, N'192.168.0.105', 11, N'工程一', NULL, N'E:\C#WINFORM_2015\私单资料准备\工程一', CAST(0x0000A4EE0183619E AS DateTime), NULL)
INSERT [dbo].[FM_UserLog] ([ID], [UserID], [UserName], [UserRealName], [ActionType], [ActionName], [Remark], [Ip], [ProjectID], [ProjectName], [ProjectPath], [ClientPath], [AddTime], [ActionCode]) VALUES (411, N'1', N'Administrator', N'张三测试', N'ALLDOWNLOAD', N'一键下载', NULL, N'192.168.0.105', 4, N'工程二', NULL, N'E:\C#WINFORM_2015\私单资料准备\工程二', CAST(0x0000A4EE0185F89A AS DateTime), NULL)
INSERT [dbo].[FM_UserLog] ([ID], [UserID], [UserName], [UserRealName], [ActionType], [ActionName], [Remark], [Ip], [ProjectID], [ProjectName], [ProjectPath], [ClientPath], [AddTime], [ActionCode]) VALUES (412, N'1', N'Administrator', N'张三测试', N'ALLDOWNLOAD', N'一键下载', NULL, N'192.168.0.105', 4, N'工程二', NULL, N'E:\C#WINFORM_2015\私单资料准备\工程二', CAST(0x0000A4EE01863838 AS DateTime), NULL)
INSERT [dbo].[FM_UserLog] ([ID], [UserID], [UserName], [UserRealName], [ActionType], [ActionName], [Remark], [Ip], [ProjectID], [ProjectName], [ProjectPath], [ClientPath], [AddTime], [ActionCode]) VALUES (413, N'1', N'Administrator', N'张三测试', N'ALLDOWNLOAD', N'一键下载', NULL, N'192.168.0.105', 4, N'工程二', NULL, N'E:\C#WINFORM_2015\私单资料准备\工程二', CAST(0x0000A4EF0011C4A1 AS DateTime), NULL)
INSERT [dbo].[FM_UserLog] ([ID], [UserID], [UserName], [UserRealName], [ActionType], [ActionName], [Remark], [Ip], [ProjectID], [ProjectName], [ProjectPath], [ClientPath], [AddTime], [ActionCode]) VALUES (414, N'1', N'Administrator', N'张三测试', N'ALLUPLOAD', N'一键上传', NULL, N'192.168.0.105', 4, N'工程二', NULL, N'E:\C#WINFORM_2015\私单资料准备\工程二', CAST(0x0000A4EF0011CD9F AS DateTime), NULL)
INSERT [dbo].[FM_UserLog] ([ID], [UserID], [UserName], [UserRealName], [ActionType], [ActionName], [Remark], [Ip], [ProjectID], [ProjectName], [ProjectPath], [ClientPath], [AddTime], [ActionCode]) VALUES (415, N'1', N'Administrator', N'张三测试', N'ALLDOWNLOAD', N'一键下载', NULL, N'192.168.0.105', 4, N'工程二', NULL, N'E:\C#WINFORM_2015\私单资料准备\工程二', CAST(0x0000A4EF0011DEE5 AS DateTime), NULL)
INSERT [dbo].[FM_UserLog] ([ID], [UserID], [UserName], [UserRealName], [ActionType], [ActionName], [Remark], [Ip], [ProjectID], [ProjectName], [ProjectPath], [ClientPath], [AddTime], [ActionCode]) VALUES (416, N'1', N'Administrator', N'张三测试', N'RENAME', N'修改名称', NULL, N'192.168.0.105', 4, N'工程二', NULL, N'E:\C#WINFORM_2015\私单资料准备\工程二', CAST(0x0000A4EF0011EB6D AS DateTime), NULL)
INSERT [dbo].[FM_UserLog] ([ID], [UserID], [UserName], [UserRealName], [ActionType], [ActionName], [Remark], [Ip], [ProjectID], [ProjectName], [ProjectPath], [ClientPath], [AddTime], [ActionCode]) VALUES (417, N'1', N'Administrator', N'张三测试', N'ALLUPLOAD', N'一键上传', NULL, N'192.168.0.105', 4, N'工程二', NULL, N'E:\C#WINFORM_2015\私单资料准备\工程二', CAST(0x0000A4EF001655CE AS DateTime), NULL)
INSERT [dbo].[FM_UserLog] ([ID], [UserID], [UserName], [UserRealName], [ActionType], [ActionName], [Remark], [Ip], [ProjectID], [ProjectName], [ProjectPath], [ClientPath], [AddTime], [ActionCode]) VALUES (418, N'1', N'Administrator', N'张三测试', N'ALLUPLOAD', N'一键上传', NULL, N'192.168.0.105', 12, N'gongchengyi', NULL, N'E:\C#WINFORM_2015\私单资料准备\工程一', CAST(0x0000A4EF001CEC96 AS DateTime), NULL)
INSERT [dbo].[FM_UserLog] ([ID], [UserID], [UserName], [UserRealName], [ActionType], [ActionName], [Remark], [Ip], [ProjectID], [ProjectName], [ProjectPath], [ClientPath], [AddTime], [ActionCode]) VALUES (419, N'1', N'Administrator', N'张三测试', N'RENAME', N'修改名称', NULL, N'192.168.0.105', 12, N'gongchengyi', NULL, N'E:\C#WINFORM_2015\私单资料准备\工程一', CAST(0x0000A4EF001D380B AS DateTime), NULL)
INSERT [dbo].[FM_UserLog] ([ID], [UserID], [UserName], [UserRealName], [ActionType], [ActionName], [Remark], [Ip], [ProjectID], [ProjectName], [ProjectPath], [ClientPath], [AddTime], [ActionCode]) VALUES (420, N'1', N'Administrator', N'张三测试', N'ALLUPLOAD', N'一键上传', NULL, N'192.168.0.105', 11, N'工程一', NULL, N'E:\C#WINFORM_2015\私单资料准备\工程一', CAST(0x0000A4EF001D65AA AS DateTime), NULL)
INSERT [dbo].[FM_UserLog] ([ID], [UserID], [UserName], [UserRealName], [ActionType], [ActionName], [Remark], [Ip], [ProjectID], [ProjectName], [ProjectPath], [ClientPath], [AddTime], [ActionCode]) VALUES (421, N'1', N'Administrator', N'张三测试', N'ALLUPLOAD', N'一键上传', NULL, N'192.168.0.105', 11, N'工程一', NULL, N'E:\C#WINFORM_2015\私单资料准备\工程一', CAST(0x0000A4EF0020FFFE AS DateTime), NULL)
INSERT [dbo].[FM_UserLog] ([ID], [UserID], [UserName], [UserRealName], [ActionType], [ActionName], [Remark], [Ip], [ProjectID], [ProjectName], [ProjectPath], [ClientPath], [AddTime], [ActionCode]) VALUES (422, N'1', N'Administrator', N'张三测试', N'ALLDOWNLOAD', N'一键下载', NULL, N'192.168.0.105', 4, N'工程二', NULL, N'E:\C#WINFORM_2015\私单资料准备\工程二', CAST(0x0000A4EF00AABD7A AS DateTime), NULL)
INSERT [dbo].[FM_UserLog] ([ID], [UserID], [UserName], [UserRealName], [ActionType], [ActionName], [Remark], [Ip], [ProjectID], [ProjectName], [ProjectPath], [ClientPath], [AddTime], [ActionCode]) VALUES (423, N'1', N'Administrator', N'张三测试', N'ALLDOWNLOAD', N'一键下载', NULL, N'192.168.0.105', 4, N'工程二', NULL, N'E:\C#WINFORM_2015\私单资料准备\工程二', CAST(0x0000A4EF00AAC4AC AS DateTime), NULL)
INSERT [dbo].[FM_UserLog] ([ID], [UserID], [UserName], [UserRealName], [ActionType], [ActionName], [Remark], [Ip], [ProjectID], [ProjectName], [ProjectPath], [ClientPath], [AddTime], [ActionCode]) VALUES (424, N'1', N'Administrator', N'张三测试', N'ALLDOWNLOAD', N'一键下载', NULL, N'192.168.0.105', 4, N'工程二', NULL, N'E:\C#WINFORM_2015\私单资料准备\工程二', CAST(0x0000A4EF00B1E76B AS DateTime), NULL)
INSERT [dbo].[FM_UserLog] ([ID], [UserID], [UserName], [UserRealName], [ActionType], [ActionName], [Remark], [Ip], [ProjectID], [ProjectName], [ProjectPath], [ClientPath], [AddTime], [ActionCode]) VALUES (425, N'1', N'Administrator', N'张三测试', N'RENAME', N'修改名称', NULL, N'192.168.0.105', 4, N'工程二', NULL, N'E:\C#WINFORM_2015\私单资料准备\工程二', CAST(0x0000A4EF00B219A3 AS DateTime), NULL)
INSERT [dbo].[FM_UserLog] ([ID], [UserID], [UserName], [UserRealName], [ActionType], [ActionName], [Remark], [Ip], [ProjectID], [ProjectName], [ProjectPath], [ClientPath], [AddTime], [ActionCode]) VALUES (426, N'1', N'Administrator', N'张三测试', N'RENAME', N'修改名称', NULL, N'192.168.0.105', 4, N'工程二', NULL, N'E:\C#WINFORM_2015\私单资料准备\工程二', CAST(0x0000A4EF00B226E4 AS DateTime), NULL)
INSERT [dbo].[FM_UserLog] ([ID], [UserID], [UserName], [UserRealName], [ActionType], [ActionName], [Remark], [Ip], [ProjectID], [ProjectName], [ProjectPath], [ClientPath], [AddTime], [ActionCode]) VALUES (427, N'1', N'Administrator', N'张三测试', N'ALLDOWNLOAD', N'一键下载', NULL, N'192.168.0.105', 4, N'工程二', NULL, N'E:\C#WINFORM_2015\私单资料准备\工程二', CAST(0x0000A4EF00B2331A AS DateTime), NULL)
INSERT [dbo].[FM_UserLog] ([ID], [UserID], [UserName], [UserRealName], [ActionType], [ActionName], [Remark], [Ip], [ProjectID], [ProjectName], [ProjectPath], [ClientPath], [AddTime], [ActionCode]) VALUES (428, N'1', N'Administrator', N'张三测试', N'ALLDOWNLOAD', N'一键下载', NULL, N'192.168.0.105', 4, N'工程二', NULL, N'E:\C#WINFORM_2015\私单资料准备\工程二', CAST(0x0000A4EF00B4C89C AS DateTime), NULL)
INSERT [dbo].[FM_UserLog] ([ID], [UserID], [UserName], [UserRealName], [ActionType], [ActionName], [Remark], [Ip], [ProjectID], [ProjectName], [ProjectPath], [ClientPath], [AddTime], [ActionCode]) VALUES (429, N'1', N'Administrator', N'张三测试', N'ALLDOWNLOAD', N'一键下载', NULL, N'192.168.0.105', 4, N'工程二', NULL, N'E:\C#WINFORM_2015\私单资料准备\工程二', CAST(0x0000A4EF00B56DFB AS DateTime), NULL)
INSERT [dbo].[FM_UserLog] ([ID], [UserID], [UserName], [UserRealName], [ActionType], [ActionName], [Remark], [Ip], [ProjectID], [ProjectName], [ProjectPath], [ClientPath], [AddTime], [ActionCode]) VALUES (430, N'1', N'Administrator', N'张三测试', N'ALLDOWNLOAD', N'一键下载', NULL, N'192.168.0.105', 4, N'工程二', NULL, N'E:\C#WINFORM_2015\私单资料准备\工程二', CAST(0x0000A4EF00B78B05 AS DateTime), NULL)
INSERT [dbo].[FM_UserLog] ([ID], [UserID], [UserName], [UserRealName], [ActionType], [ActionName], [Remark], [Ip], [ProjectID], [ProjectName], [ProjectPath], [ClientPath], [AddTime], [ActionCode]) VALUES (431, N'1', N'Administrator', N'张三测试', N'ALLDOWNLOAD', N'一键下载', NULL, N'192.168.0.105', 4, N'工程二', NULL, N'E:\C#WINFORM_2015\私单资料准备\工程二', CAST(0x0000A4EF00B8CD6F AS DateTime), NULL)
INSERT [dbo].[FM_UserLog] ([ID], [UserID], [UserName], [UserRealName], [ActionType], [ActionName], [Remark], [Ip], [ProjectID], [ProjectName], [ProjectPath], [ClientPath], [AddTime], [ActionCode]) VALUES (432, N'1', N'Administrator', N'张三测试', N'ALLDOWNLOAD', N'一键下载', NULL, N'192.168.0.105', 4, N'工程二', NULL, N'E:\C#WINFORM_2015\私单资料准备\工程二', CAST(0x0000A4EF00B8ECC9 AS DateTime), NULL)
INSERT [dbo].[FM_UserLog] ([ID], [UserID], [UserName], [UserRealName], [ActionType], [ActionName], [Remark], [Ip], [ProjectID], [ProjectName], [ProjectPath], [ClientPath], [AddTime], [ActionCode]) VALUES (433, N'1', N'Administrator', N'张三测试', N'ALLDOWNLOAD', N'一键下载', NULL, N'192.168.0.105', 4, N'工程二', NULL, N'E:\C#WINFORM_2015\私单资料准备\工程二', CAST(0x0000A4EF00B8F778 AS DateTime), NULL)
INSERT [dbo].[FM_UserLog] ([ID], [UserID], [UserName], [UserRealName], [ActionType], [ActionName], [Remark], [Ip], [ProjectID], [ProjectName], [ProjectPath], [ClientPath], [AddTime], [ActionCode]) VALUES (434, N'1', N'Administrator', N'张三测试', N'ALLUPLOAD', N'一键上传', NULL, N'192.168.0.105', 4, N'工程二', NULL, N'E:\C#WINFORM_2015\私单资料准备\工程二', CAST(0x0000A4EF00B90684 AS DateTime), NULL)
INSERT [dbo].[FM_UserLog] ([ID], [UserID], [UserName], [UserRealName], [ActionType], [ActionName], [Remark], [Ip], [ProjectID], [ProjectName], [ProjectPath], [ClientPath], [AddTime], [ActionCode]) VALUES (435, N'1', N'Administrator', N'张三测试', N'ALLUPLOAD', N'一键上传', NULL, N'192.168.0.105', 4, N'工程二', NULL, N'E:\C#WINFORM_2015\私单资料准备\工程二', CAST(0x0000A4EF00B91806 AS DateTime), NULL)
INSERT [dbo].[FM_UserLog] ([ID], [UserID], [UserName], [UserRealName], [ActionType], [ActionName], [Remark], [Ip], [ProjectID], [ProjectName], [ProjectPath], [ClientPath], [AddTime], [ActionCode]) VALUES (436, N'1', N'Administrator', N'张三测试', N'RENAME', N'修改名称', NULL, N'192.168.0.105', 4, N'工程二', NULL, N'E:\C#WINFORM_2015\私单资料准备\工程二', CAST(0x0000A4EF00CC566F AS DateTime), NULL)
INSERT [dbo].[FM_UserLog] ([ID], [UserID], [UserName], [UserRealName], [ActionType], [ActionName], [Remark], [Ip], [ProjectID], [ProjectName], [ProjectPath], [ClientPath], [AddTime], [ActionCode]) VALUES (437, N'1', N'Administrator', N'张三测试', N'RENAME', N'修改名称', NULL, N'192.168.0.105', 4, N'工程二', NULL, N'E:\C#WINFORM_2015\私单资料准备\工程二', CAST(0x0000A4EF00CC9C10 AS DateTime), NULL)
INSERT [dbo].[FM_UserLog] ([ID], [UserID], [UserName], [UserRealName], [ActionType], [ActionName], [Remark], [Ip], [ProjectID], [ProjectName], [ProjectPath], [ClientPath], [AddTime], [ActionCode]) VALUES (438, N'1', N'Administrator', N'张三测试', N'RENAME', N'修改名称', NULL, N'192.168.0.105', 4, N'工程二', NULL, N'E:\C#WINFORM_2015\私单资料准备\工程二', CAST(0x0000A4EF00CCB638 AS DateTime), NULL)
INSERT [dbo].[FM_UserLog] ([ID], [UserID], [UserName], [UserRealName], [ActionType], [ActionName], [Remark], [Ip], [ProjectID], [ProjectName], [ProjectPath], [ClientPath], [AddTime], [ActionCode]) VALUES (439, N'1', N'Administrator', N'张三测试', N'RENAME', N'修改名称', NULL, N'192.168.0.105', 4, N'工程二', NULL, N'E:\C#WINFORM_2015\私单资料准备\工程二', CAST(0x0000A4EF00CD0A7B AS DateTime), NULL)
INSERT [dbo].[FM_UserLog] ([ID], [UserID], [UserName], [UserRealName], [ActionType], [ActionName], [Remark], [Ip], [ProjectID], [ProjectName], [ProjectPath], [ClientPath], [AddTime], [ActionCode]) VALUES (440, N'1', N'Administrator', N'张三测试', N'RENAME', N'修改名称', NULL, N'192.168.0.105', 4, N'工程二', NULL, N'E:\C#WINFORM_2015\私单资料准备\工程二', CAST(0x0000A4EF00CD69F0 AS DateTime), NULL)
INSERT [dbo].[FM_UserLog] ([ID], [UserID], [UserName], [UserRealName], [ActionType], [ActionName], [Remark], [Ip], [ProjectID], [ProjectName], [ProjectPath], [ClientPath], [AddTime], [ActionCode]) VALUES (441, N'1', N'Administrator', N'张三测试', N'ALLDOWNLOAD', N'一键下载', NULL, N'192.168.0.105', 4, N'工程二', NULL, N'E:\C#WINFORM_2015\私单资料准备\工程二', CAST(0x0000A4EF00CD8134 AS DateTime), NULL)
INSERT [dbo].[FM_UserLog] ([ID], [UserID], [UserName], [UserRealName], [ActionType], [ActionName], [Remark], [Ip], [ProjectID], [ProjectName], [ProjectPath], [ClientPath], [AddTime], [ActionCode]) VALUES (442, N'1', N'Administrator', N'张三测试', N'ALLUPLOAD', N'一键上传', NULL, N'192.168.0.105', 4, N'工程二', NULL, N'E:\C#WINFORM_2015\私单资料准备\工程二', CAST(0x0000A4EF00FB7EF7 AS DateTime), NULL)
INSERT [dbo].[FM_UserLog] ([ID], [UserID], [UserName], [UserRealName], [ActionType], [ActionName], [Remark], [Ip], [ProjectID], [ProjectName], [ProjectPath], [ClientPath], [AddTime], [ActionCode]) VALUES (443, N'1', N'Administrator', N'张三测试', N'ALLDOWNLOAD', N'一键下载', NULL, N'192.168.0.105', 4, N'工程二', NULL, N'E:\C#WINFORM_2015\私单资料准备\工程二', CAST(0x0000A4EF00FBC612 AS DateTime), NULL)
INSERT [dbo].[FM_UserLog] ([ID], [UserID], [UserName], [UserRealName], [ActionType], [ActionName], [Remark], [Ip], [ProjectID], [ProjectName], [ProjectPath], [ClientPath], [AddTime], [ActionCode]) VALUES (444, N'1', N'Administrator', N'张三测试', N'ALLUPLOAD', N'一键上传', NULL, N'192.168.0.105', 4, N'工程二', NULL, N'E:\C#WINFORM_2015\私单资料准备\工程二', CAST(0x0000A4EF00FBE06B AS DateTime), NULL)
INSERT [dbo].[FM_UserLog] ([ID], [UserID], [UserName], [UserRealName], [ActionType], [ActionName], [Remark], [Ip], [ProjectID], [ProjectName], [ProjectPath], [ClientPath], [AddTime], [ActionCode]) VALUES (445, N'1', N'Administrator', N'张三测试', N'ALLUPLOAD', N'一键上传', NULL, N'192.168.0.105', 4, N'工程二', NULL, N'E:\C#WINFORM_2015\私单资料准备\工程二', CAST(0x0000A4EF00FD095B AS DateTime), NULL)
INSERT [dbo].[FM_UserLog] ([ID], [UserID], [UserName], [UserRealName], [ActionType], [ActionName], [Remark], [Ip], [ProjectID], [ProjectName], [ProjectPath], [ClientPath], [AddTime], [ActionCode]) VALUES (447, N'1', N'Administrator', N'张三测试', N'ALLDOWNLOAD', N'一键下载', NULL, N'192.168.0.105', 4, N'工程二', NULL, N'E:\C#WINFORM_2015\私单资料准备\工程二', CAST(0x0000A4EF00FE0183 AS DateTime), NULL)
INSERT [dbo].[FM_UserLog] ([ID], [UserID], [UserName], [UserRealName], [ActionType], [ActionName], [Remark], [Ip], [ProjectID], [ProjectName], [ProjectPath], [ClientPath], [AddTime], [ActionCode]) VALUES (448, N'1', N'Administrator', N'张三测试', N'ONEDELFILE', N'删除文件', NULL, N'192.168.0.105', 4, N'工程二', NULL, N'E:\C#WINFORM_2015\私单资料准备\工程二', CAST(0x0000A4EF00FE090F AS DateTime), NULL)
INSERT [dbo].[FM_UserLog] ([ID], [UserID], [UserName], [UserRealName], [ActionType], [ActionName], [Remark], [Ip], [ProjectID], [ProjectName], [ProjectPath], [ClientPath], [AddTime], [ActionCode]) VALUES (449, N'1', N'Administrator', N'张三测试', N'ALLUPLOAD', N'一键上传', NULL, N'192.168.0.105', 4, N'工程二', NULL, N'E:\C#WINFORM_2015\私单资料准备\工程二', CAST(0x0000A4EF00FE0D09 AS DateTime), NULL)
INSERT [dbo].[FM_UserLog] ([ID], [UserID], [UserName], [UserRealName], [ActionType], [ActionName], [Remark], [Ip], [ProjectID], [ProjectName], [ProjectPath], [ClientPath], [AddTime], [ActionCode]) VALUES (450, N'1', N'Administrator', N'张三测试', N'ALLUPLOAD', N'一键上传', NULL, N'192.168.0.105', 13, N'gyutu', NULL, N'D:\360Downloads', CAST(0x0000A4EF00FE4D9A AS DateTime), NULL)
INSERT [dbo].[FM_UserLog] ([ID], [UserID], [UserName], [UserRealName], [ActionType], [ActionName], [Remark], [Ip], [ProjectID], [ProjectName], [ProjectPath], [ClientPath], [AddTime], [ActionCode]) VALUES (451, N'1', N'Administrator', N'张三测试', N'ALLUPLOAD', N'一键上传', NULL, N'192.168.0.105', 4, N'工程二', NULL, N'E:\C#WINFORM_2015\私单资料准备\工程二', CAST(0x0000A4EF00FE5D61 AS DateTime), NULL)
INSERT [dbo].[FM_UserLog] ([ID], [UserID], [UserName], [UserRealName], [ActionType], [ActionName], [Remark], [Ip], [ProjectID], [ProjectName], [ProjectPath], [ClientPath], [AddTime], [ActionCode]) VALUES (452, N'1', N'Administrator', N'张三测试', N'ALLDOWNLOAD', N'一键下载', NULL, N'192.168.0.105', 4, N'工程二', NULL, N'E:\C#WINFORM_2015\私单资料准备\工程二', CAST(0x0000A4EF00FE8AFF AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[FM_UserLog] OFF
/****** Object:  Table [dbo].[FM_User]    Script Date: 08/14/2015 23:20:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FM_User]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[FM_User](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [int] NOT NULL,
	[RoleType] [int] NULL,
	[RoleName] [varchar](100) NULL,
	[UserName] [varchar](50) NOT NULL,
	[Password] [varchar](100) NULL,
	[RealName] [varchar](100) NULL,
	[Email] [varchar](100) NULL,
	[Tel] [varchar](100) NULL,
	[IsLock] [tinyint] NULL,
	[ClientIp] [varchar](100) NULL,
	[ClientPath] [varchar](500) NULL,
	[AddTime] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[FM_User]') AND name = N'IX_FM_User')
CREATE UNIQUE NONCLUSTERED INDEX [IX_FM_User] ON [dbo].[FM_User] 
(
	[UserName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = ON, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[FM_User] ON
INSERT [dbo].[FM_User] ([ID], [RoleId], [RoleType], [RoleName], [UserName], [Password], [RealName], [Email], [Tel], [IsLock], [ClientIp], [ClientPath], [AddTime]) VALUES (1, 1, 1, N'管理员', N'Administrator', N'123', N'张三测试', N'', N'', 0, N'127.0.0.1', N'E:\C#WINFORM_2015\私单资料准备\FileManager_TestUpload', CAST(0x0000A49800000000 AS DateTime))
INSERT [dbo].[FM_User] ([ID], [RoleId], [RoleType], [RoleName], [UserName], [Password], [RealName], [Email], [Tel], [IsLock], [ClientIp], [ClientPath], [AddTime]) VALUES (2, 1, 0, N'普通用户', N'test', N'123', N'王二麻子', N'', N'', 0, N'127.0.0.1', N'E:\C#WINFORM_2015\私单资料准备\FileManager_TestUpload', CAST(0x0000A49800000000 AS DateTime))
INSERT [dbo].[FM_User] ([ID], [RoleId], [RoleType], [RoleName], [UserName], [Password], [RealName], [Email], [Tel], [IsLock], [ClientIp], [ClientPath], [AddTime]) VALUES (7, 0, 0, N'普通用户', N'fdsdfdsfdsf', N'', N'李四', N'', N'', 0, N'', NULL, CAST(0x0000A4A100E44134 AS DateTime))
INSERT [dbo].[FM_User] ([ID], [RoleId], [RoleType], [RoleName], [UserName], [Password], [RealName], [Email], [Tel], [IsLock], [ClientIp], [ClientPath], [AddTime]) VALUES (9, 1, 1, N'管理员', N'fsdf', N'', N'小球球', N'', N'', 0, N'127.0.0.1', N'E:\C#WINFORM_2015\私单资料准备\FileManager_TestUpload', CAST(0x0000A49800000000 AS DateTime))
SET IDENTITY_INSERT [dbo].[FM_User] OFF
/****** Object:  Table [dbo].[FM_ServerSysConfig]    Script Date: 08/14/2015 23:20:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FM_ServerSysConfig]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[FM_ServerSysConfig](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ManagerEmail] [varchar](100) NULL,
	[ManagerTel] [varchar](100) NULL,
	[SystemLoginType] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[FM_ServerSysConfig] ON
INSERT [dbo].[FM_ServerSysConfig] ([ID], [ManagerEmail], [ManagerTel], [SystemLoginType]) VALUES (1, N'335344151@qq.com', N'13678074654', 1)
SET IDENTITY_INSERT [dbo].[FM_ServerSysConfig] OFF
/****** Object:  Table [dbo].[FM_Forder]    Script Date: 08/14/2015 23:20:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FM_Forder]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[FM_Forder](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](100) NULL,
	[Call_Index] [nvarchar](100) NULL,
	[UserName] [nvarchar](100) NULL,
	[Project_Id] [int] NULL,
	[Parent_Id] [int] NOT NULL,
	[Class_List] [nvarchar](500) NULL,
	[Class_Layer] [int] NULL,
	[Sort_Id] [int] NULL,
	[Image] [varbinary](max) NULL,
	[IsDeleted] [tinyint] NULL,
	[Remark] [nvarchar](2000) NULL,
	[ClientPath] [nvarchar](2000) NULL,
	[Forder_Modify_Time] [bigint] NULL,
	[Add_Time] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'FM_Forder', N'COLUMN',N'ID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FM_Forder', @level2type=N'COLUMN',@level2name=N'ID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'FM_Forder', N'COLUMN',N'Title'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类别标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FM_Forder', @level2type=N'COLUMN',@level2name=N'Title'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'FM_Forder', N'COLUMN',N'Parent_Id'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'父类别ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FM_Forder', @level2type=N'COLUMN',@level2name=N'Parent_Id'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'FM_Forder', N'COLUMN',N'Class_List'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'字类别ID列表(逗号分隔开)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FM_Forder', @level2type=N'COLUMN',@level2name=N'Class_List'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'FM_Forder', N'COLUMN',N'Class_Layer'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类别深度' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FM_Forder', @level2type=N'COLUMN',@level2name=N'Class_Layer'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'FM_Forder', N'COLUMN',N'Sort_Id'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序数字' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FM_Forder', @level2type=N'COLUMN',@level2name=N'Sort_Id'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'FM_Forder', N'COLUMN',N'Image'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'图片地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FM_Forder', @level2type=N'COLUMN',@level2name=N'Image'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'FM_Forder', N'COLUMN',N'Remark'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注说明' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FM_Forder', @level2type=N'COLUMN',@level2name=N'Remark'
GO
/****** Object:  Table [dbo].[FM_FileVersion]    Script Date: 08/14/2015 23:20:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FM_FileVersion]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[FM_FileVersion](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Ver] [int] NOT NULL,
	[UserID] [int] NULL,
	[UserName] [varchar](100) NOT NULL,
	[File_Id] [int] NOT NULL,
	[File_Type] [varchar](100) NULL,
	[File_Size] [int] NOT NULL,
	[File_Md5] [varchar](100) NULL,
	[File_Ext] [varchar](100) NULL,
	[File_SmallImage] [varbinary](max) NULL,
	[File_LargeImage] [varbinary](max) NULL,
	[Content] [varbinary](max) NULL,
	[FileContentId] [varchar](100) NULL,
	[File_Modify_Time] [bigint] NOT NULL,
	[IsDeleted] [tinyint] NULL,
	[ActionNum] [tinyint] NULL,
	[ComputerName] [varchar](100) NULL,
	[Ip] [varchar](100) NULL,
	[ClientPath] [varchar](2000) NULL,
	[Remark] [varchar](2000) NULL,
	[Add_Time] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FM_FileLog]    Script Date: 08/14/2015 23:20:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FM_FileLog]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[FM_FileLog](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [varchar](200) NULL,
	[UserName] [varchar](200) NULL,
	[ActionType] [varchar](50) NULL,
	[Remark] [varchar](2000) NULL,
	[Ip] [varchar](200) NULL,
	[AddTime] [datetime] NULL,
	[FileID] [int] NULL,
	[FileName] [varchar](200) NULL,
	[FileVerID] [int] NULL,
	[FileVer] [int] NULL,
	[ActionName] [varchar](100) NULL,
	[UserRealName] [varchar](100) NOT NULL,
	[FileType] [tinyint] NULL,
	[ProjectID] [int] NULL,
	[ProjectName] [varchar](100) NULL,
	[ProjectPath] [varchar](500) NULL,
	[ClientPath] [varchar](500) NULL,
	[ParentForderId] [int] NULL,
	[ActionCode] [varchar](50) NULL,
	[IsDeleted] [tinyint] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'FM_FileLog', N'COLUMN',N'UserID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FM_FileLog', @level2type=N'COLUMN',@level2name=N'UserID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'FM_FileLog', N'COLUMN',N'UserName'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户账号名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FM_FileLog', @level2type=N'COLUMN',@level2name=N'UserName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'FM_FileLog', N'COLUMN',N'ActionType'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'操作类型（en）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FM_FileLog', @level2type=N'COLUMN',@level2name=N'ActionType'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'FM_FileLog', N'COLUMN',N'Remark'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'操作备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FM_FileLog', @level2type=N'COLUMN',@level2name=N'Remark'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'FM_FileLog', N'COLUMN',N'Ip'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户ip' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FM_FileLog', @level2type=N'COLUMN',@level2name=N'Ip'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'FM_FileLog', N'COLUMN',N'AddTime'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FM_FileLog', @level2type=N'COLUMN',@level2name=N'AddTime'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'FM_FileLog', N'COLUMN',N'FileID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文件对应数据库的id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FM_FileLog', @level2type=N'COLUMN',@level2name=N'FileID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'FM_FileLog', N'COLUMN',N'FileName'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文件名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FM_FileLog', @level2type=N'COLUMN',@level2name=N'FileName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'FM_FileLog', N'COLUMN',N'FileVerID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文件版本对应的数据库id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FM_FileLog', @level2type=N'COLUMN',@level2name=N'FileVerID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'FM_FileLog', N'COLUMN',N'FileVer'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文件版本' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FM_FileLog', @level2type=N'COLUMN',@level2name=N'FileVer'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'FM_FileLog', N'COLUMN',N'ActionName'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'操作名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FM_FileLog', @level2type=N'COLUMN',@level2name=N'ActionName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'FM_FileLog', N'COLUMN',N'UserRealName'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户真实名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FM_FileLog', @level2type=N'COLUMN',@level2name=N'UserRealName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'FM_FileLog', N'COLUMN',N'FileType'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'0--文件，1文件夹' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FM_FileLog', @level2type=N'COLUMN',@level2name=N'FileType'
GO
/****** Object:  Table [dbo].[FM_File]    Script Date: 08/14/2015 23:20:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FM_File]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[FM_File](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Update_UserId] [int] NULL,
	[Update_UserName] [varchar](200) NULL,
	[File_Name] [varchar](200) NULL,
	[File_LastVersion] [int] NOT NULL,
	[File_Md5] [varchar](200) NULL,
	[Project_Id] [int] NULL,
	[File_DirId] [int] NULL,
	[File_Type] [varchar](200) NULL,
	[File_Size] [int] NULL,
	[File_Ext] [varchar](20) NULL,
	[File_SmallImage] [image] NULL,
	[File_LargeImage] [image] NULL,
	[Content] [varbinary](max) NULL,
	[ClientPath] [varchar](2000) NULL,
	[File_Modify_Time] [bigint] NULL,
	[Add_Time] [datetime] NULL,
	[IsDeleted] [tinyint] NULL,
	[Remark] [varchar](2000) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Default [DF__FM_UserPr__IsLoc__267ABA7A]    Script Date: 08/14/2015 23:20:50 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__FM_UserPr__IsLoc__267ABA7A]') AND parent_object_id = OBJECT_ID(N'[dbo].[FM_UserProject]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__FM_UserPr__IsLoc__267ABA7A]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[FM_UserProject] ADD  DEFAULT ((0)) FOR [IsLock]
END


End
GO
/****** Object:  Default [DF__FM_UserPr__AddTi__276EDEB3]    Script Date: 08/14/2015 23:20:50 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__FM_UserPr__AddTi__276EDEB3]') AND parent_object_id = OBJECT_ID(N'[dbo].[FM_UserProject]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__FM_UserPr__AddTi__276EDEB3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[FM_UserProject] ADD  DEFAULT (getdate()) FOR [AddTime]
END


End
GO
/****** Object:  Default [DF__FM_UserLo__AddTi__24927208]    Script Date: 08/14/2015 23:20:50 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__FM_UserLo__AddTi__24927208]') AND parent_object_id = OBJECT_ID(N'[dbo].[FM_UserLog]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__FM_UserLo__AddTi__24927208]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[FM_UserLog] ADD  DEFAULT (getdate()) FOR [AddTime]
END


End
GO
/****** Object:  Default [DF__FM_User__AddTime__22AA2996]    Script Date: 08/14/2015 23:20:50 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__FM_User__AddTime__22AA2996]') AND parent_object_id = OBJECT_ID(N'[dbo].[FM_User]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__FM_User__AddTime__22AA2996]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[FM_User] ADD  DEFAULT (getdate()) FOR [AddTime]
END


End
GO
/****** Object:  Default [DF__FM_Forder__Paren__1BFD2C07]    Script Date: 08/14/2015 23:20:50 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__FM_Forder__Paren__1BFD2C07]') AND parent_object_id = OBJECT_ID(N'[dbo].[FM_Forder]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__FM_Forder__Paren__1BFD2C07]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[FM_Forder] ADD  DEFAULT ((0)) FOR [Parent_Id]
END


End
GO
/****** Object:  Default [DF__FM_Forder__Class__1CF15040]    Script Date: 08/14/2015 23:20:50 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__FM_Forder__Class__1CF15040]') AND parent_object_id = OBJECT_ID(N'[dbo].[FM_Forder]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__FM_Forder__Class__1CF15040]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[FM_Forder] ADD  DEFAULT ((0)) FOR [Class_Layer]
END


End
GO
/****** Object:  Default [DF__FM_Forder__Sort___1DE57479]    Script Date: 08/14/2015 23:20:50 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__FM_Forder__Sort___1DE57479]') AND parent_object_id = OBJECT_ID(N'[dbo].[FM_Forder]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__FM_Forder__Sort___1DE57479]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[FM_Forder] ADD  DEFAULT ((99)) FOR [Sort_Id]
END


End
GO
/****** Object:  Default [DF__FM_Forder__IsDel__1ED998B2]    Script Date: 08/14/2015 23:20:50 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__FM_Forder__IsDel__1ED998B2]') AND parent_object_id = OBJECT_ID(N'[dbo].[FM_Forder]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__FM_Forder__IsDel__1ED998B2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[FM_Forder] ADD  DEFAULT ((0)) FOR [IsDeleted]
END


End
GO
/****** Object:  Default [DF__FM_Forder__Add_T__1FCDBCEB]    Script Date: 08/14/2015 23:20:50 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__FM_Forder__Add_T__1FCDBCEB]') AND parent_object_id = OBJECT_ID(N'[dbo].[FM_Forder]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__FM_Forder__Add_T__1FCDBCEB]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[FM_Forder] ADD  DEFAULT (getdate()) FOR [Add_Time]
END


End
GO
/****** Object:  Default [DF__FM_FileVers__Ver__1920BF5C]    Script Date: 08/14/2015 23:20:50 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__FM_FileVers__Ver__1920BF5C]') AND parent_object_id = OBJECT_ID(N'[dbo].[FM_FileVersion]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__FM_FileVers__Ver__1920BF5C]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[FM_FileVersion] ADD  DEFAULT ((0)) FOR [Ver]
END


End
GO
/****** Object:  Default [DF__FM_FileVe__Add_T__1A14E395]    Script Date: 08/14/2015 23:20:50 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__FM_FileVe__Add_T__1A14E395]') AND parent_object_id = OBJECT_ID(N'[dbo].[FM_FileVersion]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__FM_FileVe__Add_T__1A14E395]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[FM_FileVersion] ADD  DEFAULT (getdate()) FOR [Add_Time]
END


End
GO
/****** Object:  Default [DF__FM_FileLo__Actio__164452B1]    Script Date: 08/14/2015 23:20:50 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__FM_FileLo__Actio__164452B1]') AND parent_object_id = OBJECT_ID(N'[dbo].[FM_FileLog]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__FM_FileLo__Actio__164452B1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[FM_FileLog] ADD  DEFAULT (NULL) FOR [ActionCode]
END


End
GO
/****** Object:  Default [DF__FM_FileLo__IsDel__173876EA]    Script Date: 08/14/2015 23:20:50 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__FM_FileLo__IsDel__173876EA]') AND parent_object_id = OBJECT_ID(N'[dbo].[FM_FileLog]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__FM_FileLo__IsDel__173876EA]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[FM_FileLog] ADD  DEFAULT ((0)) FOR [IsDeleted]
END


End
GO
/****** Object:  Default [DF__FM_File__Add_Tim__1367E606]    Script Date: 08/14/2015 23:20:50 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__FM_File__Add_Tim__1367E606]') AND parent_object_id = OBJECT_ID(N'[dbo].[FM_File]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__FM_File__Add_Tim__1367E606]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[FM_File] ADD  DEFAULT (getdate()) FOR [Add_Time]
END


End
GO
/****** Object:  Default [DF__FM_File__IsDelet__145C0A3F]    Script Date: 08/14/2015 23:20:50 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__FM_File__IsDelet__145C0A3F]') AND parent_object_id = OBJECT_ID(N'[dbo].[FM_File]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__FM_File__IsDelet__145C0A3F]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[FM_File] ADD  DEFAULT ((0)) FOR [IsDeleted]
END


End
GO
