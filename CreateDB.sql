USE [OptimaxDeveloperTest]
GO
/****** Object:  Table [dbo].[AppUser]    Script Date: 05/07/2022 16:23:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppUser](
	[AppUserID] [int] IDENTITY(10000000,1) NOT NULL,
	[Username] [varchar](50) NOT NULL,
	[PasswordHash] [binary](64) NOT NULL,
	[FirstName] [varchar](200) NOT NULL,
	[Surname] [varchar](200) NOT NULL,
	[UserRoleID] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[DateTimeCreated] [datetime] NOT NULL,
	[DateTimeDeactivated] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[AppUserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Permission]    Script Date: 05/07/2022 16:23:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Permission](
	[PermissionID] [int] IDENTITY(10000000,1) NOT NULL,
	[PermissionName] [varchar](200) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[DateTimeCreated] [datetime] NOT NULL,
	[DateTimeDeacticated] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[PermissionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserRole]    Script Date: 05/07/2022 16:23:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserRole](
	[UserRoleID] [int] IDENTITY(1,1) NOT NULL,
	[UserRoleName] [varchar](200) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[DateTimeCreated] [datetime] NOT NULL,
	[DateTimeDeacticated] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[UserRoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserRole_Permission]    Script Date: 05/07/2022 16:23:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserRole_Permission](
	[UserRole_PermissionID] [int] IDENTITY(1000000,1) NOT NULL,
	[UserRoleID] [int] NULL,
	[PermissionID] [int] NULL,
	[IsActive] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[UserRole_PermissionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[AppUser] ON 
GO
INSERT [dbo].[AppUser] ([AppUserID], [Username], [PasswordHash], [FirstName], [Surname], [UserRoleID], [IsActive], [DateTimeCreated], [DateTimeDeactivated]) VALUES (10000000, N'ADAMSTRAIN', 0x4D79556E73656375726550617373776F726400000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, N'Adam', N'Strain', 1, 1, CAST(N'2022-07-05T09:46:43.770' AS DateTime), NULL)
GO
INSERT [dbo].[AppUser] ([AppUserID], [Username], [PasswordHash], [FirstName], [Surname], [UserRoleID], [IsActive], [DateTimeCreated], [DateTimeDeactivated]) VALUES (10000001, N'BRENDONPARKES', 0x4E6F7456657279476F6F6450617373776F7264000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, N'Brendon', N'Parkes', 1, 1, CAST(N'2022-07-05T09:47:15.450' AS DateTime), NULL)
GO
INSERT [dbo].[AppUser] ([AppUserID], [Username], [PasswordHash], [FirstName], [Surname], [UserRoleID], [IsActive], [DateTimeCreated], [DateTimeDeactivated]) VALUES (10000002, N'DORISMAYWEATHER', 0x70617373000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, N'Doris', N'Mayweather', 3, 1, CAST(N'2022-07-05T10:45:55.077' AS DateTime), NULL)
GO
INSERT [dbo].[AppUser] ([AppUserID], [Username], [PasswordHash], [FirstName], [Surname], [UserRoleID], [IsActive], [DateTimeCreated], [DateTimeDeactivated]) VALUES (10000003, N'DAVESMITH', 0x43006F006D0070006C0065007800500061007300730077006F007200640000000000000000000000000000000000000000000000000000000000000000000000, N'David', N'Smith', 2, 1, CAST(N'2022-07-05T11:21:54.847' AS DateTime), NULL)
GO
SET IDENTITY_INSERT [dbo].[AppUser] OFF
GO
SET IDENTITY_INSERT [dbo].[Permission] ON 
GO
INSERT [dbo].[Permission] ([PermissionID], [PermissionName], [IsActive], [DateTimeCreated], [DateTimeDeacticated]) VALUES (10000000, N'INSERT RECORDS', 1, CAST(N'2022-06-28T11:08:12.343' AS DateTime), NULL)
GO
INSERT [dbo].[Permission] ([PermissionID], [PermissionName], [IsActive], [DateTimeCreated], [DateTimeDeacticated]) VALUES (10000001, N'DELETE RECORDS', 1, CAST(N'2022-06-28T11:08:12.343' AS DateTime), NULL)
GO
INSERT [dbo].[Permission] ([PermissionID], [PermissionName], [IsActive], [DateTimeCreated], [DateTimeDeacticated]) VALUES (10000002, N'RETRIEVE RECORDS', 1, CAST(N'2022-06-28T11:08:12.343' AS DateTime), NULL)
GO
INSERT [dbo].[Permission] ([PermissionID], [PermissionName], [IsActive], [DateTimeCreated], [DateTimeDeacticated]) VALUES (10000003, N'CREATE USER', 1, CAST(N'2022-06-28T11:08:12.343' AS DateTime), NULL)
GO
INSERT [dbo].[Permission] ([PermissionID], [PermissionName], [IsActive], [DateTimeCreated], [DateTimeDeacticated]) VALUES (10000004, N'DEACTIVATE USER', 1, CAST(N'2022-06-28T11:08:12.343' AS DateTime), NULL)
GO
SET IDENTITY_INSERT [dbo].[Permission] OFF
GO
SET IDENTITY_INSERT [dbo].[UserRole] ON 
GO
INSERT [dbo].[UserRole] ([UserRoleID], [UserRoleName], [IsActive], [DateTimeCreated], [DateTimeDeacticated]) VALUES (1, N'Administrator', 1, CAST(N'2022-07-05T09:51:26.727' AS DateTime), NULL)
GO
INSERT [dbo].[UserRole] ([UserRoleID], [UserRoleName], [IsActive], [DateTimeCreated], [DateTimeDeacticated]) VALUES (2, N'Basic', 1, CAST(N'2022-07-05T09:51:26.727' AS DateTime), NULL)
GO
INSERT [dbo].[UserRole] ([UserRoleID], [UserRoleName], [IsActive], [DateTimeCreated], [DateTimeDeacticated]) VALUES (3, N'Readonly', 1, CAST(N'2022-07-05T09:51:26.727' AS DateTime), NULL)
GO
SET IDENTITY_INSERT [dbo].[UserRole] OFF
GO
SET IDENTITY_INSERT [dbo].[UserRole_Permission] ON 
GO
INSERT [dbo].[UserRole_Permission] ([UserRole_PermissionID], [UserRoleID], [PermissionID], [IsActive]) VALUES (1000000, 1, 10000000, 1)
GO
INSERT [dbo].[UserRole_Permission] ([UserRole_PermissionID], [UserRoleID], [PermissionID], [IsActive]) VALUES (1000001, 1, 10000001, 1)
GO
INSERT [dbo].[UserRole_Permission] ([UserRole_PermissionID], [UserRoleID], [PermissionID], [IsActive]) VALUES (1000002, 1, 10000002, 1)
GO
INSERT [dbo].[UserRole_Permission] ([UserRole_PermissionID], [UserRoleID], [PermissionID], [IsActive]) VALUES (1000003, 1, 10000003, 1)
GO
INSERT [dbo].[UserRole_Permission] ([UserRole_PermissionID], [UserRoleID], [PermissionID], [IsActive]) VALUES (1000004, 1, 10000004, 1)
GO
INSERT [dbo].[UserRole_Permission] ([UserRole_PermissionID], [UserRoleID], [PermissionID], [IsActive]) VALUES (1000005, 2, 10000000, 1)
GO
INSERT [dbo].[UserRole_Permission] ([UserRole_PermissionID], [UserRoleID], [PermissionID], [IsActive]) VALUES (1000006, 2, 10000002, 1)
GO
INSERT [dbo].[UserRole_Permission] ([UserRole_PermissionID], [UserRoleID], [PermissionID], [IsActive]) VALUES (1000007, 3, 10000002, 1)
GO
SET IDENTITY_INSERT [dbo].[UserRole_Permission] OFF
GO
ALTER TABLE [dbo].[UserRole_Permission] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[UserRole_Permission]  WITH CHECK ADD FOREIGN KEY([PermissionID])
REFERENCES [dbo].[Permission] ([PermissionID])
GO
ALTER TABLE [dbo].[UserRole_Permission]  WITH CHECK ADD FOREIGN KEY([UserRoleID])
REFERENCES [dbo].[UserRole] ([UserRoleID])
GO
/****** Object:  StoredProcedure [dbo].[CheckAppUserPermissionByPermissionID]    Script Date: 05/07/2022 16:23:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[CheckAppUserPermissionByPermissionID](
	@AppUserID INT,
	@PermissionID INT,
	@HasPermission BIT OUTPUT
)
AS
BEGIN
	IF EXISTS(
		SELECT 
			URP.PermissionID 
		FROM 
			UserRole_Permission URP
		JOIN
			UserRole UR
		ON
			URP.UserRoleID = UR.UserRoleID
		JOIN 
			Permission P
		ON
			URP.PermissionID = P.PermissionID
		JOIN
			AppUser AU
		ON 
			UR.UserRoleID = AU.UserRoleID

		WHERE
			URP.PermissionID = @PermissionID AND 
			AU.AppUserID = @AppUserID
	)		
		SET @HasPermission = 1
	ELSE
		SET @HasPermission = 0
END


GO
/****** Object:  StoredProcedure [dbo].[GetAllAppUsers]    Script Date: 05/07/2022 16:23:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[GetAllAppUsers]
AS
BEGIN
	SELECT [AppUserID]
      ,[Username]
      ,[PasswordHash]
      ,[FirstName]
      ,[Surname]
      ,[UserRoleID]
      ,[IsActive]
      ,[DateTimeCreated]
      ,[DateTimeDeactivated]
  FROM [dbo].[AppUser]
END
GO
/****** Object:  StoredProcedure [dbo].[GetAppUserByAppUserID]    Script Date: 05/07/2022 16:23:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[GetAppUserByAppUserID](
	@AppUserID INT
)
AS
BEGIN
	SELECT [AppUserID]
      ,[Username]
      ,[PasswordHash]
      ,[FirstName]
      ,[Surname]
      ,[UserRoleID]
      ,[IsActive]
      ,[DateTimeCreated]
      ,[DateTimeDeactivated]
  FROM [dbo].[AppUser]
  WHERE AppUserID = @AppUserID
END
GO
/****** Object:  StoredProcedure [dbo].[InsertUser]    Script Date: 05/07/2022 16:23:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[InsertUser](
	@Username VARCHAR(200),
    @Password VARBINARY(64),
    @FirstName VARCHAR(200),
    @Surname VARCHAR(200),
    @UserRoleID INTEGER,
    @IsActive BIT
)
AS
BEGIN
	INSERT INTO AppUser
	(
		Username,
		PasswordHash,
		FirstName,
		Surname,
		UserRoleID,
		IsActive,
		DateTimeCreated
	)
	VALUES(
		@Username,
		@Password,
		@FirstName,
		@Surname,
		@UserRoleID,
		@IsActive,
		GETDATE()
	)
END
GO
