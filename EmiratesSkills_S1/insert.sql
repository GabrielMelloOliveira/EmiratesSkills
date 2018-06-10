----------------------------------
--  EmiratesSkills System 2017  --
---------  Table import  ---------
----------------------------------


-- Make sure the correct database is active
-- e.g. USE EmiratesSkills2017

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO

---------------------
--  Create Tables  --
---------------------

-- Create Role Table
CREATE TABLE [dbo].[Role](
	[RoleID] [char](2) NOT NULL,
	[RoleName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY ([RoleID])
 );

-- Create Skill Table
CREATE TABLE [dbo].[Skill](
	[SkillID] [int] IDENTITY(1,1) NOT NULL,
	[SkillName] [varchar](100) NOT NULL,
	[SkillDescription] [varchar](200) NULL,
 CONSTRAINT [PK_Skill] PRIMARY KEY ([SkillID])
 );

-- Create Competition Table
CREATE TABLE [dbo].[Competition](
	[CompetitionID] [int] IDENTITY(1,1) NOT NULL,
	[CompetitionName] [varchar](100) NOT NULL,
	[CompetitionStartDate] [datetime] NOT NULL,
	[CompetitionEndDate] [datetime] NOT NULL,
	[CompetitionDescription] [varchar](200) NULL,
	CONSTRAINT PK_Competition PRIMARY KEY ([CompetitionID])
	);

-- Create CompetitionSkill Table
CREATE TABLE [dbo].[CompetitionSkill](
	[CompetitionID] [int] NOT NULL,
	[SkillID] [int] NOT NULL,
 CONSTRAINT [PK_CompetitionSkill] PRIMARY KEY ([CompetitionID], [SkillID])
 );

 -- Create User Table
CREATE TABLE [dbo].[User](
	[Email] [varchar](100) NOT NULL,
	[Password] [varchar](100) NOT NULL,
	[FullName] [varchar](200) NULL,
	[Gender] [varchar](10) NULL,
	[DateOfBirth] [datetime] NOT NULL,
	[MobileNo] [varchar](20) NOT NULL,
	[Photo] [varchar](100) NULL,
	[RoleID] [char](2) NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY ([Email])
);

-- Create Competitor Table
CREATE TABLE [dbo].[Competitor](
	[RegistrationID] [int] IDENTITY(1,1) NOT NULL,
	[EmiratesID] [char](15) NOT NULL,
	[Email] [varchar](100) NOT NULL,
	[City] [varchar](100) NOT NULL,
	[AffiliationType] [varchar](100) NOT NULL,
	[AffiliationName] [varchar](100) NOT NULL,
	[RegistrationDateTime] [datetime] NOT NULL,
	[EmiratesIDPhoto] [varchar](100) NOT NULL,
	[RegistrationStatus] [varchar](100) NOT NULL,
 CONSTRAINT [PK_Competitor] PRIMARY KEY ([RegistrationID])
 );


-- Create CompetitionSkillPerson Table
CREATE TABLE [dbo].[CompetitionSkillPerson](
	[PersonID] [int] IDENTITY(1,1) NOT NULL,
	[CompetitionID] [int] NOT NULL,
	[SkillID] [int] NOT NULL,
	[Email] [varchar](100) NOT NULL,
 CONSTRAINT [PK_CompetitionSkillPerson] PRIMARY KEY 
([PersonID])
);

-- Create FinalScore Table
CREATE TABLE [dbo].[FinalScore](
	[CompetitorID] [int] NOT NULL,
	[Score] [decimal](10, 2) NOT NULL,
 CONSTRAINT [PK_FinalScore] PRIMARY KEY ([CompetitorID])
);


---------------------
--  Insert Data  --
---------------------


GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Competition] ON 

GO
INSERT [dbo].[Competition] ([CompetitionID], [CompetitionName], [CompetitionStartDate], [CompetitionEndDate], [CompetitionDescription]) VALUES (1, N'ESNC2012', CAST(N'2012-04-11 00:00:00.000' AS DateTime), CAST(N'2012-04-12 00:00:00.000' AS DateTime), N'NULL')
GO
INSERT [dbo].[Competition] ([CompetitionID], [CompetitionName], [CompetitionStartDate], [CompetitionEndDate], [CompetitionDescription]) VALUES (2, N'ESNC2013', CAST(N'2013-04-23 00:00:00.000' AS DateTime), CAST(N'2013-04-25 00:00:00.000' AS DateTime), N'NULL')
GO
INSERT [dbo].[Competition] ([CompetitionID], [CompetitionName], [CompetitionStartDate], [CompetitionEndDate], [CompetitionDescription]) VALUES (3, N'ESNC2014', CAST(N'2014-04-14 00:00:00.000' AS DateTime), CAST(N'2014-04-16 00:00:00.000' AS DateTime), N'NULL')
GO
INSERT [dbo].[Competition] ([CompetitionID], [CompetitionName], [CompetitionStartDate], [CompetitionEndDate], [CompetitionDescription]) VALUES (4, N'ESNC2015', CAST(N'2015-04-28 00:00:00.000' AS DateTime), CAST(N'2015-04-30 00:00:00.000' AS DateTime), N'NULL')
GO
INSERT [dbo].[Competition] ([CompetitionID], [CompetitionName], [CompetitionStartDate], [CompetitionEndDate], [CompetitionDescription]) VALUES (5, N'ESNC2016', CAST(N'2016-05-10 00:00:00.000' AS DateTime), CAST(N'2016-05-11 00:00:00.000' AS DateTime), N'NULL')
GO
INSERT [dbo].[Competition] ([CompetitionID], [CompetitionName], [CompetitionStartDate], [CompetitionEndDate], [CompetitionDescription]) VALUES (6, N'ESNC2017', CAST(N'2017-04-18 00:00:00.000' AS DateTime), CAST(N'2017-04-20 00:00:00.000' AS DateTime), N'NULL')
GO
SET IDENTITY_INSERT [dbo].[Competition] OFF
GO
INSERT [dbo].[CompetitionSkill] ([CompetitionID], [SkillID]) VALUES (4, 2)
GO
INSERT [dbo].[CompetitionSkill] ([CompetitionID], [SkillID]) VALUES (4, 9)
GO
INSERT [dbo].[CompetitionSkill] ([CompetitionID], [SkillID]) VALUES (4, 14)
GO
INSERT [dbo].[CompetitionSkill] ([CompetitionID], [SkillID]) VALUES (4, 17)
GO
INSERT [dbo].[CompetitionSkill] ([CompetitionID], [SkillID]) VALUES (5, 2)
GO
INSERT [dbo].[CompetitionSkill] ([CompetitionID], [SkillID]) VALUES (5, 9)
GO
INSERT [dbo].[CompetitionSkill] ([CompetitionID], [SkillID]) VALUES (5, 14)
GO
INSERT [dbo].[CompetitionSkill] ([CompetitionID], [SkillID]) VALUES (5, 17)
GO
INSERT [dbo].[CompetitionSkill] ([CompetitionID], [SkillID]) VALUES (5, 23)
GO
INSERT [dbo].[CompetitionSkill] ([CompetitionID], [SkillID]) VALUES (5, 39)
GO
INSERT [dbo].[CompetitionSkill] ([CompetitionID], [SkillID]) VALUES (5, 40)
GO
INSERT [dbo].[CompetitionSkill] ([CompetitionID], [SkillID]) VALUES (5, 41)
GO
INSERT [dbo].[CompetitionSkill] ([CompetitionID], [SkillID]) VALUES (6, 2)
GO
INSERT [dbo].[CompetitionSkill] ([CompetitionID], [SkillID]) VALUES (6, 9)
GO
INSERT [dbo].[CompetitionSkill] ([CompetitionID], [SkillID]) VALUES (6, 14)
GO
INSERT [dbo].[CompetitionSkill] ([CompetitionID], [SkillID]) VALUES (6, 17)
GO
INSERT [dbo].[CompetitionSkill] ([CompetitionID], [SkillID]) VALUES (6, 23)
GO
INSERT [dbo].[CompetitionSkill] ([CompetitionID], [SkillID]) VALUES (6, 34)
GO
INSERT [dbo].[CompetitionSkill] ([CompetitionID], [SkillID]) VALUES (6, 39)
GO
INSERT [dbo].[CompetitionSkill] ([CompetitionID], [SkillID]) VALUES (6, 40)
GO
INSERT [dbo].[CompetitionSkill] ([CompetitionID], [SkillID]) VALUES (6, 41)
GO
INSERT [dbo].[CompetitionSkill] ([CompetitionID], [SkillID]) VALUES (6, 47)
GO
SET IDENTITY_INSERT [dbo].[CompetitionSkillPerson] ON 
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (1, 4, 2, N'rmartin2@thetimes.co.uk')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (2, 5, 2, N'rmartin2@thetimes.co.uk')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (3, 6, 2, N'rmartin2@thetimes.co.uk')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (4, 4, 9, N'rgibson6@macromedia.com')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (5, 5, 9, N'rgibson6@macromedia.com')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (6, 6, 9, N'rgibson6@macromedia.com')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (7, 4, 14, N'mburke7@godaddy.com')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (8, 5, 14, N'mburke7@godaddy.com')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (9, 6, 14, N'mburke7@godaddy.com')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (10, 4, 17, N'ahowardb@hexun.com')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (11, 5, 17, N'ahowardb@hexun.com')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (12, 6, 17, N'ahowardb@hexun.com')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (13, 5, 23, N'kharveym@blinklist.com')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (14, 6, 23, N'kharveym@blinklist.com')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (15, 6, 34, N'kpricep@dmoz.org')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (16, 5, 39, N'lbanksq@slashdot.org')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (17, 6, 39, N'lbanksq@slashdot.org')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (18, 5, 40, N'jandersonr@indiegogo.com')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (19, 6, 40, N'jandersonr@indiegogo.com')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (20, 5, 41, N'kalvarezv@weebly.com')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (21, 6, 41, N'kalvarezv@weebly.com')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (22, 6, 47, N'amoreno10@clickbank.net')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (23, 4, 2, N'candrews0@cnbc.com')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (24, 5, 2, N'candrews0@cnbc.com')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (25, 6, 2, N'candrews0@cnbc.com')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (26, 4, 9, N'thayes5@youtu.be')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (27, 5, 9, N'thayes5@youtu.be')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (28, 6, 9, N'thayes5@youtu.be')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (29, 4, 14, N'lsanchez9@tamu.edu')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (30, 5, 14, N'lsanchez9@tamu.edu')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (31, 6, 14, N'lsanchez9@tamu.edu')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (32, 4, 17, N'wfieldsf@cafepress.com')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (33, 5, 17, N'wfieldsf@cafepress.com')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (34, 6, 17, N'wfieldsf@cafepress.com')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (35, 5, 23, N'rwatsonw@youtu.be')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (36, 6, 23, N'rwatsonw@youtu.be')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (37, 6, 34, N'wkingx@behance.net')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (38, 5, 39, N'phally@noaa.gov')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (39, 6, 39, N'phally@noaa.gov')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (40, 5, 40, N'sfisherz@un.org')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (41, 6, 40, N'sfisherz@un.org')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (42, 5, 41, N'bwebb11@zdnet.com')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (43, 6, 41, N'bwebb11@zdnet.com')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (44, 6, 41, N'bstewartu@jimdo.com')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (45, 4, 9, N'jandrews1@oaic.gov.au')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (46, 5, 9, N'jrobertson8@spiegel.de')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (47, 4, 9, N'jsmithi@miibeian.gov.cn')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (48, 6, 23, N'bdixonj@multiply.com')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (49, 5, 17, N'pschmidtl@deviantart.com')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (50, 6, 34, N'mrileys@japanpost.jp')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (51, 6, 34, N'sortiz12@ucla.edu')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (52, 6, 23, N'lpayne13@fc2.com')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (53, 5, 39, N'jwalker15@last.fm')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (54, 5, 9, N'akim16@histats.com')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (55, 5, 40, N'lwagner17@fda.gov')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (56, 5, 9, N'mwright18@tinypic.com')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (57, 5, 14, N'mlewis19@ning.com')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (58, 5, 40, N'sjones1a@sourceforge.net')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (59, 4, 9, N'dsmith1b@blogtalkradio.com')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (60, 6, 40, N'jrobertson1d@jugem.jp')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (61, 6, 17, N'efrazier1e@live.com')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (62, 5, 40, N'greid1f@businessweek.com')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (63, 6, 34, N'cwatson1g@microsoft.com')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (64, 6, 34, N'hray1h@marriott.com')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (65, 5, 9, N'pbrown1k@businessweek.com')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (66, 5, 40, N'arivera1l@gnu.org')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (67, 5, 9, N'mwelch1m@dedecms.com')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (68, 5, 39, N'igibson1n@blinklist.com')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (69, 6, 41, N'dboyd1o@aboutads.info')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (70, 6, 40, N'aortiz1p@ucoz.ru')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (71, 6, 14, N'hwood1q@yolasite.com')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (72, 5, 41, N'clopez1r@dailymotion.com')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (73, 5, 39, N'cpierce1s@jiathis.com')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (74, 4, 9, N'gcastillo1t@java.com')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (75, 5, 14, N'poliver1u@newyorker.com')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (76, 5, 41, N'ldunn1v@imdb.com')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (77, 6, 23, N'hallen1w@mtv.com')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (78, 5, 9, N'tmatthews1x@tuttocitta.it')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (79, 4, 2, N'ewillis1z@reuters.com')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (80, 4, 9, N'charvey21@java.com')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (81, 4, 14, N'choward22@timesonline.co.uk')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (82, 4, 17, N'cwatkins23@wired.com')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (83, 4, 14, N'cbaker24@macromedia.com')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (84, 5, 9, N'pgarza25@taobao.com')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (85, 5, 41, N'fjackson26@marriott.com')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (86, 5, 41, N'nkim27@china.com.cn')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (87, 6, 34, N'jgreen29@gov.uk')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (88, 5, 41, N'njackson2b@barnesandnoble.com')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (89, 5, 23, N'treed2c@myspace.com')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (90, 6, 34, N'sjenkins2d@zdnet.com')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (91, 6, 9, N'jfranklin2e@fastcompany.com')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (92, 6, 34, N'rolson2h@sfgate.com')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (93, 6, 34, N'bbishop2i@plala.or.jp')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (94, 4, 14, N'dhernandez2j@washingtonpost.com')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (95, 6, 14, N'twright2k@diigo.com')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (96, 6, 34, N'wromero2l@huffingtonpost.com')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (97, 4, 9, N'ghughes2m@digg.com')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (98, 4, 14, N'spalmer2n@sun.com')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (99, 6, 47, N'mmontgomery2o@netlog.com')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (100, 4, 2, N'etorres2p@opera.com')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (101, 5, 40, N'jjones2q@homestead.com')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (102, 6, 34, N'eferguson2r@webs.com')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (103, 5, 14, N'tsimmons2s@tumblr.com')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (104, 6, 34, N'eaustin2t@cbslocal.com')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (105, 5, 39, N'bgarza2u@google.co.jp')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (106, 5, 14, N'swillis2v@ehow.com')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (107, 6, 23, N'wfox2w@stanford.edu')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (108, 6, 34, N'jyoung2x@ifeng.com')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (109, 4, 17, N'lparker2y@cam.ac.uk')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (110, 6, 14, N'pshaw2z@cocolog-nifty.com')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (111, 4, 9, N'scole30@bandcamp.com')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (112, 5, 14, N'mevans31@npr.org')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (113, 4, 17, N'bholmes32@salon.com')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (114, 6, 14, N'pfuller33@bluehost.com')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (115, 4, 17, N'dfox34@kickstarter.com')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (116, 5, 39, N'kwoods35@stanford.edu')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (117, 6, 23, N'kreyes36@ucsd.edu')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (118, 6, 39, N'jhart37@myspace.com')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (119, 4, 17, N'pwebb38@tamu.edu')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (120, 5, 17, N'agonzalez39@ox.ac.uk')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (121, 5, 39, N'ljackson3a@yelp.com')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (122, 6, 34, N'jwatkins3b@wordpress.com')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (123, 5, 40, N'dlawson3c@cbsnews.com')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (124, 5, 9, N'mprice3d@posterous.com')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (125, 4, 9, N'dholmes3e@huffingtonpost.com')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (126, 5, 17, N'iblack3f@de.vu')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (127, 4, 9, N'hgarcia3h@vkontakte.ru')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (128, 4, 9, N'plane3i@scribd.com')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (129, 6, 34, N'eburns3j@craigslist.org')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (130, 6, 34, N'bfuller3l@myspace.com')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (131, 6, 39, N'rholmes3m@spotify.com')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (132, 4, 14, N'aevans3n@eepurl.com')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (133, 6, 34, N'rshaw3o@ovh.net')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (134, 4, 2, N'asnyder3p@icio.us')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (135, 6, 23, N'lhall3q@posterous.com')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (136, 5, 39, N'epeters3r@comcast.net')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (137, 5, 23, N'lgreene3s@ibm.com')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (138, 4, 14, N'lrivera3t@go.com')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (139, 6, 34, N'eford3u@bloglines.com')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (140, 6, 34, N'kwashington3v@hud.gov')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (141, 6, 9, N'bmason3w@issuu.com')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (142, 5, 40, N'srichards3x@bbb.org')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (143, 5, 2, N'atucker3y@smh.com.au')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (144, 5, 17, N'swelch3z@pagesperso-orange.fr')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (145, 4, 9, N'pgutierrez40@xrea.com')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (146, 6, 34, N'pporter41@sun.com')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (147, 6, 17, N'tkelly42@friendfeed.com')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (148, 4, 2, N'lknight43@istockphoto.com')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (149, 5, 23, N'fkelley44@tamu.edu')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (150, 6, 23, N'shunt45@over-blog.com')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (151, 4, 14, N'sboyd46@virginia.edu')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (152, 6, 2, N'gburns47@360.cn')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (153, 5, 40, N'jstewart48@t-online.de')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (154, 4, 9, N'rsanders49@guardian.co.uk')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (155, 6, 23, N'swatson4a@163.com')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (156, 6, 9, N'pevans4b@purevolume.com')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (157, 5, 14, N'tjones4c@mashable.com')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (158, 4, 17, N'jspencer4d@vimeo.com')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (159, 4, 2, N'tdixon4e@plala.or.jp')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (160, 4, 14, N'hmorrison4f@amazon.co.uk')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (161, 4, 14, N'ahenderson4g@weibo.com')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (162, 4, 2, N'jkelley4h@google.com.br')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (163, 5, 23, N'rknight4i@posterous.com')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (164, 6, 23, N'ejenkins4j@barnesandnoble.com')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (165, 4, 9, N'ahanson4k@github.io')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (166, 6, 34, N'jscott4l@wufoo.com')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (167, 6, 23, N'ewallace4m@barnesandnoble.com')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (168, 6, 34, N'pjohnston4n@amazonaws.com')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (169, 6, 14, N'bnelson4o@nih.gov')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (170, 5, 39, N'tdixon4p@rambler.ru')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (171, 6, 39, N'lbailey4q@nationalgeographic.com')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (172, 5, 40, N'drogers4r@hatena.ne.jp')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (173, 4, 17, N'rweaver4s@nydailynews.com')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (174, 6, 34, N'sbennett4t@studiopress.com')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (175, 4, 14, N'jbishop4u@chicagotribune.com')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (176, 6, 23, N'rarnold4v@cpanel.net')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (177, 4, 17, N'jgriffin4w@usatoday.com')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (178, 5, 41, N'lgreene4x@admin.ch')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (179, 5, 17, N'brobinson4y@edublogs.org')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (180, 5, 17, N'dgonzalez4z@dailymail.co.uk')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (181, 4, 17, N'wjames50@soundcloud.com')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (182, 6, 34, N'mlittle51@gizmodo.com')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (183, 5, 23, N'cgonzalez52@g.co')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (184, 5, 14, N'hwilliamson53@facebook.com')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (185, 5, 39, N'chart54@people.com.cn')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (186, 5, 2, N'bramos55@who.int')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (187, 4, 14, N'nryan56@jigsy.com')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (188, 6, 34, N'cburke57@ebay.co.uk')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (189, 5, 39, N'mhayes58@epa.gov')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (190, 6, 34, N'swoods59@ocn.ne.jp')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (191, 6, 17, N'kcarr5a@google.nl')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (192, 5, 39, N'mtaylor5b@prnewswire.com')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (193, 6, 9, N'dpierce5c@e-recht24.de')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (194, 6, 47, N'sortiz5d@mapquest.com')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (195, 5, 2, N'whenry5e@oakley.com')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (196, 5, 40, N'jcollins5f@netlog.com')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (197, 5, 39, N'amurphy5g@people.com.cn')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (198, 5, 23, N'jreed5h@japanpost.jp')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (199, 4, 2, N'cvasquez5i@forbes.com')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (200, 6, 23, N'cthomas5j@mail.ru')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (201, 5, 40, N'mjordan5k@cmu.edu')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (202, 4, 17, N'jcarpenter5l@kickstarter.com')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (203, 6, 2, N'rnichols5m@canalblog.com')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (204, 4, 9, N'ahoward5n@cloudflare.com')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (205, 6, 2, N'calexander5o@reference.com')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (206, 5, 39, N'cmartin5p@constantcontact.com')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (207, 6, 17, N'abrooks5q@istockphoto.com')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (208, 5, 23, N'bnguyen5r@ycombinator.com')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (209, 4, 9, N'bmorrison5s@devhub.com')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (210, 6, 47, N'mjenkins5t@craigslist.org')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (211, 6, 34, N'bray5u@dedecms.com')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (212, 5, 41, N'jreynolds5v@usgs.gov')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (213, 6, 23, N'nmitchell5w@edublogs.org')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (214, 6, 23, N'gbennett5x@wsj.com')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (215, 6, 34, N'cwatson5y@macromedia.com')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (216, 6, 34, N'bstewart5z@noaa.gov')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (217, 6, 14, N'fclark60@jugem.jp')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (218, 5, 9, N'jgrant61@ihg.com')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (219, 4, 17, N'mgarza62@weebly.com')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (220, 6, 23, N'rwhite63@amazon.de')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (221, 6, 23, N'dkim64@studiopress.com')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (222, 6, 34, N'sjacobs65@chicagotribune.com')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (223, 5, 40, N'jgrant66@icq.com')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (224, 6, 23, N'jbrown67@hc360.com')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (225, 4, 9, N'jray68@e-recht24.de')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (226, 6, 34, N'ralexander69@domainmarket.com')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (227, 6, 34, N'nstanley6a@dailymotion.com')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (228, 4, 14, N'galexander6b@ox.ac.uk')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (229, 4, 14, N'ejohnson6c@hp.com')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (230, 5, 39, N'asanders6d@oracle.com')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (231, 6, 39, N'rporter6e@networkadvertising.org')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (232, 6, 23, N'jcarter6f@exblog.jp')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (233, 6, 2, N'rwright6g@dmoz.org')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (234, 5, 2, N'hgardner6h@zdnet.com')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (235, 5, 40, N'jlee6i@dailymotion.com')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (236, 5, 40, N'hreid6j@yelp.com')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (237, 5, 39, N'cfields6k@skype.com')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (238, 4, 9, N'dhunt6l@desdev.cn')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (239, 6, 23, N'sstevens6m@tumblr.com')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (240, 6, 23, N'tmorgan6n@vinaora.com')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (241, 5, 14, N'toliver6o@simplemachines.org')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (242, 5, 39, N'jramos6p@hp.com')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (243, 4, 2, N'mthompson6q@naver.com')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (244, 5, 39, N'lwest6r@berkeley.edu')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (245, 5, 40, N'cgraham6s@sbwire.com')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (246, 4, 9, N'mcunningham6t@ibm.com')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (247, 6, 34, N'mthompson6u@archive.org')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (248, 6, 47, N'jrice6v@hostgator.com')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (249, 6, 23, N'jgibson6w@parallels.com')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (250, 4, 17, N'erobinson6x@sciencedaily.com')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (251, 5, 17, N'bmedina6y@slideshare.net')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (252, 6, 17, N'pmcdonald6z@angelfire.com')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (253, 6, 34, N'clane70@godaddy.com')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (254, 4, 9, N'dcarr71@techcrunch.com')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (255, 5, 39, N'hhowell72@foxnews.com')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (256, 5, 14, N'cberry73@istockphoto.com')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (257, 6, 17, N'mhudson74@ifeng.com')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (258, 5, 2, N'darnold75@ehow.com')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (259, 6, 14, N'vrobertson76@nationalgeographic.com')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (260, 6, 40, N'sbrooks77@apache.org')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (261, 6, 23, N'chayes78@ustream.tv')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (262, 5, 40, N'gmoore79@soup.io')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (263, 6, 34, N'sgonzales7a@wisc.edu')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (264, 5, 39, N'cbailey7b@tmall.com')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (265, 5, 23, N'wstanley7c@washington.edu')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (266, 5, 39, N'rdaniels7d@cam.ac.uk')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (267, 6, 34, N'agordon7e@nymag.com')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (268, 5, 2, N'bfranklin7f@webeden.co.uk')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (269, 5, 40, N'wwest7g@csmonitor.com')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (270, 5, 40, N'mhart7h@xrea.com')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (271, 5, 40, N'bsullivan7i@cmu.edu')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (272, 5, 39, N'awallace7j@newyorker.com')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (273, 6, 34, N'ewillis7k@craigslist.org')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (274, 5, 40, N'jgarza7l@addtoany.com')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (275, 6, 17, N'aperry7m@addtoany.com')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (276, 5, 40, N'mbell7n@amazon.com')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (277, 6, 14, N'wbailey7o@weebly.com')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (278, 6, 17, N'cjackson7p@tripadvisor.com')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (279, 5, 2, N'hgibson7q@forbes.com')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (280, 4, 14, N'mdean7r@jiathis.com')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (281, 6, 34, N'cflores7s@constantcontact.com')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (282, 4, 14, N'jhunter7t@wp.com')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (283, 6, 23, N'vgrant7u@ebay.com')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (284, 5, 39, N'jlane7v@fda.gov')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (285, 6, 2, N'dnelson7w@discuz.net')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (286, 5, 39, N'msmith7x@ft.com')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (287, 6, 23, N'bmason7y@fema.gov')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (288, 5, 40, N'chayes7z@cocolog-nifty.com')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (289, 6, 39, N'harmstrong80@gov.uk')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (290, 5, 9, N'kcampbell81@jugem.jp')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (291, 4, 17, N'ndean82@github.com')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (292, 6, 34, N'cvasquez83@mlb.com')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (293, 6, 39, N'ebaker84@flickr.com')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (294, 5, 23, N'criley85@dyndns.org')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (295, 4, 14, N'palexander86@theglobeandmail.com')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (296, 4, 2, N'bbryant87@hostgator.com')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (297, 5, 17, N'joliver88@e-recht24.de')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (298, 5, 17, N'hperkins89@ucla.edu')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (299, 6, 41, N'dbailey8a@theguardian.com')
GO
INSERT [dbo].[CompetitionSkillPerson] ([PersonID], [CompetitionID], [SkillID], [Email]) VALUES (300, 4, 2, N'rrivera8b@tmall.com')
GO
SET IDENTITY_INSERT [dbo].[CompetitionSkillPerson] OFF
GO
SET IDENTITY_INSERT [dbo].[Competitor] ON 
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (1, N'1000-1000000   ', N'jandrews1@oaic.gov.au', N'Abu Dhabi', N'School', N'ATHS - AUH - Girls', CAST(N'2016-12-11 00:00:00.000' AS DateTime), N'ID.jpg', N'Participated')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (2, N'1000-1000001   ', N'jrobertson8@spiegel.de', N'Dubai', N'School', N'ATHS - DXB - Boys', CAST(N'2016-12-18 00:00:00.000' AS DateTime), N'ID.jpg', N'Participated')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (3, N'1000-1000002   ', N'jsmithi@miibeian.gov.cn', N'Sharjah', N'School', N'STS - Ajman - Boys', CAST(N'2016-12-04 00:00:00.000' AS DateTime), N'ID.jpg', N'Participated')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (4, N'1000-1000003   ', N'bdixonj@multiply.com', N'Ajman', N'School', N'ATHS - AJM - Boys', CAST(N'2016-12-02 00:00:00.000' AS DateTime), N'ID.jpg', N'Rejected')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (5, N'1000-1000004   ', N'pschmidtl@deviantart.com', N'Umm Al Quwain', N'School', N'ATHS - UAQ - Boys', CAST(N'2016-12-09 00:00:00.000' AS DateTime), N'ID.jpg', N'Participated')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (6, N'1000-1000005   ', N'mrileys@japanpost.jp', N'Ras Al Khaimah', N'School', N'MoE', CAST(N'2016-12-05 00:00:00.000' AS DateTime), N'ID.jpg', N'Approved')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (7, N'1000-1000006   ', N'sortiz12@ucla.edu', N'Fujairah', N'University', N'Higher Colleges of Technology', CAST(N'2016-12-12 00:00:00.000' AS DateTime), N'ID.jpg', N'Under Review')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (8, N'1000-1000007   ', N'lpayne13@fc2.com', N'Al Ain', N'School', N'ATHS - AlAin - Girls', CAST(N'2016-12-14 00:00:00.000' AS DateTime), N'ID.jpg', N'Approved')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (9, N'1000-1000008   ', N'jwalker15@last.fm', N'Western Region', N'School', N'STS - Western Region', CAST(N'2016-12-02 00:00:00.000' AS DateTime), N'ID.jpg', N'Participated')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (10, N'1000-1000009   ', N'akim16@histats.com', N'Dalma Island', N'School', N'STS - Delma', CAST(N'2016-12-01 00:00:00.000' AS DateTime), N'ID.jpg', N'Participated')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (11, N'1000-1000010   ', N'lwagner17@fda.gov', N'Abu Dhabi', N'School', N'ATHS - AUH - Girls', CAST(N'2016-12-21 00:00:00.000' AS DateTime), N'ID.jpg', N'Participated')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (12, N'1000-1000011   ', N'mwright18@tinypic.com', N'Dubai', N'University', N'Higher Colleges of Technology', CAST(N'2016-12-06 00:00:00.000' AS DateTime), N'ID.jpg', N'Participated')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (13, N'1000-1000012   ', N'mlewis19@ning.com', N'Sharjah', N'University', N'University of Sharjah', CAST(N'2016-12-02 00:00:00.000' AS DateTime), N'ID.jpg', N'Participated')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (14, N'1000-1000013   ', N'sjones1a@sourceforge.net', N'Ajman', N'School', N'ATHS - AJM - Girls', CAST(N'2016-12-17 00:00:00.000' AS DateTime), N'ID.jpg', N'Participated')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (15, N'1000-1000014   ', N'dsmith1b@blogtalkradio.com', N'Umm Al Quwain', N'School', N'ATHS - UAQ - Girls', CAST(N'2016-12-09 00:00:00.000' AS DateTime), N'ID.jpg', N'Participated')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (16, N'1000-1000015   ', N'jrobertson1d@jugem.jp', N'Ras Al Khaimah', N'School', N'MoE', CAST(N'2016-12-10 00:00:00.000' AS DateTime), N'ID.jpg', N'Under Review')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (17, N'1000-1000016   ', N'efrazier1e@live.com', N'Fujairah', N'University', N'Higher Colleges of Technology', CAST(N'2016-12-02 00:00:00.000' AS DateTime), N'ID.jpg', N'Under Review')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (18, N'1000-1000017   ', N'greid1f@businessweek.com', N'Al Ain', N'School', N'ATHS - AlAin - Boys', CAST(N'2016-12-17 00:00:00.000' AS DateTime), N'ID.jpg', N'Participated')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (19, N'1000-1000018   ', N'cwatson1g@microsoft.com', N'Western Region', N'School', N'STS - Western Region', CAST(N'2016-12-08 00:00:00.000' AS DateTime), N'ID.jpg', N'Under Review')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (20, N'1000-1000019   ', N'hray1h@marriott.com', N'Dalma Island', N'School', N'STS - Delma', CAST(N'2016-12-08 00:00:00.000' AS DateTime), N'ID.jpg', N'Under Review')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (21, N'1000-1000020   ', N'pbrown1k@businessweek.com', N'Abu Dhabi', N'University', N'Higher Colleges of Technology', CAST(N'2016-12-12 00:00:00.000' AS DateTime), N'ID.jpg', N'Participated')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (22, N'1000-1000021   ', N'arivera1l@gnu.org', N'Dubai', N'School', N'ATHS - DXB - Boys', CAST(N'2016-12-25 00:00:00.000' AS DateTime), N'ID.jpg', N'Participated')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (23, N'1000-1000022   ', N'mwelch1m@dedecms.com', N'Sharjah', N'School', N'ATHS - AJM - Girls', CAST(N'2016-12-21 00:00:00.000' AS DateTime), N'ID.jpg', N'Participated')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (24, N'1000-1000023   ', N'igibson1n@blinklist.com', N'Ajman', N'School', N'ATHS - AJM - Girls', CAST(N'2016-12-06 00:00:00.000' AS DateTime), N'ID.jpg', N'Participated')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (25, N'1000-1000024   ', N'dboyd1o@aboutads.info', N'Umm Al Quwain', N'School', N'ATHS - UAQ - Girls', CAST(N'2016-12-18 00:00:00.000' AS DateTime), N'ID.jpg', N'Under Review')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (26, N'1000-1000025   ', N'aortiz1p@ucoz.ru', N'Ras Al Khaimah', N'School', N'MoE', CAST(N'2016-12-11 00:00:00.000' AS DateTime), N'ID.jpg', N'Under Review')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (27, N'1000-1000026   ', N'hwood1q@yolasite.com', N'Fujairah', N'School', N'ATHS - FUJ - Boys', CAST(N'2016-12-13 00:00:00.000' AS DateTime), N'ID.jpg', N'Under Review')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (28, N'1000-1000027   ', N'clopez1r@dailymotion.com', N'Al Ain', N'School', N'ATHS - AlAin - Girls', CAST(N'2016-12-17 00:00:00.000' AS DateTime), N'ID.jpg', N'Participated')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (29, N'1000-1000028   ', N'cpierce1s@jiathis.com', N'Western Region', N'University', N'Higher Colleges of Technology', CAST(N'2016-12-02 00:00:00.000' AS DateTime), N'ID.jpg', N'Participated')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (30, N'1000-1000029   ', N'gcastillo1t@java.com', N'Dalma Island', N'School', N'STS - Delma', CAST(N'2016-12-10 00:00:00.000' AS DateTime), N'ID.jpg', N'Withdrawn')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (31, N'1000-1000030   ', N'poliver1u@newyorker.com', N'Abu Dhabi', N'School', N'ATHS - AUH - Boys', CAST(N'2016-12-21 00:00:00.000' AS DateTime), N'ID.jpg', N'Participated')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (32, N'1000-1000031   ', N'ldunn1v@imdb.com', N'Dubai', N'School', N'ATHS - AJM - Girls', CAST(N'2016-12-12 00:00:00.000' AS DateTime), N'ID.jpg', N'Participated')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (33, N'1000-1000032   ', N'hallen1w@mtv.com', N'Sharjah', N'School', N'STS - Ajman - Boys', CAST(N'2016-12-09 00:00:00.000' AS DateTime), N'ID.jpg', N'Rejected')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (34, N'1000-1000033   ', N'tmatthews1x@tuttocitta.it', N'Ajman', N'School', N'ATHS - AJM - Girls', CAST(N'2016-12-12 00:00:00.000' AS DateTime), N'ID.jpg', N'Participated')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (35, N'1000-1000034   ', N'ewillis1z@reuters.com', N'Umm Al Quwain', N'School', N'ATHS - UAQ - Girls', CAST(N'2016-12-12 00:00:00.000' AS DateTime), N'ID.jpg', N'Participated')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (36, N'1000-1000035   ', N'charvey21@java.com', N'Ras Al Khaimah', N'School', N'MoE', CAST(N'2016-12-20 00:00:00.000' AS DateTime), N'ID.jpg', N'Participated')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (37, N'1000-1000036   ', N'choward22@timesonline.co.uk', N'Fujairah', N'School', N'ATHS - FUJ - Boys', CAST(N'2016-12-21 00:00:00.000' AS DateTime), N'ID.jpg', N'Participated')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (38, N'1000-1000037   ', N'cwatkins23@wired.com', N'Al Ain', N'School', N'ATHS - AlAin - Girls', CAST(N'2016-12-05 00:00:00.000' AS DateTime), N'ID.jpg', N'Participated')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (39, N'1000-1000038   ', N'cbaker24@macromedia.com', N'Western Region', N'School', N'STS - Western Region', CAST(N'2016-12-22 00:00:00.000' AS DateTime), N'ID.jpg', N'Participated')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (40, N'1000-1000039   ', N'pgarza25@taobao.com', N'Dalma Island', N'School', N'STS - Delma', CAST(N'2016-12-17 00:00:00.000' AS DateTime), N'ID.jpg', N'Participated')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (41, N'1000-1000040   ', N'fjackson26@marriott.com', N'Abu Dhabi', N'School', N'ATHS - AUH - Girls', CAST(N'2016-12-16 00:00:00.000' AS DateTime), N'ID.jpg', N'Participated')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (42, N'1000-1000041   ', N'nkim27@china.com.cn', N'Dubai', N'School', N'ATHS - AJM - Girls', CAST(N'2016-12-11 00:00:00.000' AS DateTime), N'ID.jpg', N'Participated')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (43, N'1000-1000042   ', N'jgreen29@gov.uk', N'Sharjah', N'School', N'STS - Ajman - Boys', CAST(N'2016-12-02 00:00:00.000' AS DateTime), N'ID.jpg', N'Approved')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (44, N'1000-1000043   ', N'njackson2b@barnesandnoble.com', N'Ajman', N'School', N'ATHS - AJM - Girls', CAST(N'2016-12-01 00:00:00.000' AS DateTime), N'ID.jpg', N'Participated')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (45, N'1000-1000044   ', N'treed2c@myspace.com', N'Umm Al Quwain', N'School', N'ATHS - UAQ - Boys', CAST(N'2016-12-03 00:00:00.000' AS DateTime), N'ID.jpg', N'Participated')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (46, N'1000-1000045   ', N'sjenkins2d@zdnet.com', N'Ras Al Khaimah', N'School', N'ATHS - RAK - Boys', CAST(N'2016-12-14 00:00:00.000' AS DateTime), N'ID.jpg', N'Under Review')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (47, N'1000-1000046   ', N'jfranklin2e@fastcompany.com', N'Fujairah', N'University', N'Higher Colleges of Technology', CAST(N'2016-12-19 00:00:00.000' AS DateTime), N'ID.jpg', N'Under Review')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (48, N'1000-1000047   ', N'rolson2h@sfgate.com', N'Al Ain', N'University', N'United Arab Emirates University', CAST(N'2016-12-12 00:00:00.000' AS DateTime), N'ID.jpg', N'Under Review')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (49, N'1000-1000048   ', N'bbishop2i@plala.or.jp', N'Western Region', N'School', N'STS - Western Region', CAST(N'2016-12-18 00:00:00.000' AS DateTime), N'ID.jpg', N'Under Review')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (50, N'1000-1000049   ', N'dhernandez2j@washingtonpost.com', N'Dalma Island', N'School', N'STS - Delma', CAST(N'2016-12-17 00:00:00.000' AS DateTime), N'ID.jpg', N'Participated')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (51, N'1000-1000050   ', N'twright2k@diigo.com', N'Abu Dhabi', N'School', N'ATHS - AUH - Girls', CAST(N'2016-12-08 00:00:00.000' AS DateTime), N'ID.jpg', N'Under Review')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (52, N'1000-1000051   ', N'wromero2l@huffingtonpost.com', N'Dubai', N'University', N'Higher Colleges of Technology', CAST(N'2016-12-11 00:00:00.000' AS DateTime), N'ID.jpg', N'Under Review')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (53, N'1000-1000052   ', N'ghughes2m@digg.com', N'Sharjah', N'School', N'STS - Ajman - Boys', CAST(N'2016-12-19 00:00:00.000' AS DateTime), N'ID.jpg', N'Participated')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (54, N'1000-1000053   ', N'spalmer2n@sun.com', N'Ajman', N'University', N'Zayed University', CAST(N'2016-12-13 00:00:00.000' AS DateTime), N'ID.jpg', N'Participated')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (55, N'1000-1000054   ', N'mmontgomery2o@netlog.com', N'Umm Al Quwain', N'University', N'Higher Colleges of Technology', CAST(N'2016-12-02 00:00:00.000' AS DateTime), N'ID.jpg', N'Under Review')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (56, N'1000-1000055   ', N'etorres2p@opera.com', N'Ras Al Khaimah', N'School', N'MoE', CAST(N'2016-12-18 00:00:00.000' AS DateTime), N'ID.jpg', N'Participated')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (57, N'1000-1000056   ', N'jjones2q@homestead.com', N'Fujairah', N'School', N'ATHS - FUJ - Boys', CAST(N'2016-12-11 00:00:00.000' AS DateTime), N'ID.jpg', N'Participated')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (58, N'1000-1000057   ', N'eferguson2r@webs.com', N'Al Ain', N'University', N'United Arab Emirates University', CAST(N'2016-12-23 00:00:00.000' AS DateTime), N'ID.jpg', N'Under Review')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (59, N'1000-1000058   ', N'tsimmons2s@tumblr.com', N'Western Region', N'School', N'STS - Western Region', CAST(N'2016-12-20 00:00:00.000' AS DateTime), N'ID.jpg', N'Participated')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (60, N'1000-1000059   ', N'eaustin2t@cbslocal.com', N'Dalma Island', N'School', N'STS - Delma', CAST(N'2016-12-06 00:00:00.000' AS DateTime), N'ID.jpg', N'Under Review')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (61, N'1000-1000060   ', N'bgarza2u@google.co.jp', N'Abu Dhabi', N'School', N'ATHS - AUH - Boys', CAST(N'2016-12-13 00:00:00.000' AS DateTime), N'ID.jpg', N'Participated')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (62, N'1000-1000061   ', N'swillis2v@ehow.com', N'Dubai', N'School', N'ATHS - DXB - Boys', CAST(N'2016-12-16 00:00:00.000' AS DateTime), N'ID.jpg', N'Participated')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (63, N'1000-1000062   ', N'wfox2w@stanford.edu', N'Sharjah', N'School', N'STS - Ajman - Boys', CAST(N'2016-12-24 00:00:00.000' AS DateTime), N'ID.jpg', N'Approved')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (64, N'1000-1000063   ', N'jyoung2x@ifeng.com', N'Ajman', N'School', N'ATHS - AJM - Boys', CAST(N'2016-12-07 00:00:00.000' AS DateTime), N'ID.jpg', N'Under Review')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (65, N'1000-1000064   ', N'lparker2y@cam.ac.uk', N'Umm Al Quwain', N'School', N'ATHS - UAQ - Girls', CAST(N'2016-12-24 00:00:00.000' AS DateTime), N'ID.jpg', N'Participated')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (66, N'1000-1000065   ', N'pshaw2z@cocolog-nifty.com', N'Ras Al Khaimah', N'School', N'ATHS - RAK - Boys', CAST(N'2016-12-20 00:00:00.000' AS DateTime), N'ID.jpg', N'Under Review')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (67, N'1000-1000066   ', N'scole30@bandcamp.com', N'Fujairah', N'School', N'ATHS - FUJ - Boys', CAST(N'2016-12-02 00:00:00.000' AS DateTime), N'ID.jpg', N'Participated')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (68, N'1000-1000067   ', N'mevans31@npr.org', N'Al Ain', N'School', N'ATHS - AlAin - Girls', CAST(N'2016-12-02 00:00:00.000' AS DateTime), N'ID.jpg', N'Participated')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (69, N'1000-1000068   ', N'bholmes32@salon.com', N'Western Region', N'School', N'STS - Western Region', CAST(N'2016-12-05 00:00:00.000' AS DateTime), N'ID.jpg', N'Participated')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (70, N'1000-1000069   ', N'pfuller33@bluehost.com', N'Dalma Island', N'School', N'STS - Delma', CAST(N'2016-12-05 00:00:00.000' AS DateTime), N'ID.jpg', N'Under Review')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (71, N'1000-1000070   ', N'dfox34@kickstarter.com', N'Abu Dhabi', N'School', N'ATHS - AUH - Girls', CAST(N'2016-12-01 00:00:00.000' AS DateTime), N'ID.jpg', N'Participated')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (72, N'1000-1000071   ', N'kwoods35@stanford.edu', N'Dubai', N'School', N'ATHS - AJM - Girls', CAST(N'2016-12-07 00:00:00.000' AS DateTime), N'ID.jpg', N'Participated')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (73, N'1000-1000072   ', N'kreyes36@ucsd.edu', N'Sharjah', N'University', N'University of Sharjah', CAST(N'2016-12-03 00:00:00.000' AS DateTime), N'ID.jpg', N'Approved')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (74, N'1000-1000073   ', N'jhart37@myspace.com', N'Ajman', N'School', N'ATHS - AJM - Girls', CAST(N'2016-12-08 00:00:00.000' AS DateTime), N'ID.jpg', N'Under Review')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (75, N'1000-1000074   ', N'pwebb38@tamu.edu', N'Umm Al Quwain', N'School', N'ATHS - UAQ - Boys', CAST(N'2016-12-09 00:00:00.000' AS DateTime), N'ID.jpg', N'Participated')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (76, N'1000-1000075   ', N'agonzalez39@ox.ac.uk', N'Ras Al Khaimah', N'University', N'Higher Colleges of Technology', CAST(N'2016-12-11 00:00:00.000' AS DateTime), N'ID.jpg', N'Participated')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (77, N'1000-1000076   ', N'ljackson3a@yelp.com', N'Fujairah', N'School', N'MoE', CAST(N'2016-12-11 00:00:00.000' AS DateTime), N'ID.jpg', N'Participated')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (78, N'1000-1000077   ', N'jwatkins3b@wordpress.com', N'Al Ain', N'University', N'United Arab Emirates University', CAST(N'2016-12-18 00:00:00.000' AS DateTime), N'ID.jpg', N'Under Review')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (79, N'1000-1000078   ', N'dlawson3c@cbsnews.com', N'Western Region', N'School', N'STS - Western Region', CAST(N'2016-12-17 00:00:00.000' AS DateTime), N'ID.jpg', N'Participated')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (80, N'1000-1000079   ', N'mprice3d@posterous.com', N'Dalma Island', N'School', N'STS - Delma', CAST(N'2016-12-09 00:00:00.000' AS DateTime), N'ID.jpg', N'Participated')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (81, N'1000-1000080   ', N'dholmes3e@huffingtonpost.com', N'Abu Dhabi', N'School', N'ATHS - AUH - Girls', CAST(N'2016-12-15 00:00:00.000' AS DateTime), N'ID.jpg', N'Participated')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (82, N'1000-1000081   ', N'iblack3f@de.vu', N'Dubai', N'University', N'Zayed University', CAST(N'2016-12-25 00:00:00.000' AS DateTime), N'ID.jpg', N'Participated')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (83, N'1000-1000082   ', N'hgarcia3h@vkontakte.ru', N'Sharjah', N'University', N'Khalifa University', CAST(N'2016-12-01 00:00:00.000' AS DateTime), N'ID.jpg', N'Participated')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (84, N'1000-1000083   ', N'plane3i@scribd.com', N'Ajman', N'School', N'ATHS - AJM - Girls', CAST(N'2016-12-24 00:00:00.000' AS DateTime), N'ID.jpg', N'Participated')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (85, N'1000-1000084   ', N'eburns3j@craigslist.org', N'Umm Al Quwain', N'School', N'ATHS - UAQ - Boys', CAST(N'2016-12-21 00:00:00.000' AS DateTime), N'ID.jpg', N'Under Review')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (86, N'1000-1000085   ', N'bfuller3l@myspace.com', N'Ras Al Khaimah', N'School', N'ATHS - RAK - Boys', CAST(N'2016-12-20 00:00:00.000' AS DateTime), N'ID.jpg', N'Under Review')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (87, N'1000-1000086   ', N'rholmes3m@spotify.com', N'Fujairah', N'School', N'MoE', CAST(N'2016-12-22 00:00:00.000' AS DateTime), N'ID.jpg', N'Under Review')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (88, N'1000-1000087   ', N'aevans3n@eepurl.com', N'Al Ain', N'School', N'ATHS - AlAin - Boys', CAST(N'2016-12-03 00:00:00.000' AS DateTime), N'ID.jpg', N'Participated')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (89, N'1000-1000088   ', N'rshaw3o@ovh.net', N'Western Region', N'School', N'STS - Western Region', CAST(N'2016-12-19 00:00:00.000' AS DateTime), N'ID.jpg', N'Under Review')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (90, N'1000-1000089   ', N'asnyder3p@icio.us', N'Dalma Island', N'School', N'STS - Delma', CAST(N'2016-12-08 00:00:00.000' AS DateTime), N'ID.jpg', N'Participated')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (91, N'1000-1000090   ', N'lhall3q@posterous.com', N'Abu Dhabi', N'School', N'ATHS - AUH - Girls', CAST(N'2016-12-01 00:00:00.000' AS DateTime), N'ID.jpg', N'Approved')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (92, N'1000-1000091   ', N'epeters3r@comcast.net', N'Dubai', N'School', N'ATHS - DXB - Boys', CAST(N'2016-12-23 00:00:00.000' AS DateTime), N'ID.jpg', N'Participated')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (93, N'1000-1000092   ', N'lgreene3s@ibm.com', N'Sharjah', N'School', N'STS - Ajman - Boys', CAST(N'2016-12-18 00:00:00.000' AS DateTime), N'ID.jpg', N'Participated')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (94, N'1000-1000093   ', N'lrivera3t@go.com', N'Ajman', N'School', N'ATHS - AJM - Boys', CAST(N'2016-12-25 00:00:00.000' AS DateTime), N'ID.jpg', N'Participated')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (95, N'1000-1000094   ', N'eford3u@bloglines.com', N'Umm Al Quwain', N'University', N'Higher Colleges of Technology', CAST(N'2016-12-02 00:00:00.000' AS DateTime), N'ID.jpg', N'Under Review')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (96, N'1000-1000095   ', N'kwashington3v@hud.gov', N'Ras Al Khaimah', N'School', N'MoE', CAST(N'2016-12-18 00:00:00.000' AS DateTime), N'ID.jpg', N'Under Review')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (97, N'1000-1000096   ', N'bmason3w@issuu.com', N'Fujairah', N'School', N'ATHS - FUJ - Boys', CAST(N'2016-12-09 00:00:00.000' AS DateTime), N'ID.jpg', N'Under Review')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (98, N'1000-1000097   ', N'srichards3x@bbb.org', N'Al Ain', N'School', N'ATHS - AlAin - Boys', CAST(N'2016-12-06 00:00:00.000' AS DateTime), N'ID.jpg', N'Participated')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (99, N'1000-1000098   ', N'atucker3y@smh.com.au', N'Western Region', N'School', N'STS - Western Region', CAST(N'2016-12-15 00:00:00.000' AS DateTime), N'ID.jpg', N'Participated')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (100, N'1000-1000099   ', N'swelch3z@pagesperso-orange.fr', N'Dalma Island', N'School', N'STS - Delma', CAST(N'2016-12-10 00:00:00.000' AS DateTime), N'ID.jpg', N'Participated')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (101, N'1000-1000100   ', N'pgutierrez40@xrea.com', N'Abu Dhabi', N'School', N'ATHS - AUH - Boys', CAST(N'2016-12-22 00:00:00.000' AS DateTime), N'ID.jpg', N'Participated')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (102, N'1000-1000101   ', N'pporter41@sun.com', N'Dubai', N'University', N'Zayed University', CAST(N'2016-12-02 00:00:00.000' AS DateTime), N'ID.jpg', N'Under Review')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (103, N'1000-1000102   ', N'tkelly42@friendfeed.com', N'Sharjah', N'School', N'STS - Ajman - Boys', CAST(N'2016-12-19 00:00:00.000' AS DateTime), N'ID.jpg', N'Under Review')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (104, N'1000-1000103   ', N'lknight43@istockphoto.com', N'Ajman', N'University', N'Zayed University', CAST(N'2016-12-09 00:00:00.000' AS DateTime), N'ID.jpg', N'Participated')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (105, N'1000-1000104   ', N'fkelley44@tamu.edu', N'Umm Al Quwain', N'School', N'ATHS - UAQ - Boys', CAST(N'2016-12-17 00:00:00.000' AS DateTime), N'ID.jpg', N'Withdrawn')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (106, N'1000-1000105   ', N'shunt45@over-blog.com', N'Ras Al Khaimah', N'School', N'MoE', CAST(N'2016-12-11 00:00:00.000' AS DateTime), N'ID.jpg', N'Approved')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (107, N'1000-1000106   ', N'sboyd46@virginia.edu', N'Fujairah', N'School', N'ATHS - FUJ - Boys', CAST(N'2016-12-16 00:00:00.000' AS DateTime), N'ID.jpg', N'Participated')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (108, N'1000-1000107   ', N'gburns47@360.cn', N'Al Ain', N'School', N'ATHS - AlAin - Boys', CAST(N'2016-12-11 00:00:00.000' AS DateTime), N'ID.jpg', N'Under Review')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (109, N'1000-1000108   ', N'jstewart48@t-online.de', N'Western Region', N'School', N'STS - Western Region', CAST(N'2016-12-21 00:00:00.000' AS DateTime), N'ID.jpg', N'Participated')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (110, N'1000-1000109   ', N'rsanders49@guardian.co.uk', N'Dalma Island', N'School', N'STS - Delma', CAST(N'2016-12-19 00:00:00.000' AS DateTime), N'ID.jpg', N'Participated')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (111, N'1000-1000110   ', N'swatson4a@163.com', N'Abu Dhabi', N'School', N'ATHS - AUH - Girls', CAST(N'2016-12-18 00:00:00.000' AS DateTime), N'ID.jpg', N'Approved')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (112, N'1000-1000111   ', N'pevans4b@purevolume.com', N'Dubai', N'School', N'ATHS - AJM - Girls', CAST(N'2016-12-13 00:00:00.000' AS DateTime), N'ID.jpg', N'Under Review')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (113, N'1000-1000112   ', N'tjones4c@mashable.com', N'Sharjah', N'School', N'STS - Ajman - Boys', CAST(N'2016-12-05 00:00:00.000' AS DateTime), N'ID.jpg', N'Participated')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (114, N'1000-1000113   ', N'jspencer4d@vimeo.com', N'Ajman', N'University', N'Higher Colleges of Technology', CAST(N'2016-12-15 00:00:00.000' AS DateTime), N'ID.jpg', N'Participated')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (115, N'1000-1000114   ', N'tdixon4e@plala.or.jp', N'Umm Al Quwain', N'School', N'ATHS - UAQ - Boys', CAST(N'2016-12-10 00:00:00.000' AS DateTime), N'ID.jpg', N'Withdrawn')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (116, N'1000-1000115   ', N'hmorrison4f@amazon.co.uk', N'Ras Al Khaimah', N'School', N'ATHS - RAK - Boys', CAST(N'2016-12-07 00:00:00.000' AS DateTime), N'ID.jpg', N'Participated')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (117, N'1000-1000116   ', N'ahenderson4g@weibo.com', N'Fujairah', N'School', N'ATHS - FUJ - Boys', CAST(N'2016-12-05 00:00:00.000' AS DateTime), N'ID.jpg', N'Participated')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (118, N'1000-1000117   ', N'jkelley4h@google.com.br', N'Al Ain', N'University', N'United Arab Emirates University', CAST(N'2016-12-06 00:00:00.000' AS DateTime), N'ID.jpg', N'Participated')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (119, N'1000-1000118   ', N'rknight4i@posterous.com', N'Western Region', N'School', N'STS - Western Region', CAST(N'2016-12-13 00:00:00.000' AS DateTime), N'ID.jpg', N'Participated')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (120, N'1000-1000119   ', N'ejenkins4j@barnesandnoble.com', N'Dalma Island', N'School', N'STS - Delma', CAST(N'2016-12-09 00:00:00.000' AS DateTime), N'ID.jpg', N'Rejected')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (121, N'1000-1000120   ', N'ahanson4k@github.io', N'Abu Dhabi', N'University', N'Abu Dhabi University', CAST(N'2016-12-06 00:00:00.000' AS DateTime), N'ID.jpg', N'Participated')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (122, N'1000-1000121   ', N'jscott4l@wufoo.com', N'Dubai', N'School', N'ATHS - AJM - Girls', CAST(N'2016-12-19 00:00:00.000' AS DateTime), N'ID.jpg', N'Under Review')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (123, N'1000-1000122   ', N'ewallace4m@barnesandnoble.com', N'Sharjah', N'University', N'Khalifa University', CAST(N'2016-12-03 00:00:00.000' AS DateTime), N'ID.jpg', N'Approved')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (124, N'1000-1000123   ', N'pjohnston4n@amazonaws.com', N'Ajman', N'School', N'ATHS - AJM - Girls', CAST(N'2016-12-09 00:00:00.000' AS DateTime), N'ID.jpg', N'Under Review')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (125, N'1000-1000124   ', N'bnelson4o@nih.gov', N'Umm Al Quwain', N'School', N'ATHS - UAQ - Girls', CAST(N'2016-12-21 00:00:00.000' AS DateTime), N'ID.jpg', N'Under Review')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (126, N'1000-1000125   ', N'tdixon4p@rambler.ru', N'Ras Al Khaimah', N'School', N'MoE', CAST(N'2016-12-15 00:00:00.000' AS DateTime), N'ID.jpg', N'Participated')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (127, N'1000-1000126   ', N'lbailey4q@nationalgeographic.com', N'Fujairah', N'University', N'Higher Colleges of Technology', CAST(N'2016-12-04 00:00:00.000' AS DateTime), N'ID.jpg', N'Under Review')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (128, N'1000-1000127   ', N'drogers4r@hatena.ne.jp', N'Al Ain', N'School', N'ATHS - AlAin - Boys', CAST(N'2016-12-19 00:00:00.000' AS DateTime), N'ID.jpg', N'Participated')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (129, N'1000-1000128   ', N'rweaver4s@nydailynews.com', N'Western Region', N'School', N'STS - Western Region', CAST(N'2016-12-10 00:00:00.000' AS DateTime), N'ID.jpg', N'Participated')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (130, N'1000-1000129   ', N'sbennett4t@studiopress.com', N'Dalma Island', N'School', N'STS - Delma', CAST(N'2016-12-06 00:00:00.000' AS DateTime), N'ID.jpg', N'Under Review')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (131, N'1000-1000130   ', N'jbishop4u@chicagotribune.com', N'Abu Dhabi', N'School', N'ATHS - AUH - Girls', CAST(N'2016-12-22 00:00:00.000' AS DateTime), N'ID.jpg', N'Participated')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (132, N'1000-1000131   ', N'rarnold4v@cpanel.net', N'Dubai', N'School', N'ATHS - AJM - Girls', CAST(N'2016-12-18 00:00:00.000' AS DateTime), N'ID.jpg', N'Approved')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (133, N'1000-1000132   ', N'jgriffin4w@usatoday.com', N'Sharjah', N'University', N'Higher Colleges of Technology', CAST(N'2016-12-02 00:00:00.000' AS DateTime), N'ID.jpg', N'Participated')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (134, N'1000-1000133   ', N'lgreene4x@admin.ch', N'Ajman', N'School', N'ATHS - AJM - Girls', CAST(N'2016-12-04 00:00:00.000' AS DateTime), N'ID.jpg', N'Withdrawn')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (135, N'1000-1000134   ', N'brobinson4y@edublogs.org', N'Umm Al Quwain', N'School', N'ATHS - UAQ - Girls', CAST(N'2016-12-18 00:00:00.000' AS DateTime), N'ID.jpg', N'Participated')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (136, N'1000-1000135   ', N'dgonzalez4z@dailymail.co.uk', N'Ras Al Khaimah', N'School', N'ATHS - RAK - Boys', CAST(N'2016-12-04 00:00:00.000' AS DateTime), N'ID.jpg', N'Participated')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (137, N'1000-1000136   ', N'wjames50@soundcloud.com', N'Fujairah', N'School', N'ATHS - FUJ - Boys', CAST(N'2016-12-02 00:00:00.000' AS DateTime), N'ID.jpg', N'Participated')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (138, N'1000-1000137   ', N'mlittle51@gizmodo.com', N'Al Ain', N'School', N'ATHS - AlAin - Boys', CAST(N'2016-12-04 00:00:00.000' AS DateTime), N'ID.jpg', N'Under Review')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (139, N'1000-1000138   ', N'cgonzalez52@g.co', N'Western Region', N'School', N'STS - Western Region', CAST(N'2016-12-09 00:00:00.000' AS DateTime), N'ID.jpg', N'Participated')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (140, N'1000-1000139   ', N'hwilliamson53@facebook.com', N'Dalma Island', N'School', N'STS - Delma', CAST(N'2016-12-10 00:00:00.000' AS DateTime), N'ID.jpg', N'Participated')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (141, N'1000-1000140   ', N'chart54@people.com.cn', N'Abu Dhabi', N'School', N'ATHS - AUH - Boys', CAST(N'2016-12-03 00:00:00.000' AS DateTime), N'ID.jpg', N'Participated')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (142, N'1000-1000141   ', N'bramos55@who.int', N'Dubai', N'School', N'ATHS - DXB - Boys', CAST(N'2016-12-21 00:00:00.000' AS DateTime), N'ID.jpg', N'Participated')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (143, N'1000-1000142   ', N'nryan56@jigsy.com', N'Sharjah', N'University', N'Higher Colleges of Technology', CAST(N'2016-12-14 00:00:00.000' AS DateTime), N'ID.jpg', N'Participated')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (144, N'1000-1000143   ', N'cburke57@ebay.co.uk', N'Ajman', N'School', N'ATHS - AJM - Girls', CAST(N'2016-12-17 00:00:00.000' AS DateTime), N'ID.jpg', N'Under Review')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (145, N'1000-1000144   ', N'mhayes58@epa.gov', N'Umm Al Quwain', N'School', N'ATHS - UAQ - Girls', CAST(N'2016-12-03 00:00:00.000' AS DateTime), N'ID.jpg', N'Participated')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (146, N'1000-1000145   ', N'swoods59@ocn.ne.jp', N'Ras Al Khaimah', N'School', N'MoE', CAST(N'2016-12-05 00:00:00.000' AS DateTime), N'ID.jpg', N'Under Review')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (147, N'1000-1000146   ', N'kcarr5a@google.nl', N'Fujairah', N'School', N'ATHS - FUJ - Boys', CAST(N'2016-12-13 00:00:00.000' AS DateTime), N'ID.jpg', N'Under Review')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (148, N'1000-1000147   ', N'mtaylor5b@prnewswire.com', N'Al Ain', N'School', N'ATHS - AlAin - Girls', CAST(N'2016-12-06 00:00:00.000' AS DateTime), N'ID.jpg', N'Participated')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (149, N'1000-1000148   ', N'dpierce5c@e-recht24.de', N'Western Region', N'University', N'Higher Colleges of Technology', CAST(N'2016-12-11 00:00:00.000' AS DateTime), N'ID.jpg', N'Under Review')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (150, N'1000-1000149   ', N'sortiz5d@mapquest.com', N'Dalma Island', N'School', N'STS - Delma', CAST(N'2016-12-25 00:00:00.000' AS DateTime), N'ID.jpg', N'Under Review')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (151, N'1000-1000150   ', N'whenry5e@oakley.com', N'Abu Dhabi', N'School', N'ATHS - AUH - Boys', CAST(N'2016-12-12 00:00:00.000' AS DateTime), N'ID.jpg', N'Participated')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (152, N'1000-1000151   ', N'jcollins5f@netlog.com', N'Dubai', N'School', N'STS - DXB - Boys', CAST(N'2016-12-09 00:00:00.000' AS DateTime), N'ID.jpg', N'Participated')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (153, N'1000-1000152   ', N'amurphy5g@people.com.cn', N'Sharjah', N'School', N'ATHS - AJM - Girls', CAST(N'2016-12-10 00:00:00.000' AS DateTime), N'ID.jpg', N'Participated')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (154, N'1000-1000153   ', N'jreed5h@japanpost.jp', N'Ajman', N'University', N'Higher Colleges of Technology', CAST(N'2016-12-06 00:00:00.000' AS DateTime), N'ID.jpg', N'Participated')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (155, N'1000-1000154   ', N'cvasquez5i@forbes.com', N'Umm Al Quwain', N'University', N'Higher Colleges of Technology', CAST(N'2016-12-07 00:00:00.000' AS DateTime), N'ID.jpg', N'Participated')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (156, N'1000-1000155   ', N'cthomas5j@mail.ru', N'Ras Al Khaimah', N'University', N'Higher Colleges of Technology', CAST(N'2016-12-08 00:00:00.000' AS DateTime), N'ID.jpg', N'Approved')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (157, N'1000-1000156   ', N'mjordan5k@cmu.edu', N'Fujairah', N'School', N'ATHS - FUJ - Boys', CAST(N'2016-12-06 00:00:00.000' AS DateTime), N'ID.jpg', N'Participated')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (158, N'1000-1000157   ', N'jcarpenter5l@kickstarter.com', N'Al Ain', N'University', N'United Arab Emirates University', CAST(N'2016-12-01 00:00:00.000' AS DateTime), N'ID.jpg', N'Participated')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (159, N'1000-1000158   ', N'rnichols5m@canalblog.com', N'Western Region', N'School', N'STS - Western Region', CAST(N'2016-12-22 00:00:00.000' AS DateTime), N'ID.jpg', N'Approved')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (160, N'1000-1000159   ', N'ahoward5n@cloudflare.com', N'Dalma Island', N'School', N'STS - Delma', CAST(N'2016-12-12 00:00:00.000' AS DateTime), N'ID.jpg', N'Participated')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (161, N'1000-1000160   ', N'calexander5o@reference.com', N'Abu Dhabi', N'University', N'Khalifa University', CAST(N'2016-12-16 00:00:00.000' AS DateTime), N'ID.jpg', N'Rejected')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (162, N'1000-1000161   ', N'cmartin5p@constantcontact.com', N'Dubai', N'School', N'ATHS - AJM - Girls', CAST(N'2016-12-17 00:00:00.000' AS DateTime), N'ID.jpg', N'Participated')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (163, N'1000-1000162   ', N'abrooks5q@istockphoto.com', N'Sharjah', N'School', N'ATHS - AJM - Boys', CAST(N'2016-12-07 00:00:00.000' AS DateTime), N'ID.jpg', N'Under Review')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (164, N'1000-1000163   ', N'bnguyen5r@ycombinator.com', N'Ajman', N'School', N'ATHS - AJM - Girls', CAST(N'2016-12-12 00:00:00.000' AS DateTime), N'ID.jpg', N'Participated')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (165, N'1000-1000164   ', N'bmorrison5s@devhub.com', N'Umm Al Quwain', N'School', N'ATHS - UAQ - Girls', CAST(N'2016-12-05 00:00:00.000' AS DateTime), N'ID.jpg', N'Participated')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (166, N'1000-1000165   ', N'mjenkins5t@craigslist.org', N'Ras Al Khaimah', N'School', N'ATHS - RAK - Boys', CAST(N'2016-12-13 00:00:00.000' AS DateTime), N'ID.jpg', N'Under Review')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (167, N'1000-1000166   ', N'bray5u@dedecms.com', N'Fujairah', N'School', N'STS - FUJ - Boys', CAST(N'2016-12-02 00:00:00.000' AS DateTime), N'ID.jpg', N'Under Review')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (168, N'1000-1000167   ', N'jreynolds5v@usgs.gov', N'Al Ain', N'School', N'ATHS - AlAin - Girls', CAST(N'2016-12-19 00:00:00.000' AS DateTime), N'ID.jpg', N'Participated')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (169, N'1000-1000168   ', N'nmitchell5w@edublogs.org', N'Western Region', N'School', N'STS - Western Region', CAST(N'2016-12-16 00:00:00.000' AS DateTime), N'ID.jpg', N'Approved')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (170, N'1000-1000169   ', N'gbennett5x@wsj.com', N'Dalma Island', N'School', N'STS - Delma', CAST(N'2016-12-16 00:00:00.000' AS DateTime), N'ID.jpg', N'Approved')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (171, N'1000-1000170   ', N'cwatson5y@macromedia.com', N'Abu Dhabi', N'School', N'ATHS - AUH - Boys', CAST(N'2016-12-08 00:00:00.000' AS DateTime), N'ID.jpg', N'Under Review')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (172, N'1000-1000171   ', N'bstewart5z@noaa.gov', N'Dubai', N'School', N'STS - DXB - Boys', CAST(N'2016-12-18 00:00:00.000' AS DateTime), N'ID.jpg', N'Under Review')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (173, N'1000-1000172   ', N'fclark60@jugem.jp', N'Sharjah', N'School', N'ATHS - AJM - Boys', CAST(N'2016-12-24 00:00:00.000' AS DateTime), N'ID.jpg', N'Under Review')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (174, N'1000-1000173   ', N'jgrant61@ihg.com', N'Ajman', N'School', N'ATHS - AJM - Girls', CAST(N'2016-12-06 00:00:00.000' AS DateTime), N'ID.jpg', N'Participated')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (175, N'1000-1000174   ', N'mgarza62@weebly.com', N'Umm Al Quwain', N'School', N'ATHS - UAQ - Girls', CAST(N'2016-12-13 00:00:00.000' AS DateTime), N'ID.jpg', N'Participated')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (176, N'1000-1000175   ', N'rwhite63@amazon.de', N'Ras Al Khaimah', N'School', N'ATHS - RAK - Boys', CAST(N'2016-12-03 00:00:00.000' AS DateTime), N'ID.jpg', N'Approved')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (177, N'1000-1000176   ', N'dkim64@studiopress.com', N'Fujairah', N'School', N'STS - FUJ - Boys', CAST(N'2016-12-14 00:00:00.000' AS DateTime), N'ID.jpg', N'Approved')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (178, N'1000-1000177   ', N'sjacobs65@chicagotribune.com', N'Al Ain', N'School', N'ATHS - AlAin - Boys', CAST(N'2016-12-14 00:00:00.000' AS DateTime), N'ID.jpg', N'Under Review')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (179, N'1000-1000178   ', N'jgrant66@icq.com', N'Western Region', N'School', N'STS - Western Region', CAST(N'2016-12-08 00:00:00.000' AS DateTime), N'ID.jpg', N'Withdrawn')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (180, N'1000-1000179   ', N'jbrown67@hc360.com', N'Dalma Island', N'School', N'STS - Delma', CAST(N'2016-12-12 00:00:00.000' AS DateTime), N'ID.jpg', N'Approved')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (181, N'1000-1000180   ', N'jray68@e-recht24.de', N'Abu Dhabi', N'School', N'ATHS - AUH - Girls', CAST(N'2016-12-14 00:00:00.000' AS DateTime), N'ID.jpg', N'Participated')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (182, N'1000-1000181   ', N'ralexander69@domainmarket.com', N'Dubai', N'School', N'STS - DXB - Boys', CAST(N'2016-12-24 00:00:00.000' AS DateTime), N'ID.jpg', N'Under Review')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (183, N'1000-1000182   ', N'nstanley6a@dailymotion.com', N'Sharjah', N'School', N'ATHS - AJM - Girls', CAST(N'2016-12-24 00:00:00.000' AS DateTime), N'ID.jpg', N'Approved')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (184, N'1000-1000183   ', N'galexander6b@ox.ac.uk', N'Ajman', N'School', N'ATHS - AJM - Boys', CAST(N'2016-12-14 00:00:00.000' AS DateTime), N'ID.jpg', N'Participated')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (185, N'1000-1000184   ', N'ejohnson6c@hp.com', N'Umm Al Quwain', N'School', N'ATHS - UAQ - Girls', CAST(N'2016-12-17 00:00:00.000' AS DateTime), N'ID.jpg', N'Participated')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (186, N'1000-1000185   ', N'asanders6d@oracle.com', N'Ras Al Khaimah', N'School', N'ATHS - RAK - Boys', CAST(N'2016-12-07 00:00:00.000' AS DateTime), N'ID.jpg', N'Participated')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (187, N'1000-1000186   ', N'rporter6e@networkadvertising.org', N'Fujairah', N'School', N'STS - FUJ - Boys', CAST(N'2016-12-15 00:00:00.000' AS DateTime), N'ID.jpg', N'Under Review')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (188, N'1000-1000187   ', N'jcarter6f@exblog.jp', N'Al Ain', N'School', N'ATHS - AlAin - Boys', CAST(N'2016-12-19 00:00:00.000' AS DateTime), N'ID.jpg', N'Approved')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (189, N'1000-1000188   ', N'rwright6g@dmoz.org', N'Western Region', N'School', N'STS - Western Region', CAST(N'2016-12-20 00:00:00.000' AS DateTime), N'ID.jpg', N'Under Review')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (190, N'1000-1000189   ', N'hgardner6h@zdnet.com', N'Dalma Island', N'School', N'STS - Delma', CAST(N'2016-12-07 00:00:00.000' AS DateTime), N'ID.jpg', N'Participated')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (191, N'1000-1000190   ', N'jlee6i@dailymotion.com', N'Abu Dhabi', N'School', N'ATHS - AUH - Boys', CAST(N'2016-12-11 00:00:00.000' AS DateTime), N'ID.jpg', N'Participated')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (192, N'1000-1000191   ', N'hreid6j@yelp.com', N'Dubai', N'School', N'ATHS - AJM - Girls', CAST(N'2016-12-16 00:00:00.000' AS DateTime), N'ID.jpg', N'Participated')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (193, N'1000-1000192   ', N'cfields6k@skype.com', N'Sharjah', N'School', N'ATHS - AJM - Boys', CAST(N'2016-12-12 00:00:00.000' AS DateTime), N'ID.jpg', N'Participated')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (194, N'1000-1000193   ', N'dhunt6l@desdev.cn', N'Ajman', N'School', N'ATHS - AJM - Boys', CAST(N'2016-12-13 00:00:00.000' AS DateTime), N'ID.jpg', N'Participated')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (195, N'1000-1000194   ', N'sstevens6m@tumblr.com', N'Umm Al Quwain', N'School', N'ATHS - UAQ - Boys', CAST(N'2016-12-17 00:00:00.000' AS DateTime), N'ID.jpg', N'Approved')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (196, N'1000-1000195   ', N'tmorgan6n@vinaora.com', N'Ras Al Khaimah', N'School', N'ATHS - RAK - Boys', CAST(N'2016-12-14 00:00:00.000' AS DateTime), N'ID.jpg', N'Approved')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (197, N'1000-1000196   ', N'toliver6o@simplemachines.org', N'Fujairah', N'University', N'Higher Colleges of Technology', CAST(N'2016-12-08 00:00:00.000' AS DateTime), N'ID.jpg', N'Participated')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (198, N'1000-1000197   ', N'jramos6p@hp.com', N'Al Ain', N'School', N'ATHS - AlAin - Boys', CAST(N'2016-12-07 00:00:00.000' AS DateTime), N'ID.jpg', N'Participated')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (199, N'1000-1000198   ', N'mthompson6q@naver.com', N'Western Region', N'School', N'STS - Western Region', CAST(N'2016-12-02 00:00:00.000' AS DateTime), N'ID.jpg', N'Participated')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (200, N'1000-1000199   ', N'lwest6r@berkeley.edu', N'Dalma Island', N'School', N'STS - Delma', CAST(N'2016-12-02 00:00:00.000' AS DateTime), N'ID.jpg', N'Participated')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (201, N'1000-1000200   ', N'cgraham6s@sbwire.com', N'Abu Dhabi', N'University', N'Khalifa University', CAST(N'2016-12-25 00:00:00.000' AS DateTime), N'ID.jpg', N'Participated')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (202, N'1000-1000201   ', N'mcunningham6t@ibm.com', N'Dubai', N'School', N'ATHS - AJM - Girls', CAST(N'2016-12-23 00:00:00.000' AS DateTime), N'ID.jpg', N'Participated')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (203, N'1000-1000202   ', N'mthompson6u@archive.org', N'Sharjah', N'School', N'ATHS - AJM - Girls', CAST(N'2016-12-22 00:00:00.000' AS DateTime), N'ID.jpg', N'Under Review')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (204, N'1000-1000203   ', N'jrice6v@hostgator.com', N'Ajman', N'School', N'STS - Ajman - Boys', CAST(N'2016-12-02 00:00:00.000' AS DateTime), N'ID.jpg', N'Under Review')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (205, N'1000-1000204   ', N'jgibson6w@parallels.com', N'Umm Al Quwain', N'University', N'Higher Colleges of Technology', CAST(N'2016-12-06 00:00:00.000' AS DateTime), N'ID.jpg', N'Approved')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (206, N'1000-1000205   ', N'erobinson6x@sciencedaily.com', N'Ras Al Khaimah', N'School', N'ATHS - RAK - Boys', CAST(N'2016-12-24 00:00:00.000' AS DateTime), N'ID.jpg', N'Participated')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (207, N'1000-1000206   ', N'bmedina6y@slideshare.net', N'Fujairah', N'School', N'STS - FUJ - Boys', CAST(N'2016-12-18 00:00:00.000' AS DateTime), N'ID.jpg', N'Participated')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (208, N'1000-1000207   ', N'pmcdonald6z@angelfire.com', N'Al Ain', N'School', N'ATHS - AlAin - Girls', CAST(N'2016-12-17 00:00:00.000' AS DateTime), N'ID.jpg', N'Under Review')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (209, N'1000-1000208   ', N'clane70@godaddy.com', N'Western Region', N'School', N'STS - Western Region', CAST(N'2016-12-06 00:00:00.000' AS DateTime), N'ID.jpg', N'Under Review')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (210, N'1000-1000209   ', N'dcarr71@techcrunch.com', N'Dalma Island', N'School', N'STS - Delma', CAST(N'2016-12-10 00:00:00.000' AS DateTime), N'ID.jpg', N'Participated')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (211, N'1000-1000210   ', N'hhowell72@foxnews.com', N'Abu Dhabi', N'University', N'Abu Dhabi Polytechnic ', CAST(N'2016-12-03 00:00:00.000' AS DateTime), N'ID.jpg', N'Participated')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (212, N'1000-1000211   ', N'cberry73@istockphoto.com', N'Dubai', N'School', N'STS - DXB - Boys', CAST(N'2016-12-22 00:00:00.000' AS DateTime), N'ID.jpg', N'Participated')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (213, N'1000-1000212   ', N'mhudson74@ifeng.com', N'Sharjah', N'School', N'ATHS - AJM - Girls', CAST(N'2016-12-15 00:00:00.000' AS DateTime), N'ID.jpg', N'Under Review')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (214, N'1000-1000213   ', N'darnold75@ehow.com', N'Ajman', N'School', N'STS - AJM - Girls', CAST(N'2016-12-21 00:00:00.000' AS DateTime), N'ID.jpg', N'Participated')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (215, N'1000-1000214   ', N'vrobertson76@nationalgeographic.com', N'Umm Al Quwain', N'University', N'Higher Colleges of Technology', CAST(N'2016-12-12 00:00:00.000' AS DateTime), N'ID.jpg', N'Under Review')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (216, N'1000-1000215   ', N'sbrooks77@apache.org', N'Ras Al Khaimah', N'School', N'MoE', CAST(N'2016-12-08 00:00:00.000' AS DateTime), N'ID.jpg', N'Under Review')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (217, N'1000-1000216   ', N'chayes78@ustream.tv', N'Fujairah', N'University', N'Higher Colleges of Technology', CAST(N'2016-12-24 00:00:00.000' AS DateTime), N'ID.jpg', N'Approved')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (218, N'1000-1000217   ', N'gmoore79@soup.io', N'Al Ain', N'School', N'ATHS - AlAin - Boys', CAST(N'2016-12-17 00:00:00.000' AS DateTime), N'ID.jpg', N'Participated')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (219, N'1000-1000218   ', N'sgonzales7a@wisc.edu', N'Western Region', N'School', N'STS - Western Region', CAST(N'2016-12-07 00:00:00.000' AS DateTime), N'ID.jpg', N'Under Review')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (220, N'1000-1000219   ', N'cbailey7b@tmall.com', N'Dalma Island', N'School', N'STS - Delma', CAST(N'2016-12-01 00:00:00.000' AS DateTime), N'ID.jpg', N'Participated')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (221, N'1000-1000220   ', N'wstanley7c@washington.edu', N'Abu Dhabi', N'School', N'ATHS - AUH - Boys', CAST(N'2016-12-19 00:00:00.000' AS DateTime), N'ID.jpg', N'Participated')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (222, N'1000-1000221   ', N'rdaniels7d@cam.ac.uk', N'Dubai', N'School', N'STS - DXB - Boys', CAST(N'2016-12-20 00:00:00.000' AS DateTime), N'ID.jpg', N'Participated')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (223, N'1000-1000222   ', N'agordon7e@nymag.com', N'Sharjah', N'School', N'ATHS - AJM - Girls', CAST(N'2016-12-01 00:00:00.000' AS DateTime), N'ID.jpg', N'Approved')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (224, N'1000-1000223   ', N'bfranklin7f@webeden.co.uk', N'Ajman', N'University', N'University of Sharjah', CAST(N'2016-12-19 00:00:00.000' AS DateTime), N'ID.jpg', N'Participated')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (225, N'1000-1000224   ', N'wwest7g@csmonitor.com', N'Umm Al Quwain', N'School', N'ATHS - UAQ - Boys', CAST(N'2016-12-19 00:00:00.000' AS DateTime), N'ID.jpg', N'Participated')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (226, N'1000-1000225   ', N'mhart7h@xrea.com', N'Ras Al Khaimah', N'School', N'MoE', CAST(N'2016-12-15 00:00:00.000' AS DateTime), N'ID.jpg', N'Participated')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (227, N'1000-1000226   ', N'bsullivan7i@cmu.edu', N'Fujairah', N'University', N'Higher Colleges of Technology', CAST(N'2016-12-15 00:00:00.000' AS DateTime), N'ID.jpg', N'Participated')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (228, N'1000-1000227   ', N'awallace7j@newyorker.com', N'Al Ain', N'School', N'ATHS - AlAin - Boys', CAST(N'2016-12-07 00:00:00.000' AS DateTime), N'ID.jpg', N'Participated')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (229, N'1000-1000228   ', N'ewillis7k@craigslist.org', N'Western Region', N'School', N'STS - Western Region', CAST(N'2016-12-23 00:00:00.000' AS DateTime), N'ID.jpg', N'Approved')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (230, N'1000-1000229   ', N'jgarza7l@addtoany.com', N'Dalma Island', N'School', N'STS - Delma', CAST(N'2016-12-02 00:00:00.000' AS DateTime), N'ID.jpg', N'Participated')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (231, N'1000-1000230   ', N'aperry7m@addtoany.com', N'Abu Dhabi', N'University', N'Zayed University', CAST(N'2016-12-16 00:00:00.000' AS DateTime), N'ID.jpg', N'Under Review')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (232, N'1000-1000231   ', N'mbell7n@amazon.com', N'Dubai', N'School', N'ATHS - AJM - Girls', CAST(N'2016-12-01 00:00:00.000' AS DateTime), N'ID.jpg', N'Participated')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (233, N'1000-1000232   ', N'wbailey7o@weebly.com', N'Sharjah', N'School', N'ATHS - AJM - Boys', CAST(N'2016-12-11 00:00:00.000' AS DateTime), N'ID.jpg', N'Under Review')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (234, N'1000-1000233   ', N'cjackson7p@tripadvisor.com', N'Ajman', N'School', N'STS - Ajman - Boys', CAST(N'2016-12-07 00:00:00.000' AS DateTime), N'ID.jpg', N'Under Review')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (235, N'1000-1000234   ', N'hgibson7q@forbes.com', N'Umm Al Quwain', N'School', N'ATHS - UAQ - Boys', CAST(N'2016-12-10 00:00:00.000' AS DateTime), N'ID.jpg', N'Participated')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (236, N'1000-1000235   ', N'mdean7r@jiathis.com', N'Ras Al Khaimah', N'School', N'MoE', CAST(N'2016-12-22 00:00:00.000' AS DateTime), N'ID.jpg', N'Participated')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (237, N'1000-1000236   ', N'cflores7s@constantcontact.com', N'Fujairah', N'School', N'STS - FUJ - Boys', CAST(N'2016-12-14 00:00:00.000' AS DateTime), N'ID.jpg', N'Under Review')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (238, N'1000-1000237   ', N'jhunter7t@wp.com', N'Al Ain', N'School', N'ATHS - AlAin - Boys', CAST(N'2016-12-01 00:00:00.000' AS DateTime), N'ID.jpg', N'Participated')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (239, N'1000-1000238   ', N'vgrant7u@ebay.com', N'Western Region', N'School', N'STS - Western Region', CAST(N'2016-12-24 00:00:00.000' AS DateTime), N'ID.jpg', N'Approved')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (240, N'1000-1000239   ', N'jlane7v@fda.gov', N'Dalma Island', N'School', N'STS - Delma', CAST(N'2016-12-01 00:00:00.000' AS DateTime), N'ID.jpg', N'Participated')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (241, N'1000-1000240   ', N'dnelson7w@discuz.net', N'Abu Dhabi', N'University', N'Zayed University', CAST(N'2016-12-21 00:00:00.000' AS DateTime), N'ID.jpg', N'Under Review')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (242, N'1000-1000241   ', N'msmith7x@ft.com', N'Dubai', N'University', N'Higher Colleges of Technology', CAST(N'2016-12-07 00:00:00.000' AS DateTime), N'ID.jpg', N'Participated')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (243, N'1000-1000242   ', N'bmason7y@fema.gov', N'Sharjah', N'School', N'ATHS - AJM - Girls', CAST(N'2016-12-22 00:00:00.000' AS DateTime), N'ID.jpg', N'Approved')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (244, N'1000-1000243   ', N'chayes7z@cocolog-nifty.com', N'Ajman', N'School', N'STS - AJM - Girls', CAST(N'2016-12-23 00:00:00.000' AS DateTime), N'ID.jpg', N'Participated')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (245, N'1000-1000244   ', N'harmstrong80@gov.uk', N'Umm Al Quwain', N'School', N'ATHS - UAQ - Boys', CAST(N'2016-12-05 00:00:00.000' AS DateTime), N'ID.jpg', N'Under Review')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (246, N'1000-1000245   ', N'kcampbell81@jugem.jp', N'Ras Al Khaimah', N'University', N'Higher Colleges of Technology', CAST(N'2016-12-03 00:00:00.000' AS DateTime), N'ID.jpg', N'Withdrawn')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (247, N'1000-1000246   ', N'ndean82@github.com', N'Fujairah', N'School', N'MoE', CAST(N'2016-12-08 00:00:00.000' AS DateTime), N'ID.jpg', N'Participated')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (248, N'1000-1000247   ', N'cvasquez83@mlb.com', N'Al Ain', N'School', N'ATHS - AlAin - Girls', CAST(N'2016-12-15 00:00:00.000' AS DateTime), N'ID.jpg', N'Under Review')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (249, N'1000-1000248   ', N'ebaker84@flickr.com', N'Western Region', N'School', N'STS - Western Region', CAST(N'2016-12-18 00:00:00.000' AS DateTime), N'ID.jpg', N'Under Review')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (250, N'1000-1000249   ', N'criley85@dyndns.org', N'Dalma Island', N'School', N'STS - Delma', CAST(N'2016-12-12 00:00:00.000' AS DateTime), N'ID.jpg', N'Participated')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (251, N'1000-1000250   ', N'palexander86@theglobeandmail.com', N'Abu Dhabi', N'School', N'ATHS - AUH - Girls', CAST(N'2016-12-14 00:00:00.000' AS DateTime), N'ID.jpg', N'Participated')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (252, N'1000-1000251   ', N'bbryant87@hostgator.com', N'Dubai', N'School', N'STS - DXB - Boys', CAST(N'2016-12-23 00:00:00.000' AS DateTime), N'ID.jpg', N'Participated')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (253, N'1000-1000252   ', N'joliver88@e-recht24.de', N'Sharjah', N'School', N'ATHS - AJM - Girls', CAST(N'2016-12-21 00:00:00.000' AS DateTime), N'ID.jpg', N'Participated')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (254, N'1000-1000253   ', N'hperkins89@ucla.edu', N'Ajman', N'School', N'STS - Ajman - Boys', CAST(N'2016-12-16 00:00:00.000' AS DateTime), N'ID.jpg', N'Participated')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (255, N'1000-1000254   ', N'dbailey8a@theguardian.com', N'Umm Al Quwain', N'School', N'ATHS - UAQ - Girls', CAST(N'2016-12-24 00:00:00.000' AS DateTime), N'ID.jpg', N'Under Review')
GO
INSERT [dbo].[Competitor] ([RegistrationID], [EmiratesID], [Email], [City], [AffiliationType], [AffiliationName], [RegistrationDateTime], [EmiratesIDPhoto], [RegistrationStatus]) VALUES (256, N'1000-1000255   ', N'rrivera8b@tmall.com', N'Ras Al Khaimah', N'School', N'ATHS - RAK - Boys', CAST(N'2016-12-24 00:00:00.000' AS DateTime), N'ID.jpg', N'Participated')
GO
SET IDENTITY_INSERT [dbo].[Competitor] OFF
GO
INSERT [dbo].[FinalScore] ([CompetitorID], [Score]) VALUES (1, CAST(85.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[FinalScore] ([CompetitorID], [Score]) VALUES (2, CAST(80.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[FinalScore] ([CompetitorID], [Score]) VALUES (3, CAST(80.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[FinalScore] ([CompetitorID], [Score]) VALUES (5, CAST(77.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[FinalScore] ([CompetitorID], [Score]) VALUES (9, CAST(81.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[FinalScore] ([CompetitorID], [Score]) VALUES (10, CAST(80.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[FinalScore] ([CompetitorID], [Score]) VALUES (11, CAST(74.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[FinalScore] ([CompetitorID], [Score]) VALUES (12, CAST(81.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[FinalScore] ([CompetitorID], [Score]) VALUES (13, CAST(71.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[FinalScore] ([CompetitorID], [Score]) VALUES (14, CAST(70.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[FinalScore] ([CompetitorID], [Score]) VALUES (15, CAST(99.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[FinalScore] ([CompetitorID], [Score]) VALUES (18, CAST(94.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[FinalScore] ([CompetitorID], [Score]) VALUES (21, CAST(97.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[FinalScore] ([CompetitorID], [Score]) VALUES (22, CAST(71.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[FinalScore] ([CompetitorID], [Score]) VALUES (23, CAST(90.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[FinalScore] ([CompetitorID], [Score]) VALUES (24, CAST(94.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[FinalScore] ([CompetitorID], [Score]) VALUES (28, CAST(76.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[FinalScore] ([CompetitorID], [Score]) VALUES (29, CAST(75.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[FinalScore] ([CompetitorID], [Score]) VALUES (30, CAST(74.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[FinalScore] ([CompetitorID], [Score]) VALUES (31, CAST(95.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[FinalScore] ([CompetitorID], [Score]) VALUES (32, CAST(81.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[FinalScore] ([CompetitorID], [Score]) VALUES (34, CAST(94.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[FinalScore] ([CompetitorID], [Score]) VALUES (35, CAST(73.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[FinalScore] ([CompetitorID], [Score]) VALUES (36, CAST(88.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[FinalScore] ([CompetitorID], [Score]) VALUES (37, CAST(79.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[FinalScore] ([CompetitorID], [Score]) VALUES (38, CAST(88.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[FinalScore] ([CompetitorID], [Score]) VALUES (39, CAST(99.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[FinalScore] ([CompetitorID], [Score]) VALUES (40, CAST(96.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[FinalScore] ([CompetitorID], [Score]) VALUES (41, CAST(83.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[FinalScore] ([CompetitorID], [Score]) VALUES (42, CAST(72.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[FinalScore] ([CompetitorID], [Score]) VALUES (44, CAST(80.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[FinalScore] ([CompetitorID], [Score]) VALUES (45, CAST(94.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[FinalScore] ([CompetitorID], [Score]) VALUES (50, CAST(85.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[FinalScore] ([CompetitorID], [Score]) VALUES (53, CAST(78.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[FinalScore] ([CompetitorID], [Score]) VALUES (54, CAST(85.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[FinalScore] ([CompetitorID], [Score]) VALUES (56, CAST(87.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[FinalScore] ([CompetitorID], [Score]) VALUES (57, CAST(83.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[FinalScore] ([CompetitorID], [Score]) VALUES (59, CAST(80.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[FinalScore] ([CompetitorID], [Score]) VALUES (61, CAST(89.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[FinalScore] ([CompetitorID], [Score]) VALUES (62, CAST(84.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[FinalScore] ([CompetitorID], [Score]) VALUES (65, CAST(96.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[FinalScore] ([CompetitorID], [Score]) VALUES (67, CAST(83.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[FinalScore] ([CompetitorID], [Score]) VALUES (68, CAST(87.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[FinalScore] ([CompetitorID], [Score]) VALUES (69, CAST(79.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[FinalScore] ([CompetitorID], [Score]) VALUES (71, CAST(89.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[FinalScore] ([CompetitorID], [Score]) VALUES (72, CAST(86.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[FinalScore] ([CompetitorID], [Score]) VALUES (75, CAST(97.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[FinalScore] ([CompetitorID], [Score]) VALUES (76, CAST(96.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[FinalScore] ([CompetitorID], [Score]) VALUES (77, CAST(94.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[FinalScore] ([CompetitorID], [Score]) VALUES (79, CAST(70.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[FinalScore] ([CompetitorID], [Score]) VALUES (80, CAST(96.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[FinalScore] ([CompetitorID], [Score]) VALUES (81, CAST(98.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[FinalScore] ([CompetitorID], [Score]) VALUES (82, CAST(72.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[FinalScore] ([CompetitorID], [Score]) VALUES (83, CAST(76.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[FinalScore] ([CompetitorID], [Score]) VALUES (84, CAST(99.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[FinalScore] ([CompetitorID], [Score]) VALUES (88, CAST(84.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[FinalScore] ([CompetitorID], [Score]) VALUES (90, CAST(94.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[FinalScore] ([CompetitorID], [Score]) VALUES (92, CAST(88.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[FinalScore] ([CompetitorID], [Score]) VALUES (93, CAST(70.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[FinalScore] ([CompetitorID], [Score]) VALUES (94, CAST(80.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[FinalScore] ([CompetitorID], [Score]) VALUES (98, CAST(93.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[FinalScore] ([CompetitorID], [Score]) VALUES (99, CAST(86.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[FinalScore] ([CompetitorID], [Score]) VALUES (100, CAST(89.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[FinalScore] ([CompetitorID], [Score]) VALUES (101, CAST(94.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[FinalScore] ([CompetitorID], [Score]) VALUES (104, CAST(72.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[FinalScore] ([CompetitorID], [Score]) VALUES (105, CAST(94.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[FinalScore] ([CompetitorID], [Score]) VALUES (107, CAST(95.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[FinalScore] ([CompetitorID], [Score]) VALUES (109, CAST(92.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[FinalScore] ([CompetitorID], [Score]) VALUES (110, CAST(84.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[FinalScore] ([CompetitorID], [Score]) VALUES (113, CAST(81.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[FinalScore] ([CompetitorID], [Score]) VALUES (114, CAST(99.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[FinalScore] ([CompetitorID], [Score]) VALUES (115, CAST(92.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[FinalScore] ([CompetitorID], [Score]) VALUES (116, CAST(71.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[FinalScore] ([CompetitorID], [Score]) VALUES (117, CAST(78.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[FinalScore] ([CompetitorID], [Score]) VALUES (118, CAST(96.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[FinalScore] ([CompetitorID], [Score]) VALUES (119, CAST(83.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[FinalScore] ([CompetitorID], [Score]) VALUES (121, CAST(87.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[FinalScore] ([CompetitorID], [Score]) VALUES (126, CAST(78.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[FinalScore] ([CompetitorID], [Score]) VALUES (128, CAST(80.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[FinalScore] ([CompetitorID], [Score]) VALUES (129, CAST(77.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[FinalScore] ([CompetitorID], [Score]) VALUES (131, CAST(95.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[FinalScore] ([CompetitorID], [Score]) VALUES (133, CAST(84.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[FinalScore] ([CompetitorID], [Score]) VALUES (134, CAST(70.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[FinalScore] ([CompetitorID], [Score]) VALUES (135, CAST(82.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[FinalScore] ([CompetitorID], [Score]) VALUES (136, CAST(87.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[FinalScore] ([CompetitorID], [Score]) VALUES (137, CAST(79.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[FinalScore] ([CompetitorID], [Score]) VALUES (139, CAST(92.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[FinalScore] ([CompetitorID], [Score]) VALUES (140, CAST(80.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[FinalScore] ([CompetitorID], [Score]) VALUES (141, CAST(97.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[FinalScore] ([CompetitorID], [Score]) VALUES (142, CAST(92.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[FinalScore] ([CompetitorID], [Score]) VALUES (143, CAST(78.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[FinalScore] ([CompetitorID], [Score]) VALUES (145, CAST(97.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[FinalScore] ([CompetitorID], [Score]) VALUES (148, CAST(96.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[FinalScore] ([CompetitorID], [Score]) VALUES (151, CAST(78.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[FinalScore] ([CompetitorID], [Score]) VALUES (152, CAST(92.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[FinalScore] ([CompetitorID], [Score]) VALUES (153, CAST(77.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[FinalScore] ([CompetitorID], [Score]) VALUES (154, CAST(83.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[FinalScore] ([CompetitorID], [Score]) VALUES (155, CAST(94.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[FinalScore] ([CompetitorID], [Score]) VALUES (157, CAST(91.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[FinalScore] ([CompetitorID], [Score]) VALUES (158, CAST(92.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[FinalScore] ([CompetitorID], [Score]) VALUES (160, CAST(88.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[FinalScore] ([CompetitorID], [Score]) VALUES (162, CAST(90.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[FinalScore] ([CompetitorID], [Score]) VALUES (164, CAST(85.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[FinalScore] ([CompetitorID], [Score]) VALUES (165, CAST(79.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[FinalScore] ([CompetitorID], [Score]) VALUES (168, CAST(73.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[FinalScore] ([CompetitorID], [Score]) VALUES (174, CAST(92.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[FinalScore] ([CompetitorID], [Score]) VALUES (175, CAST(77.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[FinalScore] ([CompetitorID], [Score]) VALUES (179, CAST(88.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[FinalScore] ([CompetitorID], [Score]) VALUES (181, CAST(93.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[FinalScore] ([CompetitorID], [Score]) VALUES (184, CAST(88.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[FinalScore] ([CompetitorID], [Score]) VALUES (185, CAST(91.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[FinalScore] ([CompetitorID], [Score]) VALUES (186, CAST(81.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[FinalScore] ([CompetitorID], [Score]) VALUES (190, CAST(75.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[FinalScore] ([CompetitorID], [Score]) VALUES (191, CAST(75.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[FinalScore] ([CompetitorID], [Score]) VALUES (192, CAST(89.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[FinalScore] ([CompetitorID], [Score]) VALUES (193, CAST(99.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[FinalScore] ([CompetitorID], [Score]) VALUES (194, CAST(71.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[FinalScore] ([CompetitorID], [Score]) VALUES (197, CAST(83.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[FinalScore] ([CompetitorID], [Score]) VALUES (198, CAST(96.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[FinalScore] ([CompetitorID], [Score]) VALUES (199, CAST(75.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[FinalScore] ([CompetitorID], [Score]) VALUES (200, CAST(82.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[FinalScore] ([CompetitorID], [Score]) VALUES (201, CAST(83.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[FinalScore] ([CompetitorID], [Score]) VALUES (202, CAST(70.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[FinalScore] ([CompetitorID], [Score]) VALUES (206, CAST(81.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[FinalScore] ([CompetitorID], [Score]) VALUES (207, CAST(88.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[FinalScore] ([CompetitorID], [Score]) VALUES (210, CAST(71.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[FinalScore] ([CompetitorID], [Score]) VALUES (211, CAST(92.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[FinalScore] ([CompetitorID], [Score]) VALUES (212, CAST(76.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[FinalScore] ([CompetitorID], [Score]) VALUES (214, CAST(72.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[FinalScore] ([CompetitorID], [Score]) VALUES (218, CAST(88.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[FinalScore] ([CompetitorID], [Score]) VALUES (220, CAST(76.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[FinalScore] ([CompetitorID], [Score]) VALUES (221, CAST(80.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[FinalScore] ([CompetitorID], [Score]) VALUES (222, CAST(79.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[FinalScore] ([CompetitorID], [Score]) VALUES (224, CAST(70.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[FinalScore] ([CompetitorID], [Score]) VALUES (225, CAST(74.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[FinalScore] ([CompetitorID], [Score]) VALUES (226, CAST(87.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[FinalScore] ([CompetitorID], [Score]) VALUES (227, CAST(74.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[FinalScore] ([CompetitorID], [Score]) VALUES (228, CAST(98.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[FinalScore] ([CompetitorID], [Score]) VALUES (230, CAST(99.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[FinalScore] ([CompetitorID], [Score]) VALUES (232, CAST(94.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[FinalScore] ([CompetitorID], [Score]) VALUES (235, CAST(76.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[FinalScore] ([CompetitorID], [Score]) VALUES (236, CAST(85.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[FinalScore] ([CompetitorID], [Score]) VALUES (238, CAST(91.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[FinalScore] ([CompetitorID], [Score]) VALUES (240, CAST(80.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[FinalScore] ([CompetitorID], [Score]) VALUES (242, CAST(96.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[FinalScore] ([CompetitorID], [Score]) VALUES (244, CAST(79.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[FinalScore] ([CompetitorID], [Score]) VALUES (246, CAST(75.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[FinalScore] ([CompetitorID], [Score]) VALUES (247, CAST(74.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[FinalScore] ([CompetitorID], [Score]) VALUES (250, CAST(96.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[FinalScore] ([CompetitorID], [Score]) VALUES (251, CAST(77.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[FinalScore] ([CompetitorID], [Score]) VALUES (252, CAST(79.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[FinalScore] ([CompetitorID], [Score]) VALUES (253, CAST(82.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[FinalScore] ([CompetitorID], [Score]) VALUES (254, CAST(88.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[FinalScore] ([CompetitorID], [Score]) VALUES (256, CAST(81.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (N'A ', N'Administrator')
GO
INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (N'C ', N'Competitor')
GO
INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (N'CE', N'Chief Expert')
GO
INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (N'E ', N'Expert')
GO
INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (N'V ', N'Volunteer')
GO
INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (N'WM', N'Workshop Manager')
GO
SET IDENTITY_INSERT [dbo].[Skill] ON 

GO
INSERT [dbo].[Skill] ([SkillID], [SkillName], [SkillDescription]) VALUES (1, N'Polymechanics and Automation', N'NULL')
GO
INSERT [dbo].[Skill] ([SkillID], [SkillName], [SkillDescription]) VALUES (2, N'Information Network Cabling', N'NULL')
GO
INSERT [dbo].[Skill] ([SkillID], [SkillName], [SkillDescription]) VALUES (3, N'Manufacturing Team Challenge', N'NULL')
GO
INSERT [dbo].[Skill] ([SkillID], [SkillName], [SkillDescription]) VALUES (4, N'Mechatronics', N'NULL')
GO
INSERT [dbo].[Skill] ([SkillID], [SkillName], [SkillDescription]) VALUES (5, N'Mechanical Engineering CAD', N'NULL')
GO
INSERT [dbo].[Skill] ([SkillID], [SkillName], [SkillDescription]) VALUES (6, N'CNC Turning', N'NULL')
GO
INSERT [dbo].[Skill] ([SkillID], [SkillName], [SkillDescription]) VALUES (7, N'CNC Milling', N'NULL')
GO
INSERT [dbo].[Skill] ([SkillID], [SkillName], [SkillDescription]) VALUES (8, N'Architectural Stonemasonry', N'NULL')
GO
INSERT [dbo].[Skill] ([SkillID], [SkillName], [SkillDescription]) VALUES (9, N'IT Software Solutions for Business', N'NULL')
GO
INSERT [dbo].[Skill] ([SkillID], [SkillName], [SkillDescription]) VALUES (10, N'Welding', N'NULL')
GO
INSERT [dbo].[Skill] ([SkillID], [SkillName], [SkillDescription]) VALUES (11, N'Print Media Technology', N'NULL')
GO
INSERT [dbo].[Skill] ([SkillID], [SkillName], [SkillDescription]) VALUES (12, N'Wall and Floor Tiling', N'NULL')
GO
INSERT [dbo].[Skill] ([SkillID], [SkillName], [SkillDescription]) VALUES (13, N'Autobody Repair', N'NULL')
GO
INSERT [dbo].[Skill] ([SkillID], [SkillName], [SkillDescription]) VALUES (14, N'Aircraft Maintenance', N'NULL')
GO
INSERT [dbo].[Skill] ([SkillID], [SkillName], [SkillDescription]) VALUES (15, N'Plumbing and Heating', N'NULL')
GO
INSERT [dbo].[Skill] ([SkillID], [SkillName], [SkillDescription]) VALUES (16, N'Electronics', N'NULL')
GO
INSERT [dbo].[Skill] ([SkillID], [SkillName], [SkillDescription]) VALUES (17, N'Web Design and Development', N'NULL')
GO
INSERT [dbo].[Skill] ([SkillID], [SkillName], [SkillDescription]) VALUES (18, N'Electrical Installations', N'NULL')
GO
INSERT [dbo].[Skill] ([SkillID], [SkillName], [SkillDescription]) VALUES (19, N'Industrial Control', N'NULL')
GO
INSERT [dbo].[Skill] ([SkillID], [SkillName], [SkillDescription]) VALUES (20, N'Bricklaying', N'NULL')
GO
INSERT [dbo].[Skill] ([SkillID], [SkillName], [SkillDescription]) VALUES (21, N'Plastering and Drywall Systems', N'NULL')
GO
INSERT [dbo].[Skill] ([SkillID], [SkillName], [SkillDescription]) VALUES (22, N'Painting and Decorating', N'NULL')
GO
INSERT [dbo].[Skill] ([SkillID], [SkillName], [SkillDescription]) VALUES (23, N'Mobile Robotics', N'NULL')
GO
INSERT [dbo].[Skill] ([SkillID], [SkillName], [SkillDescription]) VALUES (24, N'Cabinetmaking', N'NULL')
GO
INSERT [dbo].[Skill] ([SkillID], [SkillName], [SkillDescription]) VALUES (25, N'Joinery', N'NULL')
GO
INSERT [dbo].[Skill] ([SkillID], [SkillName], [SkillDescription]) VALUES (26, N'Carpentry', N'NULL')
GO
INSERT [dbo].[Skill] ([SkillID], [SkillName], [SkillDescription]) VALUES (27, N'Jewellery', N'NULL')
GO
INSERT [dbo].[Skill] ([SkillID], [SkillName], [SkillDescription]) VALUES (28, N'Floristry', N'NULL')
GO
INSERT [dbo].[Skill] ([SkillID], [SkillName], [SkillDescription]) VALUES (29, N'Hairdressing', N'NULL')
GO
INSERT [dbo].[Skill] ([SkillID], [SkillName], [SkillDescription]) VALUES (30, N'Beauty Therapy', N'NULL')
GO
INSERT [dbo].[Skill] ([SkillID], [SkillName], [SkillDescription]) VALUES (31, N'Fashion Technology', N'NULL')
GO
INSERT [dbo].[Skill] ([SkillID], [SkillName], [SkillDescription]) VALUES (32, N'Patisserie and Confectionery', N'NULL')
GO
INSERT [dbo].[Skill] ([SkillID], [SkillName], [SkillDescription]) VALUES (33, N'Automobile Technology', N'NULL')
GO
INSERT [dbo].[Skill] ([SkillID], [SkillName], [SkillDescription]) VALUES (34, N'Cooking', N'NULL')
GO
INSERT [dbo].[Skill] ([SkillID], [SkillName], [SkillDescription]) VALUES (35, N'Restaurant Service', N'NULL')
GO
INSERT [dbo].[Skill] ([SkillID], [SkillName], [SkillDescription]) VALUES (36, N'Car Painting', N'NULL')
GO
INSERT [dbo].[Skill] ([SkillID], [SkillName], [SkillDescription]) VALUES (37, N'Ladscape Gardening', N'NULL')
GO
INSERT [dbo].[Skill] ([SkillID], [SkillName], [SkillDescription]) VALUES (38, N'Refrigeration and Air Conditioning', N'NULL')
GO
INSERT [dbo].[Skill] ([SkillID], [SkillName], [SkillDescription]) VALUES (39, N'IT Network System Administration', N'NULL')
GO
INSERT [dbo].[Skill] ([SkillID], [SkillName], [SkillDescription]) VALUES (40, N'Graphic Design Technology', N'NULL')
GO
INSERT [dbo].[Skill] ([SkillID], [SkillName], [SkillDescription]) VALUES (41, N'Health and Social Care', N'NULL')
GO
INSERT [dbo].[Skill] ([SkillID], [SkillName], [SkillDescription]) VALUES (42, N'Construction Metal Work', N'NULL')
GO
INSERT [dbo].[Skill] ([SkillID], [SkillName], [SkillDescription]) VALUES (43, N'Plastic Die Engineering', N'NULL')
GO
INSERT [dbo].[Skill] ([SkillID], [SkillName], [SkillDescription]) VALUES (44, N'Visual Merchandising', N'NULL')
GO
INSERT [dbo].[Skill] ([SkillID], [SkillName], [SkillDescription]) VALUES (45, N'Prototype Modelling', N'NULL')
GO
INSERT [dbo].[Skill] ([SkillID], [SkillName], [SkillDescription]) VALUES (46, N'Concrete Construction Work', N'NULL')
GO
INSERT [dbo].[Skill] ([SkillID], [SkillName], [SkillDescription]) VALUES (47, N'Bakery', N'NULL')
GO
INSERT [dbo].[Skill] ([SkillID], [SkillName], [SkillDescription]) VALUES (48, N'Industrial Mechanic Millwright', N'NULL')
GO
INSERT [dbo].[Skill] ([SkillID], [SkillName], [SkillDescription]) VALUES (49, N'Heavy Vehicle Maintenance', N'NULL')
GO
INSERT [dbo].[Skill] ([SkillID], [SkillName], [SkillDescription]) VALUES (50, N'Carpentry for Special Needs', N'NULL')
GO
INSERT [dbo].[Skill] ([SkillID], [SkillName], [SkillDescription]) VALUES (51, N'Electrical Installations for Special Needs', N'NULL')
GO
INSERT [dbo].[Skill] ([SkillID], [SkillName], [SkillDescription]) VALUES (52, N'Electronics for Special Needs', N'NULL')
GO
INSERT [dbo].[Skill] ([SkillID], [SkillName], [SkillDescription]) VALUES (53, N'Fashion Technology for Special Needs', N'NULL')
GO
INSERT [dbo].[Skill] ([SkillID], [SkillName], [SkillDescription]) VALUES (54, N'Jewellery for Special Needs', N'NULL')
GO
INSERT [dbo].[Skill] ([SkillID], [SkillName], [SkillDescription]) VALUES (55, N'Traditional Competition - Barqaa', N'NULL')
GO
INSERT [dbo].[Skill] ([SkillID], [SkillName], [SkillDescription]) VALUES (56, N'Traditional Competition - Hebal', N'NULL')
GO
INSERT [dbo].[Skill] ([SkillID], [SkillName], [SkillDescription]) VALUES (57, N'Traditional Competition - Tali', N'NULL')
GO
INSERT [dbo].[Skill] ([SkillID], [SkillName], [SkillDescription]) VALUES (58, N'Electrical Installations for Juniors', N'NULL')
GO
INSERT [dbo].[Skill] ([SkillID], [SkillName], [SkillDescription]) VALUES (59, N'Floristry for Juniors', N'NULL')
GO
INSERT [dbo].[Skill] ([SkillID], [SkillName], [SkillDescription]) VALUES (60, N'Graphic Design for Juniors', N'NULL')
GO
INSERT [dbo].[Skill] ([SkillID], [SkillName], [SkillDescription]) VALUES (61, N'IT Software Solutions for Juniors', N'NULL')
GO
INSERT [dbo].[Skill] ([SkillID], [SkillName], [SkillDescription]) VALUES (62, N'Mobile Robotics for Juniors', N'NULL')
GO
INSERT [dbo].[Skill] ([SkillID], [SkillName], [SkillDescription]) VALUES (63, N'Web Design for Juniors', N'NULL')
GO
SET IDENTITY_INSERT [dbo].[Skill] OFF
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'abrooks5q@istockphoto.com', N'jAUMq76L12', N'Anthony Brooks', N'Male', CAST(N'2002-02-15 00:00:00.000' AS DateTime), N'501211265', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'abutlerd@tmall.com', N'LCDSuu#6', N'Ashley Butler', N'Female', CAST(N'2002-10-27 00:00:00.000' AS DateTime), N'506790122', N'Photo.jpg', N'V ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'aevans3n@eepurl.com', N'UGQhsj7', N'Adam Evans', N'Male', CAST(N'1999-03-17 00:00:00.000' AS DateTime), N'501211190', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'agonzalez39@ox.ac.uk', N'RR2VHbbFW!7', N'Amanda Gonzalez', N'Female', CAST(N'1998-11-16 00:00:00.000' AS DateTime), N'501211176', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'agordon7e@nymag.com', N'gC41xBQNId913', N'Annie Gordon', N'Female', CAST(N'2001-12-18 00:00:00.000' AS DateTime), N'501211325', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'ahanson4k@github.io', N'lBGL3eIQ6y11', N'Ann Hanson', N'Female', CAST(N'1998-01-06 00:00:00.000' AS DateTime), N'501211223', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'ahenderson4g@weibo.com', N'NYP1Zhn2Ss#9', N'Arthur Henderson', N'Male', CAST(N'2001-06-09 00:00:00.000' AS DateTime), N'501211219', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'ahoward5n@cloudflare.com', N'faUSZ511', N'Andrew Howard', N'Male', CAST(N'1999-12-03 00:00:00.000' AS DateTime), N'501211262', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'ahowardb@hexun.com', N'vXGYSt1A6', N'Aaron Howard', N'Male', CAST(N'1991-11-12 00:00:00.000' AS DateTime), N'504567900', N'Photo.jpg', N'CE')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'akim16@histats.com', N'xKFW5ZJ14b!2', N'Annie Kim', N'Female', CAST(N'1999-06-30 00:00:00.000' AS DateTime), N'551000026', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'amoreno10@clickbank.net', N'0JPqKKw!6', N'Albert Moreno', N'Male', CAST(N'1982-08-30 00:00:00.000' AS DateTime), N'551000020', N'Photo.jpg', N'CE')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'amurphy5g@people.com.cn', N'TUSGAsyz#8', N'Anne Murphy', N'Female', CAST(N'2002-06-05 00:00:00.000' AS DateTime), N'501211255', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'aortiz1p@ucoz.ru', N'LBBdJF2DD#9', N'Anne Ortiz', N'Female', CAST(N'2001-03-23 00:00:00.000' AS DateTime), N'501211120', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'aperry7m@addtoany.com', N'YymE5639Ym#8', N'Albert Perry', N'Male', CAST(N'1998-09-24 00:00:00.000' AS DateTime), N'501211333', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'apeterson3k@tiny.cc', N'W8nS2KZlyS6', N'Aaron Peterson', N'Male', CAST(N'1998-05-26 00:00:00.000' AS DateTime), N'501211187', N'Photo.jpg', N'V ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'arivera1l@gnu.org', N'73hGy6Ybk!7', N'Antonio Rivera', N'Male', CAST(N'2000-09-17 00:00:00.000' AS DateTime), N'501211116', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'asanders6d@oracle.com', N'Qc2Uyv7NfW2#13', N'Adam Sanders', N'Male', CAST(N'2000-02-03 00:00:00.000' AS DateTime), N'501211288', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'asnyder3p@icio.us', N'6vCiv0IHph#7', N'Albert Snyder', N'Male', CAST(N'2001-12-02 00:00:00.000' AS DateTime), N'501211192', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'atucker3y@smh.com.au', N'0DGH5HcTXq#10', N'Anna Tucker', N'Female', CAST(N'1999-07-23 00:00:00.000' AS DateTime), N'501211201', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'awallace7j@newyorker.com', N'A0azXvArDH#14', N'Aaron Wallace', N'Male', CAST(N'2001-04-23 00:00:00.000' AS DateTime), N'501211330', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'bbarnes20@netscape.com', N'BByKfk7rm1l!5', N'Brandon Barnes', N'Male', CAST(N'2002-04-16 00:00:00.000' AS DateTime), N'501211131', N'Photo.jpg', N'V ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'bbishop2i@plala.or.jp', N'0SPq32O0!5', N'Brenda Bishop', N'Female', CAST(N'2000-12-02 00:00:00.000' AS DateTime), N'501211149', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'bbryant87@hostgator.com', N'xt12274Rg#9', N'Brian Bryant', N'Male', CAST(N'2002-11-21 00:00:00.000' AS DateTime), N'501211354', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'bdixonj@multiply.com', N'masMG7RGLP#8', N'Billy Dixon', N'Male', CAST(N'2001-10-12 00:00:00.000' AS DateTime), N'551000003', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'bfranklin7f@webeden.co.uk', N'UFpjW9W7wyo!12', N'Billy Franklin', N'Male', CAST(N'1998-01-11 00:00:00.000' AS DateTime), N'501211326', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'bfuller3l@myspace.com', N'zbO1fsg!5', N'Brandon Fuller', N'Male', CAST(N'2002-09-04 00:00:00.000' AS DateTime), N'501211188', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'bgarza2u@google.co.jp', N'd9HS85O8!9', N'Bruce Garza', N'Male', CAST(N'1999-05-15 00:00:00.000' AS DateTime), N'501211161', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'bholmes32@salon.com', N'n0iyMTE91FGh6', N'Bruce Holmes', N'Male', CAST(N'2002-07-16 00:00:00.000' AS DateTime), N'501211169', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'bmason3w@issuu.com', N'QgFk6SXe3by010', N'Brandon Mason', N'Male', CAST(N'2001-04-12 00:00:00.000' AS DateTime), N'501211199', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'bmason7y@fema.gov', N'UZVvcJ2bc#12', N'Barbara Mason', N'Female', CAST(N'2002-05-02 00:00:00.000' AS DateTime), N'501211345', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'bmedina6y@slideshare.net', N'St74WU9#13', N'Benjamin Medina', N'Male', CAST(N'2002-01-26 00:00:00.000' AS DateTime), N'501211309', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'bmorrison5s@devhub.com', N'WVTe2A#12', N'Brenda Morrison', N'Female', CAST(N'2000-11-05 00:00:00.000' AS DateTime), N'501211267', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'bnelson4o@nih.gov', N'PNbIe0ajrfm3!5', N'Betty Nelson', N'Female', CAST(N'2002-06-09 00:00:00.000' AS DateTime), N'501211227', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'bnguyen5r@ycombinator.com', N'5hVUcdE!11', N'Betty Nguyen', N'Female', CAST(N'2002-06-08 00:00:00.000' AS DateTime), N'501211266', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'bramos55@who.int', N'UmoasvrtJEU12', N'Brian Ramos', N'Male', CAST(N'1999-07-15 00:00:00.000' AS DateTime), N'501211244', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'bray5u@dedecms.com', N'oIWSmbMciN!6', N'Brandon Ray', N'Male', CAST(N'2000-03-26 00:00:00.000' AS DateTime), N'501211269', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'brobinson4y@edublogs.org', N'9SVCmZhH#9', N'Bonnie Robinson', N'Female', CAST(N'1999-05-23 00:00:00.000' AS DateTime), N'501211237', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'bstewart5z@noaa.gov', N'51yD8Z9', N'Bruce Stewart', N'Male', CAST(N'2001-03-13 00:00:00.000' AS DateTime), N'501211274', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'bstewartu@jimdo.com', N'NYYTHA!4', N'Brenda Stewart', N'Female', CAST(N'1992-06-03 00:00:00.000' AS DateTime), N'551000014', N'Photo.jpg', N'WM')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'bsullivan7i@cmu.edu', N'67vB7G!13', N'Betty Sullivan', N'Female', CAST(N'1998-03-13 00:00:00.000' AS DateTime), N'501211329', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'bwebb11@zdnet.com', N'qfPXDV#7', N'Bobby Webb', N'Male', CAST(N'1978-01-21 00:00:00.000' AS DateTime), N'551000021', N'Photo.jpg', N'E ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'calexander5o@reference.com', N'zxMsvq5vFg!10', N'Craig Alexander', N'Male', CAST(N'1998-05-27 00:00:00.000' AS DateTime), N'501211263', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'candrews0@cnbc.com', N'iWMK5lfkKY!1', N'Cynthia Andrews', N'Female', CAST(N'1990-07-10 00:00:00.000' AS DateTime), N'501122334', N'Photo.jpg', N'E ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'cbailey7b@tmall.com', N'c3exmSij29h12', N'Clarence Bailey', N'Male', CAST(N'2002-03-02 00:00:00.000' AS DateTime), N'501211322', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'cbaker24@macromedia.com', N'eUmHI1Iq#7', N'Charles Baker', N'Male', CAST(N'2002-10-05 00:00:00.000' AS DateTime), N'501211135', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'cberry73@istockphoto.com', N'UrVK2T!8', N'Chris Berry', N'Male', CAST(N'2002-06-24 00:00:00.000' AS DateTime), N'501211314', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'cburke57@ebay.co.uk', N'EPCvwQlxx#12', N'Christina Burke', N'Female', CAST(N'2000-11-22 00:00:00.000' AS DateTime), N'501211246', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'cevansc@feedburner.com', N'pkwYehNfcdqG!5', N'Carol Evans', N'Female', CAST(N'2001-12-30 00:00:00.000' AS DateTime), N'505679011', N'Photo.jpg', N'V ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'cfields6k@skype.com', N'kW7ONhkJmP9', N'Clarence Fields', N'Male', CAST(N'2002-12-23 00:00:00.000' AS DateTime), N'501211295', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'cflores7s@constantcontact.com', N'du9Mm0xo#10', N'Charles Flores', N'Male', CAST(N'2000-09-27 00:00:00.000' AS DateTime), N'501211339', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'cgonzalez52@g.co', N'53jvldr96m11', N'Christopher Gonzalez', N'Male', CAST(N'2002-01-26 00:00:00.000' AS DateTime), N'501211241', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'cgraham6s@sbwire.com', N'KsMq6z21VcQ#11', N'Christina Graham', N'Female', CAST(N'1998-09-27 00:00:00.000' AS DateTime), N'501211303', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'chart54@people.com.cn', N'tA5n0t#11', N'Carl Hart', N'Male', CAST(N'2002-03-01 00:00:00.000' AS DateTime), N'501211243', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'charvey21@java.com', N'DPBsVD4mzV6v#6', N'Cheryl Harvey', N'Female', CAST(N'1999-11-18 00:00:00.000' AS DateTime), N'501211132', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'chayes78@ustream.tv', N'6CPUeT11', N'Cheryl Hayes', N'Female', CAST(N'1998-08-31 00:00:00.000' AS DateTime), N'501211319', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'chayes7z@cocolog-nifty.com', N'T7bl1YuLJrr13', N'Carol Hayes', N'Female', CAST(N'1999-08-24 00:00:00.000' AS DateTime), N'501211346', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'choward22@timesonline.co.uk', N'xcaxTwO47', N'Christopher Howard', N'Male', CAST(N'2001-08-10 00:00:00.000' AS DateTime), N'501211133', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'cjackson7p@tripadvisor.com', N'gkyE0vbkMIUH#9', N'Christopher Jackson', N'Male', CAST(N'2000-06-26 00:00:00.000' AS DateTime), N'501211336', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'clane70@godaddy.com', N'9O9dBgCc!7', N'Carlos Lane', N'Male', CAST(N'1999-02-23 00:00:00.000' AS DateTime), N'501211311', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'clopez1r@dailymotion.com', N'SLAr9yc!2', N'Cynthia Lopez', N'Female', CAST(N'1999-05-04 00:00:00.000' AS DateTime), N'501211122', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'cmartin5p@constantcontact.com', N'5kbvz1#11', N'Carolyn Martin', N'Female', CAST(N'1999-07-05 00:00:00.000' AS DateTime), N'501211264', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'cmorales28@gizmodo.com', N'kC0UMl9', N'Christopher Morales', N'Male', CAST(N'2000-03-14 00:00:00.000' AS DateTime), N'501211139', N'Photo.jpg', N'V ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'cpierce1s@jiathis.com', N'wgsesNg4TG#3', N'Christine Pierce', N'Female', CAST(N'1998-12-12 00:00:00.000' AS DateTime), N'501211123', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'criley85@dyndns.org', N'ByBiCPz6QF15', N'Christina Riley', N'Female', CAST(N'1999-02-18 00:00:00.000' AS DateTime), N'501211352', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'cthomas5j@mail.ru', N'wf1UHcJqrybd#9', N'Cynthia Thomas', N'Female', CAST(N'1998-06-21 00:00:00.000' AS DateTime), N'501211258', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'cvasquez5i@forbes.com', N'y6Jb88e!8', N'Christopher Vasquez', N'Male', CAST(N'1998-07-11 00:00:00.000' AS DateTime), N'501211257', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'cvasquez83@mlb.com', N'WTqPdbtW!13', N'Cheryl Vasquez', N'Female', CAST(N'2001-09-20 00:00:00.000' AS DateTime), N'501211350', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'cwatkins23@wired.com', N'HQjdmdF7vm4!6', N'Christina Watkins', N'Female', CAST(N'1999-08-21 00:00:00.000' AS DateTime), N'501211134', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'cwatson1g@microsoft.com', N'sRrYBch3UrS#6', N'Carl Watson', N'Male', CAST(N'2001-07-29 00:00:00.000' AS DateTime), N'501211111', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'cwatson5y@macromedia.com', N'1IUiuCmCl#8', N'Carl Watson', N'Male', CAST(N'2000-04-27 00:00:00.000' AS DateTime), N'501211273', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'darnold75@ehow.com', N'dxscYFRtK10', N'Diana Arnold', N'Female', CAST(N'2000-01-12 00:00:00.000' AS DateTime), N'501211316', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'dbailey8a@theguardian.com', N'GpPLhVrP#10', N'Deborah Bailey', N'Female', CAST(N'2002-05-23 00:00:00.000' AS DateTime), N'501211357', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'dboyd1o@aboutads.info', N'BKEyjk!8', N'Diane Boyd', N'Female', CAST(N'2001-05-30 00:00:00.000' AS DateTime), N'501211119', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'dcarr71@techcrunch.com', N'UvfRXaA#8', N'Dennis Carr', N'Male', CAST(N'2001-04-01 00:00:00.000' AS DateTime), N'501211312', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'dellis4@cargocollective.com', N'AZ0Ny0z#3', N'Debra Ellis', N'Female', CAST(N'1999-10-03 00:00:00.000' AS DateTime), N'505566778', N'Photo.jpg', N'V ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'dfox34@kickstarter.com', N'gRT1P3G#6', N'Deborah Fox', N'Female', CAST(N'2000-11-30 00:00:00.000' AS DateTime), N'501211171', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'dgonzalez4z@dailymail.co.uk', N'FOb0Ng2gEQ810', N'David Gonzalez', N'Male', CAST(N'2001-02-01 00:00:00.000' AS DateTime), N'501211238', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'dhernandez2j@washingtonpost.com', N'nXFouoB#6', N'David Hernandez', N'Male', CAST(N'1999-02-06 00:00:00.000' AS DateTime), N'501211150', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'dholmes3e@huffingtonpost.com', N'1p7xsP10', N'Dorothy Holmes', N'Female', CAST(N'1999-03-16 00:00:00.000' AS DateTime), N'501211181', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'dhunt6l@desdev.cn', N'88kIsHtrYAA!8', N'Daniel Hunt', N'Male', CAST(N'1999-03-29 00:00:00.000' AS DateTime), N'501211296', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'dkim64@studiopress.com', N'HTeNiqeLEc#10', N'Daniel Kim', N'Male', CAST(N'2001-03-21 00:00:00.000' AS DateTime), N'501211279', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'dlawson3c@cbsnews.com', N'bKuLakOHDcHJ!8', N'Denise Lawson', N'Female', CAST(N'1999-07-12 00:00:00.000' AS DateTime), N'501211179', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'dnelson7w@discuz.net', N'Qqq1PZ12', N'Diana Nelson', N'Female', CAST(N'1998-04-15 00:00:00.000' AS DateTime), N'501211343', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'dpierce5c@e-recht24.de', N'WYxJiK!6', N'Donald Pierce', N'Male', CAST(N'1998-03-27 00:00:00.000' AS DateTime), N'501211251', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'drogers4r@hatena.ne.jp', N'F5IJvMm0dmp!6', N'Douglas Rogers', N'Male', CAST(N'1999-06-29 00:00:00.000' AS DateTime), N'501211230', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'dsmith1b@blogtalkradio.com', N'cW2EXeIgw5', N'Donna Smith', N'Female', CAST(N'2002-10-11 00:00:00.000' AS DateTime), N'551000031', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'eaustin2t@cbslocal.com', N'N7R0cTc10', N'Earl Austin', N'Male', CAST(N'1998-03-22 00:00:00.000' AS DateTime), N'501211160', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'ebaker84@flickr.com', N'jReG1yXxc5J#14', N'Edward Baker', N'Male', CAST(N'2000-08-28 00:00:00.000' AS DateTime), N'501211351', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'eburns3j@craigslist.org', N'6mJvCcE#5', N'Eric Burns', N'Male', CAST(N'2000-08-17 00:00:00.000' AS DateTime), N'501211186', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'eferguson2r@webs.com', N'FLpGYtMid37e!8', N'Evelyn Ferguson', N'Female', CAST(N'1998-11-22 00:00:00.000' AS DateTime), N'501211158', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'eford3u@bloglines.com', N'PcQzsn!8', N'Eric Ford', N'Male', CAST(N'1998-02-12 00:00:00.000' AS DateTime), N'501211197', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'efrazier1e@live.com', N'miXUZ5NIlO6', N'Edward Frazier', N'Male', CAST(N'1998-01-15 00:00:00.000' AS DateTime), N'551000034', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'ejenkins4j@barnesandnoble.com', N'1v48enC#10', N'Ernest Jenkins', N'Male', CAST(N'2002-12-06 00:00:00.000' AS DateTime), N'501211222', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'ejohnson6c@hp.com', N'IYrGDQ!12', N'Emily Johnson', N'Female', CAST(N'2002-10-14 00:00:00.000' AS DateTime), N'501211287', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'epeters3r@comcast.net', N'VadJc3I0b5XQ!7', N'Eugene Peters', N'Male', CAST(N'2001-04-15 00:00:00.000' AS DateTime), N'501211194', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'erobinson6x@sciencedaily.com', N'XWUHU8O!12', N'Eric Robinson', N'Male', CAST(N'2000-09-09 00:00:00.000' AS DateTime), N'501211308', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'etorres2p@opera.com', N'tsnzOUei2#8', N'Emily Torres', N'Female', CAST(N'2002-06-16 00:00:00.000' AS DateTime), N'501211156', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'ewallace4m@barnesandnoble.com', N'qxkluT1VL#11', N'Eugene Wallace', N'Male', CAST(N'1998-07-21 00:00:00.000' AS DateTime), N'501211225', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'ewillis1z@reuters.com', N'm7cTtNRy6', N'Emily Willis', N'Female', CAST(N'1999-05-21 00:00:00.000' AS DateTime), N'501211130', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'ewillis7k@craigslist.org', N'kekfFy7aNer15', N'Emily Willis', N'Female', CAST(N'1999-01-02 00:00:00.000' AS DateTime), N'501211331', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'fclark60@jugem.jp', N'cYV6Ip1t1u8!8', N'Frank Clark', N'Male', CAST(N'2002-01-26 00:00:00.000' AS DateTime), N'501211275', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'fjackson26@marriott.com', N'7NTGY8u!7', N'Frances Jackson', N'Female', CAST(N'1999-05-13 00:00:00.000' AS DateTime), N'501211137', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'fkelley44@tamu.edu', N'6M8vuh#5', N'Fred Kelley', N'Male', CAST(N'2001-08-16 00:00:00.000' AS DateTime), N'501211207', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'fwagner14@goodreads.com', N'B4HFxbUmQ#8', N'Fred Wagner', N'Male', CAST(N'1999-10-10 00:00:00.000' AS DateTime), N'551000024', N'Photo.jpg', N'V ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'fwarren2f@google.pl', N'WAtUxdz7PtEX!4', N'Fred Warren', N'Male', CAST(N'2001-03-27 00:00:00.000' AS DateTime), N'501211146', N'Photo.jpg', N'V ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'galexander6b@ox.ac.uk', N'arOC8EnkU613', N'Gary Alexander', N'Male', CAST(N'2002-11-06 00:00:00.000' AS DateTime), N'501211286', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'gbennett5x@wsj.com', N'gHV8oyNoj!7', N'George Bennett', N'Male', CAST(N'1998-09-25 00:00:00.000' AS DateTime), N'501211272', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'gburns47@360.cn', N'7Go4128LF#6', N'Gary Burns', N'Male', CAST(N'1999-08-08 00:00:00.000' AS DateTime), N'501211210', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'gcastillo1t@java.com', N'scTlNfeG4', N'George Castillo', N'Male', CAST(N'1998-11-20 00:00:00.000' AS DateTime), N'501211124', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'ghamilton1c@huffingtonpost.com', N'lakCou32!4', N'Gary Hamilton', N'Male', CAST(N'1991-08-10 00:00:00.000' AS DateTime), N'551000032', N'Photo.jpg', N'WM')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'ghughes2m@digg.com', N'nqYlK2sZ#7', N'Gary Hughes', N'Male', CAST(N'1999-05-28 00:00:00.000' AS DateTime), N'501211153', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'gmoore79@soup.io', N'yQZCBpTOP!10', N'George Moore', N'Male', CAST(N'1999-09-30 00:00:00.000' AS DateTime), N'501211320', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'greid1f@businessweek.com', N'G8YECaW!5', N'Gregory Reid', N'Male', CAST(N'2001-02-03 00:00:00.000' AS DateTime), N'551000035', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'hallen1w@mtv.com', N'pUMrMpiGmaPx5', N'Harold Allen', N'Male', CAST(N'2001-05-03 00:00:00.000' AS DateTime), N'501211127', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'harmstrong80@gov.uk', N'X4rTxOv!12', N'Henry Armstrong', N'Male', CAST(N'1999-01-28 00:00:00.000' AS DateTime), N'501211347', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'hgarcia3h@vkontakte.ru', N'UiKY0s11', N'Heather Garcia', N'Female', CAST(N'1998-09-28 00:00:00.000' AS DateTime), N'501211184', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'hgardner6h@zdnet.com', N'mvV2crzXMK9z8', N'Harry Gardner', N'Male', CAST(N'2001-10-06 00:00:00.000' AS DateTime), N'501211292', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'hgibson7q@forbes.com', N'OZd7sqRm210', N'Harold Gibson', N'Male', CAST(N'2000-02-07 00:00:00.000' AS DateTime), N'501211337', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'hhowell72@foxnews.com', N'l3Lny3MZS9', N'Harry Howell', N'Male', CAST(N'1998-08-13 00:00:00.000' AS DateTime), N'501211313', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'hmorrison4f@amazon.co.uk', N'pv1dSz!8', N'Howard Morrison', N'Male', CAST(N'1999-12-17 00:00:00.000' AS DateTime), N'501211218', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'hperkins89@ucla.edu', N'8ly4VEm2Iy!9', N'Harold Perkins', N'Male', CAST(N'1999-10-24 00:00:00.000' AS DateTime), N'501211356', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'hray1h@marriott.com', N'u067Yw5MFilH7', N'Helen Ray', N'Female', CAST(N'1998-12-05 00:00:00.000' AS DateTime), N'501211112', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'hreid6j@yelp.com', N'BuhJdkV#8', N'Helen Reid', N'Female', CAST(N'2001-02-05 00:00:00.000' AS DateTime), N'501211294', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'hwilliamson53@facebook.com', N'QCUY6PJ4r!10', N'Heather Williamson', N'Female', CAST(N'2001-10-16 00:00:00.000' AS DateTime), N'501211242', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'hwood1q@yolasite.com', N'VpM1ZnaYTyOu10', N'Harold Wood', N'Male', CAST(N'2002-09-03 00:00:00.000' AS DateTime), N'501211121', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'iblack3f@de.vu', N'iRR4m7rht!9', N'Irene Black', N'Female', CAST(N'1998-06-08 00:00:00.000' AS DateTime), N'501211182', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'igibson1n@blinklist.com', N'qqkejz9', N'Irene Gibson', N'Female', CAST(N'1999-10-18 00:00:00.000' AS DateTime), N'501211118', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'jandersonr@indiegogo.com', N'9BiY7yyIZk!3', N'Jimmy Anderson', N'Male', CAST(N'1988-05-16 00:00:00.000' AS DateTime), N'551000011', N'Photo.jpg', N'CE')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'jandrews1@oaic.gov.au', N'5bGB4mlGSfX7#2', N'Janice Andrews', N'Female', CAST(N'2001-09-19 00:00:00.000' AS DateTime), N'502233445', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'jbishop4u@chicagotribune.com', N'Ja25hnj!7', N'Judith Bishop', N'Female', CAST(N'2001-05-22 00:00:00.000' AS DateTime), N'501211233', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'jbrown67@hc360.com', N'2egmofnW#11', N'Jesse Brown', N'Male', CAST(N'1998-08-10 00:00:00.000' AS DateTime), N'501211282', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'jcarpenter5l@kickstarter.com', N'RG3WDm4lGG6c!9', N'Jean Carpenter', N'Female', CAST(N'1998-08-31 00:00:00.000' AS DateTime), N'501211260', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'jcarter6f@exblog.jp', N'uNnmxig!6', N'Jesse Carter', N'Male', CAST(N'2001-08-17 00:00:00.000' AS DateTime), N'501211290', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'jcollins5f@netlog.com', N'W10rftzrT!7', N'Justin Collins', N'Male', CAST(N'2002-02-09 00:00:00.000' AS DateTime), N'501211254', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'jfranklin2e@fastcompany.com', N'UB422fux5', N'John Franklin', N'Male', CAST(N'1998-07-13 00:00:00.000' AS DateTime), N'501211145', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'jfraziert@cbsnews.com', N'I3w4aSywcB5', N'Joshua Frazier', N'Male', CAST(N'1991-05-28 00:00:00.000' AS DateTime), N'551000013', N'Photo.jpg', N'WM')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'jgarrett1y@ameblo.jp', N'7ZA3PxftD#5', N'Jane Garrett', N'Female', CAST(N'2001-11-16 00:00:00.000' AS DateTime), N'501211129', N'Photo.jpg', N'V ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'jgarza7l@addtoany.com', N'uINi8AwrS!7', N'Jesse Garza', N'Male', CAST(N'2001-07-25 00:00:00.000' AS DateTime), N'501211332', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'jgibson6w@parallels.com', N'qhzGXZw13', N'Jennifer Gibson', N'Female', CAST(N'1998-12-28 00:00:00.000' AS DateTime), N'501211307', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'jgrant61@ihg.com', N'SjnKan#9', N'Joyce Grant', N'Female', CAST(N'2000-06-06 00:00:00.000' AS DateTime), N'501211276', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'jgrant66@icq.com', N'PUkaEtDCH!10', N'Julie Grant', N'Female', CAST(N'2000-12-12 00:00:00.000' AS DateTime), N'501211281', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'jgreen29@gov.uk', N'eShee5ee3DUr!8', N'Jack Green', N'Male', CAST(N'2002-08-25 00:00:00.000' AS DateTime), N'501211140', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'jgriffin4w@usatoday.com', N'TQH1FE9', N'Judy Griffin', N'Female', CAST(N'1998-01-19 00:00:00.000' AS DateTime), N'501211235', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'jhart37@myspace.com', N'Z2Aa66WF4SL#7', N'Judy Hart', N'Female', CAST(N'2001-11-26 00:00:00.000' AS DateTime), N'501211174', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'jhunter7t@wp.com', N'0EONJZat11', N'Joshua Hunter', N'Male', CAST(N'1999-03-15 00:00:00.000' AS DateTime), N'501211340', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'jjones2q@homestead.com', N'NlCb9Vft8TO9', N'Joseph Jones', N'Male', CAST(N'1999-05-09 00:00:00.000' AS DateTime), N'501211157', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'jkelley4h@google.com.br', N'lfhROv310', N'Joan Kelley', N'Female', CAST(N'1998-03-20 00:00:00.000' AS DateTime), N'501211220', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'jlane7v@fda.gov', N'NShDSq#11', N'Judy Lane', N'Female', CAST(N'1999-03-31 00:00:00.000' AS DateTime), N'501211342', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'jlee6i@dailymotion.com', N'1HD2citABmc6!7', N'Jeremy Lee', N'Male', CAST(N'2000-08-27 00:00:00.000' AS DateTime), N'501211293', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'joliver88@e-recht24.de', N'mbULIPvIT10', N'Julie Oliver', N'Female', CAST(N'2000-08-02 00:00:00.000' AS DateTime), N'501211355', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'jramos6p@hp.com', N'gfbaRa6EQfP#10', N'James Ramos', N'Male', CAST(N'2002-09-18 00:00:00.000' AS DateTime), N'501211300', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'jray68@e-recht24.de', N'KlyFOk12', N'Jane Ray', N'Female', CAST(N'2000-09-12 00:00:00.000' AS DateTime), N'501211283', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'jreed5h@japanpost.jp', N'z3KnsvP9', N'James Reed', N'Male', CAST(N'1998-06-22 00:00:00.000' AS DateTime), N'501211256', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'jreynolds5v@usgs.gov', N'kGkdS0JLGtQ#7', N'Judith Reynolds', N'Female', CAST(N'1999-06-14 00:00:00.000' AS DateTime), N'501211270', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'jrice6v@hostgator.com', N'tPHgr3J1xLj0#12', N'Joseph Rice', N'Male', CAST(N'2001-08-14 00:00:00.000' AS DateTime), N'501211306', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'jrobertson1d@jugem.jp', N'GwrDVvgB4X#5', N'Jessica Robertson', N'Female', CAST(N'2001-12-03 00:00:00.000' AS DateTime), N'551000033', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'jrobertson8@spiegel.de', N'wq5be9I5', N'Jerry Robertson', N'Male', CAST(N'1999-06-21 00:00:00.000' AS DateTime), N'501234567', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'jrodriguez2g@shop-pro.jp', N'D716Xwjyc#5', N'Jane Rodriguez', N'Female', CAST(N'2002-02-19 00:00:00.000' AS DateTime), N'501211147', N'Photo.jpg', N'V ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'jsanchez1j@illinois.edu', N'7afT16KC#7', N'Jose Sanchez', N'Male', CAST(N'1998-11-04 00:00:00.000' AS DateTime), N'501211114', N'Photo.jpg', N'V ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'jscott4l@wufoo.com', N'cLmfzQl!10', N'Jane Scott', N'Female', CAST(N'2001-08-02 00:00:00.000' AS DateTime), N'501211224', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'jsmithi@miibeian.gov.cn', N'aFXbRhKT!7', N'Joshua Smith', N'Male', CAST(N'2001-11-15 00:00:00.000' AS DateTime), N'551000002', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'jspencer4d@vimeo.com', N'IvhgimH#8', N'Justin Spencer', N'Male', CAST(N'1998-10-19 00:00:00.000' AS DateTime), N'501211216', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'jstewart48@t-online.de', N'0E8qcCW7', N'Joan Stewart', N'Female', CAST(N'2001-08-26 00:00:00.000' AS DateTime), N'501211211', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'jwalker15@last.fm', N'0jrD2uWu9', N'Janet Walker', N'Female', CAST(N'1999-12-14 00:00:00.000' AS DateTime), N'551000025', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'jwatkins3b@wordpress.com', N'Cqd9OXeuOy9', N'Jane Watkins', N'Female', CAST(N'1998-06-13 00:00:00.000' AS DateTime), N'501211178', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'jwooda@state.tx.us', N'AFA479QuGD6#5', N'Joseph Wood', N'Male', CAST(N'1990-05-04 00:00:00.000' AS DateTime), N'503456789', N'Photo.jpg', N'WM')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'jyoung2x@ifeng.com', N'dwjaGdM!3', N'Jesse Young', N'Male', CAST(N'1999-10-09 00:00:00.000' AS DateTime), N'501211164', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'kalvarezg@flickr.com', N'TYutzXwMv#7', N'Keith Alvarez', N'Male', CAST(N'1985-10-07 00:00:00.000' AS DateTime), N'551000000', N'Photo.jpg', N'A ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'kalvarezv@weebly.com', N'Zic9E4#5', N'Katherine Alvarez', N'Female', CAST(N'1990-03-28 00:00:00.000' AS DateTime), N'551000015', N'Photo.jpg', N'CE')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'kcampbell81@jugem.jp', N'ctOVuHB#13', N'Karen Campbell', N'Female', CAST(N'1998-07-29 00:00:00.000' AS DateTime), N'501211348', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'kcarr5a@google.nl', N'fwm9FZvsFB#6', N'Keith Carr', N'Male', CAST(N'2000-09-11 00:00:00.000' AS DateTime), N'501211249', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'kharveym@blinklist.com', N'QwOD5Zzg#2', N'Kenneth Harvey', N'Male', CAST(N'1980-09-13 00:00:00.000' AS DateTime), N'551000006', N'Photo.jpg', N'CE')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'kpricep@dmoz.org', N'uofemvZNRrzI#3', N'Kenneth Price', N'Male', CAST(N'1988-10-10 00:00:00.000' AS DateTime), N'551000009', N'Photo.jpg', N'CE')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'kreyes36@ucsd.edu', N'Nps4OCgbs!6', N'Kevin Reyes', N'Male', CAST(N'1998-03-19 00:00:00.000' AS DateTime), N'501211173', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'kwashington3v@hud.gov', N'rsdzyyN9n2#9', N'Kathleen Washington', N'Female', CAST(N'1999-07-25 00:00:00.000' AS DateTime), N'501211198', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'kwoods35@stanford.edu', N'8wdXofN7', N'Kathleen Woods', N'Female', CAST(N'1999-05-01 00:00:00.000' AS DateTime), N'501211172', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'lbailey4q@nationalgeographic.com', N'MRndl352XE7', N'Lillian Bailey', N'Female', CAST(N'1998-06-02 00:00:00.000' AS DateTime), N'501211229', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'lbanksq@slashdot.org', N'nohSXtv4', N'Lori Banks', N'Female', CAST(N'1978-08-18 00:00:00.000' AS DateTime), N'551000010', N'Photo.jpg', N'CE')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'ldunn1v@imdb.com', N'wAQjM3M#4', N'Louise Dunn', N'Female', CAST(N'1999-05-31 00:00:00.000' AS DateTime), N'501211126', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'lgreene3s@ibm.com', N'bOBmQfL08#8', N'Larry Greene', N'Male', CAST(N'1999-07-15 00:00:00.000' AS DateTime), N'501211195', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'lgreene4x@admin.ch', N'LS6JHI86!8', N'Lillian Greene', N'Female', CAST(N'1999-10-03 00:00:00.000' AS DateTime), N'501211236', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'lhall3q@posterous.com', N's2rffe8', N'Lois Hall', N'Female', CAST(N'2000-11-08 00:00:00.000' AS DateTime), N'501211193', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'ljackson3a@yelp.com', N'hTpGWrp3#8', N'Laura Jackson', N'Female', CAST(N'1999-06-12 00:00:00.000' AS DateTime), N'501211177', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'lknight43@istockphoto.com', N'S7GePLfYz8!4', N'Louis Knight', N'Male', CAST(N'1998-01-09 00:00:00.000' AS DateTime), N'501211206', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'lparker2y@cam.ac.uk', N'8Bvrs9lVpSn#4', N'Lori Parker', N'Female', CAST(N'2002-06-21 00:00:00.000' AS DateTime), N'501211165', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'lpayne13@fc2.com', N'sVZh9G!7', N'Lois Payne', N'Female', CAST(N'2000-01-10 00:00:00.000' AS DateTime), N'551000023', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'lrivera3t@go.com', N'lXcxAwr189', N'Larry Rivera', N'Male', CAST(N'2001-11-17 00:00:00.000' AS DateTime), N'501211196', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'lsanchez9@tamu.edu', N'2eOdB40!4', N'Louis Sanchez', N'Male', CAST(N'1989-06-04 00:00:00.000' AS DateTime), N'502345678', N'Photo.jpg', N'E ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'lwagner17@fda.gov', N'NuCHQfAkktJ#3', N'Lisa Wagner', N'Female', CAST(N'2001-01-18 00:00:00.000' AS DateTime), N'551000027', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'lwest6r@berkeley.edu', N'1MI7OdSVJp6D!10', N'Louise West', N'Female', CAST(N'2000-05-24 00:00:00.000' AS DateTime), N'501211302', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'mbell7n@amazon.com', N'ahFBtc9', N'Mary Bell', N'Female', CAST(N'2002-01-15 00:00:00.000' AS DateTime), N'501211334', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'mburke7@godaddy.com', N'REUxqI#4', N'Marie Burke', N'Female', CAST(N'1994-07-27 00:00:00.000' AS DateTime), N'508900111', N'Photo.jpg', N'CE')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'mcunningham6t@ibm.com', N'kNLwIcRgcekS12', N'Martha Cunningham', N'Female', CAST(N'2002-09-22 00:00:00.000' AS DateTime), N'501211304', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'mdean7r@jiathis.com', N'E1HPzLwY!9', N'Mary Dean', N'Female', CAST(N'2001-04-19 00:00:00.000' AS DateTime), N'501211338', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'melliso@sciencedaily.com', N'yaUf4F0k!2', N'Martha Ellis', N'Female', CAST(N'1975-01-09 00:00:00.000' AS DateTime), N'551000008', N'Photo.jpg', N'A ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'mevans31@npr.org', N'xuhVJ3hpqbX#5', N'Maria Evans', N'Female', CAST(N'2002-07-01 00:00:00.000' AS DateTime), N'501211168', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'mgarza62@weebly.com', N'LcpUsVQvQurS10', N'Mildred Garza', N'Female', CAST(N'2002-03-11 00:00:00.000' AS DateTime), N'501211277', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'mgutierrezn@hatena.ne.jp', N'V9zUEO49J3', N'Martha Gutierrez', N'Female', CAST(N'2002-04-04 00:00:00.000' AS DateTime), N'551000007', N'Photo.jpg', N'V ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'mhart7h@xrea.com', N'ABwh8Kgp14', N'Marilyn Hart', N'Female', CAST(N'2002-09-05 00:00:00.000' AS DateTime), N'501211328', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'mhayes58@epa.gov', N'nqaVy6fUEC13', N'Mildred Hayes', N'Female', CAST(N'1999-12-19 00:00:00.000' AS DateTime), N'501211247', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'mhudson74@ifeng.com', N'BirjMh4#9', N'Michelle Hudson', N'Female', CAST(N'2001-10-11 00:00:00.000' AS DateTime), N'501211315', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'mjenkins5t@craigslist.org', N'5x1yek1Q3tU13', N'Martin Jenkins', N'Male', CAST(N'1999-07-15 00:00:00.000' AS DateTime), N'501211268', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'mjordan5k@cmu.edu', N'H90XefMk10', N'Michael Jordan', N'Male', CAST(N'2001-03-05 00:00:00.000' AS DateTime), N'501211259', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'mlewis19@ning.com', N'Wz3zO4SXiy!3', N'Martha Lewis', N'Female', CAST(N'1998-10-10 00:00:00.000' AS DateTime), N'551000029', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'mlittle51@gizmodo.com', N'UDHVh3#10', N'Michael Little', N'Male', CAST(N'2002-05-23 00:00:00.000' AS DateTime), N'501211240', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'mmontgomery2o@netlog.com', N'3bTdrvuJn!7', N'Michael Montgomery', N'Male', CAST(N'1998-02-11 00:00:00.000' AS DateTime), N'501211155', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'mprice3d@posterous.com', N'te30VHk#9', N'Martin Price', N'Male', CAST(N'2002-04-07 00:00:00.000' AS DateTime), N'501211180', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'mrileys@japanpost.jp', N'btbQjRv3FBp#4', N'Mary Riley', N'Female', CAST(N'2000-12-02 00:00:00.000' AS DateTime), N'551000012', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'msmith7x@ft.com', N'FGjp8U!11', N'Mary Smith', N'Female', CAST(N'1998-07-20 00:00:00.000' AS DateTime), N'501211344', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'mtaylor5b@prnewswire.com', N'KW5rXLMcPOkz7', N'Marie Taylor', N'Female', CAST(N'2001-03-10 00:00:00.000' AS DateTime), N'501211250', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'mthompson6q@naver.com', N'IsrCR43p11', N'Michael Thompson', N'Male', CAST(N'2000-08-22 00:00:00.000' AS DateTime), N'501211301', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'mthompson6u@archive.org', N'ZCLcuIqkzLs!11', N'Mary Thompson', N'Female', CAST(N'2002-06-01 00:00:00.000' AS DateTime), N'501211305', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'mwelch1m@dedecms.com', N'01vJBxcRmUN#8', N'Melissa Welch', N'Female', CAST(N'1999-08-19 00:00:00.000' AS DateTime), N'501211117', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'mwright18@tinypic.com', N'PoBQIBDWhi4', N'Marie Wright', N'Female', CAST(N'1998-01-17 00:00:00.000' AS DateTime), N'551000028', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'ndean82@github.com', N'Zt65ux9P9Xnp14', N'Norma Dean', N'Female', CAST(N'2000-08-13 00:00:00.000' AS DateTime), N'501211349', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'njackson2b@barnesandnoble.com', N'Wm3P1YrqQMn10', N'Nicole Jackson', N'Female', CAST(N'2002-09-28 00:00:00.000' AS DateTime), N'501211142', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'nkim27@china.com.cn', N'xXFrEoHS#8', N'Norma Kim', N'Female', CAST(N'2002-08-29 00:00:00.000' AS DateTime), N'501211138', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'nmitchell5w@edublogs.org', N'8m94gGEj8AFl8', N'Nicholas Mitchell', N'Male', CAST(N'2001-10-03 00:00:00.000' AS DateTime), N'501211271', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'nryan56@jigsy.com', N'fOsTlJhNQBc!11', N'Nancy Ryan', N'Female', CAST(N'1998-08-17 00:00:00.000' AS DateTime), N'501211245', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'nstanley6a@dailymotion.com', N'QlJYxNuFv#12', N'Norma Stanley', N'Female', CAST(N'2002-02-22 00:00:00.000' AS DateTime), N'501211285', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'palexander86@theglobeandmail.com', N'oqoK9tBH!8', N'Phyllis Alexander', N'Female', CAST(N'2001-11-09 00:00:00.000' AS DateTime), N'501211353', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'pbrown1k@businessweek.com', N'o1xKP58', N'Pamela Brown', N'Female', CAST(N'1998-10-31 00:00:00.000' AS DateTime), N'501211115', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'pevans4b@purevolume.com', N'qMPsLuOko38', N'Patricia Evans', N'Female', CAST(N'2001-02-13 00:00:00.000' AS DateTime), N'501211214', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'pfuller33@bluehost.com', N'jAA1u0t!5', N'Phillip Fuller', N'Male', CAST(N'1998-04-16 00:00:00.000' AS DateTime), N'501211170', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'pgarza25@taobao.com', N'JforBfFp8', N'Paula Garza', N'Female', CAST(N'2002-06-20 00:00:00.000' AS DateTime), N'501211136', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'pgutierrez40@xrea.com', N'xnvCPrhyhf!10', N'Phillip Gutierrez', N'Male', CAST(N'2000-02-23 00:00:00.000' AS DateTime), N'501211203', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'phally@noaa.gov', N'hE3sfqIBTbi#6', N'Phillip Hall', N'Male', CAST(N'1988-05-01 00:00:00.000' AS DateTime), N'551000018', N'Photo.jpg', N'E ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'pjohnston4n@amazonaws.com', N'ErU8JzUZL12', N'Pamela Johnston', N'Female', CAST(N'2001-04-23 00:00:00.000' AS DateTime), N'501211226', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'plane3i@scribd.com', N'eDoqr0!4', N'Paula Lane', N'Female', CAST(N'2000-09-04 00:00:00.000' AS DateTime), N'501211185', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'pmcdonald6z@angelfire.com', N'AKOfVXQXK1qm14', N'Pamela Mcdonald', N'Female', CAST(N'2000-05-02 00:00:00.000' AS DateTime), N'501211310', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'poliver1u@newyorker.com', N'UkvRMX15!3', N'Philip Oliver', N'Male', CAST(N'2001-06-12 00:00:00.000' AS DateTime), N'501211125', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'pporter41@sun.com', N'dG0RQ7zbi#11', N'Philip Porter', N'Male', CAST(N'1998-07-08 00:00:00.000' AS DateTime), N'501211204', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'pschmidtl@deviantart.com', N'qmgpL45jkdW!1', N'Phillip Schmidt', N'Male', CAST(N'1999-12-04 00:00:00.000' AS DateTime), N'551000005', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'pshaw2z@cocolog-nifty.com', N'yqta53795', N'Philip Shaw', N'Male', CAST(N'2002-01-20 00:00:00.000' AS DateTime), N'501211166', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'pwebb38@tamu.edu', N'fAFd0y518I8', N'Paul Webb', N'Male', CAST(N'2002-07-17 00:00:00.000' AS DateTime), N'501211175', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'ralexander69@domainmarket.com', N'GPkoiEg!11', N'Roger Alexander', N'Male', CAST(N'2002-08-06 00:00:00.000' AS DateTime), N'501211284', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'rarnold4v@cpanel.net', N'OeQ5r4CfELt#8', N'Ruby Arnold', N'Female', CAST(N'2000-12-11 00:00:00.000' AS DateTime), N'501211234', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'rbryant3g@yellowpages.com', N'vR3iRn#10', N'Roy Bryant', N'Male', CAST(N'2002-06-15 00:00:00.000' AS DateTime), N'501211183', N'Photo.jpg', N'V ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'rcampbelle@about.com', N'PySF5Wub0w7', N'Raymond Campbell', N'Male', CAST(N'1999-03-24 00:00:00.000' AS DateTime), N'507901233', N'Photo.jpg', N'V ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'rdaniels7d@cam.ac.uk', N'1M6qyWn#12', N'Raymond Daniels', N'Male', CAST(N'1999-03-12 00:00:00.000' AS DateTime), N'501211324', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'rgibson6@macromedia.com', N'S1wz8bBqolq7!3', N'Roger Gibson', N'Male', CAST(N'1990-12-19 00:00:00.000' AS DateTime), N'507789000', N'Photo.jpg', N'CE')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'rholmes3m@spotify.com', N'Dn6oxEj#6', N'Ruby Holmes', N'Female', CAST(N'1999-01-06 00:00:00.000' AS DateTime), N'501211189', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'rknight4i@posterous.com', N'b2y3nR!9', N'Richard Knight', N'Male', CAST(N'2002-04-22 00:00:00.000' AS DateTime), N'501211221', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'rmartin2@thetimes.co.uk', N'VATleZn3', N'Ruth Martin', N'Female', CAST(N'1988-03-09 00:00:00.000' AS DateTime), N'503344556', N'Photo.jpg', N'CE')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'rnichols5m@canalblog.com', N'8ZVs7WHpG#10', N'Raymond Nichols', N'Male', CAST(N'2000-06-17 00:00:00.000' AS DateTime), N'501211261', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'rolson2h@sfgate.com', N'TVcsaeO6', N'Rachel Olson', N'Female', CAST(N'1998-12-03 00:00:00.000' AS DateTime), N'501211148', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'rporter6e@networkadvertising.org', N'LawgZZi14', N'Richard Porter', N'Male', CAST(N'1999-10-01 00:00:00.000' AS DateTime), N'501211289', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'rrivera8b@tmall.com', N'saOYR7aIZ11', N'Randy Rivera', N'Male', CAST(N'2000-01-02 00:00:00.000' AS DateTime), N'501211358', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'rsanders49@guardian.co.uk', N'RoshSgxDPOQ!6', N'Rose Sanders', N'Female', CAST(N'2002-10-05 00:00:00.000' AS DateTime), N'501211212', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'rshaw3o@ovh.net', N'8tgpr8cv9H!6', N'Roger Shaw', N'Male', CAST(N'1999-12-05 00:00:00.000' AS DateTime), N'501211191', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'rwatsonw@youtu.be', N'm8AH89E6', N'Ralph Watson', N'Male', CAST(N'1972-06-23 00:00:00.000' AS DateTime), N'551000016', N'Photo.jpg', N'E ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'rweaver4s@nydailynews.com', N'hoOufl4L8yBN#7', N'Ruby Weaver', N'Female', CAST(N'2001-02-25 00:00:00.000' AS DateTime), N'501211231', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'rwhite63@amazon.de', N'R7geN4Sc!9', N'Raymond White', N'Male', CAST(N'2001-04-06 00:00:00.000' AS DateTime), N'501211278', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'rwright6g@dmoz.org', N'z59rAf#7', N'Randy Wright', N'Male', CAST(N'1999-04-06 00:00:00.000' AS DateTime), N'501211291', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'sbennett4t@studiopress.com', N'zQOpjoQNBjw8', N'Sara Bennett', N'Female', CAST(N'2001-09-13 00:00:00.000' AS DateTime), N'501211232', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'sboyd46@virginia.edu', N'7J186V!5', N'Sean Boyd', N'Male', CAST(N'2000-10-17 00:00:00.000' AS DateTime), N'501211209', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'sbrooks77@apache.org', N'eCGshDEOe8#10', N'Sandra Brooks', N'Female', CAST(N'2000-09-13 00:00:00.000' AS DateTime), N'501211318', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'sburtonh@psu.edu', N'KduUuN8', N'Stephanie Burton', N'Female', CAST(N'1990-11-10 00:00:00.000' AS DateTime), N'551000001', N'Photo.jpg', N'A ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'scole30@bandcamp.com', N'uTJMXfd!4', N'Shawn Cole', N'Male', CAST(N'2001-03-15 00:00:00.000' AS DateTime), N'501211167', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'sfisherz@un.org', N'qHTitbWov7', N'Sandra Fisher', N'Female', CAST(N'1989-06-16 00:00:00.000' AS DateTime), N'551000019', N'Photo.jpg', N'E ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'sgonzales7a@wisc.edu', N'frqBvJ#11', N'Shirley Gonzales', N'Female', CAST(N'2002-06-03 00:00:00.000' AS DateTime), N'501211321', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'shunt45@over-blog.com', N'wwwc2Hbk6', N'Stephanie Hunt', N'Female', CAST(N'1999-05-25 00:00:00.000' AS DateTime), N'501211208', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'sjacobs65@chicagotribune.com', N'E9oXAkWJ11', N'Stephen Jacobs', N'Male', CAST(N'2001-08-02 00:00:00.000' AS DateTime), N'501211280', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'sjenkins2d@zdnet.com', N'IXAJsjC26aoH#4', N'Stephen Jenkins', N'Male', CAST(N'2001-03-10 00:00:00.000' AS DateTime), N'501211144', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'sjones1a@sourceforge.net', N'QpHlAgvG155y#4', N'Sharon Jones', N'Female', CAST(N'1999-04-19 00:00:00.000' AS DateTime), N'551000030', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'slittle3@huffingtonpost.com', N'jdQQA3MUICo!2', N'Sara Little', N'Female', CAST(N'2002-01-29 00:00:00.000' AS DateTime), N'504455667', N'Photo.jpg', N'V ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'sortiz12@ucla.edu', N'p2CeumlX6TL8', N'Stephanie Ortiz', N'Female', CAST(N'1998-01-06 00:00:00.000' AS DateTime), N'551000022', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'sortiz5d@mapquest.com', N'OcCwaphvCEg#7', N'Samuel Ortiz', N'Male', CAST(N'2002-05-28 00:00:00.000' AS DateTime), N'501211252', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'spalmer2n@sun.com', N'3drW3PrKREdj8', N'Stephen Palmer', N'Male', CAST(N'1998-09-25 00:00:00.000' AS DateTime), N'501211154', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'srichards3x@bbb.org', N'p3dyxAm7f!9', N'Stephen Richards', N'Male', CAST(N'2000-07-21 00:00:00.000' AS DateTime), N'501211200', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'srose2a@fema.gov', N'HsTuv90h#9', N'Samuel Rose', N'Male', CAST(N'2000-03-29 00:00:00.000' AS DateTime), N'501211141', N'Photo.jpg', N'V ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'sstevens6m@tumblr.com', N'3X8OzoBahE#9', N'Sean Stevens', N'Male', CAST(N'2000-01-03 00:00:00.000' AS DateTime), N'501211297', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'swatson4a@163.com', N'Z0ezzU#7', N'Sara Watson', N'Female', CAST(N'2000-07-03 00:00:00.000' AS DateTime), N'501211213', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'swelch3z@pagesperso-orange.fr', N'alU4ANqyR11', N'Stephen Welch', N'Male', CAST(N'1999-11-04 00:00:00.000' AS DateTime), N'501211202', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'swillis2v@ehow.com', N'Y3bST5UE#10', N'Steve Willis', N'Male', CAST(N'1999-04-05 00:00:00.000' AS DateTime), N'501211162', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'swoods59@ocn.ne.jp', N'8HjE6SK!5', N'Stephanie Woods', N'Female', CAST(N'2000-06-06 00:00:00.000' AS DateTime), N'501211248', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'tdixon4e@plala.or.jp', N'Rx6Y7lVOG9', N'Thomas Dixon', N'Male', CAST(N'2000-06-04 00:00:00.000' AS DateTime), N'501211217', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'tdixon4p@rambler.ru', N'TIO8nUFbgAH#6', N'Theresa Dixon', N'Female', CAST(N'2002-09-22 00:00:00.000' AS DateTime), N'501211228', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'tgrayk@wunderground.com', N'W4o3zJu9', N'Tammy Gray', N'Female', CAST(N'1980-03-12 00:00:00.000' AS DateTime), N'551000004', N'Photo.jpg', N'A ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'thayes5@youtu.be', N'w0vHOtxys4', N'Tammy Hayes', N'Female', CAST(N'1990-05-08 00:00:00.000' AS DateTime), N'506677889', N'Photo.jpg', N'E ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'tjones4c@mashable.com', N'4DwYo76!7', N'Todd Jones', N'Male', CAST(N'1999-05-02 00:00:00.000' AS DateTime), N'501211215', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'tkelly42@friendfeed.com', N'22uwY9KwA12', N'Thomas Kelly', N'Male', CAST(N'2002-11-13 00:00:00.000' AS DateTime), N'501211205', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'tmatthews1x@tuttocitta.it', N'jOi8ASweOWSo!4', N'Theresa Matthews', N'Female', CAST(N'1999-02-26 00:00:00.000' AS DateTime), N'501211128', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'tmorgan6n@vinaora.com', N'D2JF2mN10', N'Todd Morgan', N'Male', CAST(N'1999-09-11 00:00:00.000' AS DateTime), N'501211298', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'toliver6o@simplemachines.org', N'Eg1mU1M0K2Sx!9', N'Tammy Oliver', N'Female', CAST(N'1998-06-29 00:00:00.000' AS DateTime), N'501211299', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'treed2c@myspace.com', N'Pmi2fGjzx4I!3', N'Timothy Reed', N'Male', CAST(N'2000-09-06 00:00:00.000' AS DateTime), N'501211143', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'tsimmons2s@tumblr.com', N'BVLapzd#9', N'Tammy Simmons', N'Female', CAST(N'2000-02-15 00:00:00.000' AS DateTime), N'501211159', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'twright2k@diigo.com', N'w8sTOx8gbq7', N'Theresa Wright', N'Female', CAST(N'2000-12-02 00:00:00.000' AS DateTime), N'501211151', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'vgrant7u@ebay.com', N'fJPfopo5uD!10', N'Victor Grant', N'Male', CAST(N'1999-05-20 00:00:00.000' AS DateTime), N'501211341', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'vrobertson76@nationalgeographic.com', N'vVv3Go3!9', N'Victor Robertson', N'Male', CAST(N'1998-10-30 00:00:00.000' AS DateTime), N'501211317', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'wbailey7o@weebly.com', N'ju9urWdN!8', N'Wayne Bailey', N'Male', CAST(N'1999-07-14 00:00:00.000' AS DateTime), N'501211335', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'wfieldsf@cafepress.com', N'045lVFNGH6Wo!6', N'William Fields', N'Male', CAST(N'1980-09-27 00:00:00.000' AS DateTime), N'509012344', N'Photo.jpg', N'E ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'wfox2w@stanford.edu', N'RGBUTbNR11', N'Willie Fox', N'Male', CAST(N'2001-01-30 00:00:00.000' AS DateTime), N'501211163', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'whenry5e@oakley.com', N'SN1Ig0IE8', N'Walter Henry', N'Male', CAST(N'1999-08-14 00:00:00.000' AS DateTime), N'501211253', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'wjames50@soundcloud.com', N'xU5CI6WCvd!9', N'Wayne James', N'Male', CAST(N'2001-12-02 00:00:00.000' AS DateTime), N'501211239', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'wkingx@behance.net', N'27d7nkPkA!5', N'Walter King', N'Male', CAST(N'1989-03-18 00:00:00.000' AS DateTime), N'551000017', N'Photo.jpg', N'E ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'wpayne1i@usda.gov', N'clZUkckg!6', N'Walter Payne', N'Male', CAST(N'1989-08-28 00:00:00.000' AS DateTime), N'501211113', N'Photo.jpg', N'WM')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'wromero2l@huffingtonpost.com', N'klMA3O!6', N'Walter Romero', N'Male', CAST(N'1998-12-14 00:00:00.000' AS DateTime), N'501211152', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'wstanley7c@washington.edu', N'kdIgzUEfB!11', N'William Stanley', N'Male', CAST(N'1999-05-13 00:00:00.000' AS DateTime), N'501211323', N'Photo.jpg', N'C ')
GO
INSERT [dbo].[User] ([Email], [Password], [FullName], [Gender], [DateOfBirth], [MobileNo], [Photo], [RoleID]) VALUES (N'wwest7g@csmonitor.com', N'U7Lwbz#13', N'Willie West', N'Male', CAST(N'2001-11-12 00:00:00.000' AS DateTime), N'501211327', N'Photo.jpg', N'C ')


---------------------
--  Set Foreign Keys  --
---------------------


GO
ALTER TABLE [dbo].[CompetitionSkill]  WITH CHECK ADD  CONSTRAINT [FK_CompetitionSkill_Competition] FOREIGN KEY([CompetitionID])
REFERENCES [dbo].[Competition] ([CompetitionID])
GO
ALTER TABLE [dbo].[CompetitionSkill] CHECK CONSTRAINT [FK_CompetitionSkill_Competition]
GO
ALTER TABLE [dbo].[CompetitionSkill]  WITH CHECK ADD  CONSTRAINT [FK_CompetitionSkill_Skill] FOREIGN KEY([SkillID])
REFERENCES [dbo].[Skill] ([SkillID])
GO
ALTER TABLE [dbo].[CompetitionSkill] CHECK CONSTRAINT [FK_CompetitionSkill_Skill]
GO
ALTER TABLE [dbo].[CompetitionSkillPerson]  WITH CHECK ADD  CONSTRAINT [FK_CompetitionSkillPerson_CompetitionSkill] FOREIGN KEY([CompetitionID], [SkillID])
REFERENCES [dbo].[CompetitionSkill] ([CompetitionID], [SkillID])
GO
ALTER TABLE [dbo].[CompetitionSkillPerson] CHECK CONSTRAINT [FK_CompetitionSkillPerson_CompetitionSkill]
GO
ALTER TABLE [dbo].[CompetitionSkillPerson]  WITH CHECK ADD  CONSTRAINT [FK_CompetitionSkillPerson_User] FOREIGN KEY([Email])
REFERENCES [dbo].[User] ([Email])
GO
ALTER TABLE [dbo].[CompetitionSkillPerson] CHECK CONSTRAINT [FK_CompetitionSkillPerson_User]
GO
ALTER TABLE [dbo].[Competitor]  WITH CHECK ADD  CONSTRAINT [FK_Competitor_User] FOREIGN KEY([Email])
REFERENCES [dbo].[User] ([Email])
GO
ALTER TABLE [dbo].[Competitor] CHECK CONSTRAINT [FK_Competitor_User]
GO
ALTER TABLE [dbo].[FinalScore]  WITH CHECK ADD  CONSTRAINT [FK_FinalScore_Competitor] FOREIGN KEY([CompetitorID])
REFERENCES [dbo].[Competitor] ([RegistrationID])
GO
ALTER TABLE [dbo].[FinalScore] CHECK CONSTRAINT [FK_FinalScore_Competitor]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Role] FOREIGN KEY([RoleID])
REFERENCES [dbo].[Role] ([RoleID])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Role]
GO
