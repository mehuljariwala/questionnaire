USE [master]
GO
/****** Object:  Database [online_exam]    Script Date: 2/20/2019 10:26:11 PM ******/
CREATE DATABASE [online_exam]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'online_exam', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\online_exam.mdf' , SIZE = 6144KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'online_exam_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\online_exam_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [online_exam] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [online_exam].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [online_exam] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [online_exam] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [online_exam] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [online_exam] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [online_exam] SET ARITHABORT OFF 
GO
ALTER DATABASE [online_exam] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [online_exam] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [online_exam] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [online_exam] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [online_exam] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [online_exam] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [online_exam] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [online_exam] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [online_exam] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [online_exam] SET  DISABLE_BROKER 
GO
ALTER DATABASE [online_exam] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [online_exam] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [online_exam] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [online_exam] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [online_exam] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [online_exam] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [online_exam] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [online_exam] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [online_exam] SET  MULTI_USER 
GO
ALTER DATABASE [online_exam] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [online_exam] SET DB_CHAINING OFF 
GO
ALTER DATABASE [online_exam] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [online_exam] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [online_exam] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [online_exam] SET QUERY_STORE = OFF
GO
USE [online_exam]
GO
/****** Object:  Table [dbo].[course_master]    Script Date: 2/20/2019 10:26:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[course_master](
	[course_id] [int] NOT NULL,
	[course_name] [nvarchar](50) NULL,
 CONSTRAINT [PK_course_master] PRIMARY KEY CLUSTERED 
(
	[course_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[faculty_master]    Script Date: 2/20/2019 10:26:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[faculty_master](
	[faculty_id] [int] IDENTITY(1,1) NOT NULL,
	[faculty_enroll] [nvarchar](50) NOT NULL,
	[faculty_username] [nvarchar](max) NOT NULL,
	[email] [nvarchar](max) NOT NULL,
	[password] [nvarchar](max) NOT NULL,
	[gender] [char](6) NOT NULL,
	[contact_no] [nvarchar](10) NOT NULL,
	[dob] [nvarchar](50) NOT NULL,
	[skills] [nvarchar](200) NOT NULL,
 CONSTRAINT [PK_faculty_master] PRIMARY KEY CLUSTERED 
(
	[faculty_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[faculty_subjects_master]    Script Date: 2/20/2019 10:26:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[faculty_subjects_master](
	[faculty_id] [int] NULL,
	[subject_id] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[obj_501_1_18]    Script Date: 2/20/2019 10:26:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[obj_501_1_18](
	[ques_no] [int] IDENTITY(1,1) NOT NULL,
	[ques_id] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[obj_501_2_18]    Script Date: 2/20/2019 10:26:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[obj_501_2_18](
	[ques_no] [int] IDENTITY(1,1) NOT NULL,
	[ques_id] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[obj_501_3_18]    Script Date: 2/20/2019 10:26:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[obj_501_3_18](
	[ques_no] [int] IDENTITY(1,1) NOT NULL,
	[ques_id] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[obj_501_4_18]    Script Date: 2/20/2019 10:26:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[obj_501_4_18](
	[ques_no] [int] IDENTITY(1,1) NOT NULL,
	[ques_id] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[obj_501_5_18]    Script Date: 2/20/2019 10:26:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[obj_501_5_18](
	[ques_no] [int] IDENTITY(1,1) NOT NULL,
	[ques_id] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[obj_501_6_18]    Script Date: 2/20/2019 10:26:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[obj_501_6_18](
	[ques_no] [int] IDENTITY(1,1) NOT NULL,
	[ques_id] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[obj_501_7_18]    Script Date: 2/20/2019 10:26:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[obj_501_7_18](
	[ques_no] [int] IDENTITY(1,1) NOT NULL,
	[ques_id] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[objective_master]    Script Date: 2/20/2019 10:26:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[objective_master](
	[ques_id] [int] IDENTITY(1,1) NOT NULL,
	[subject_id] [int] NOT NULL,
	[unit_id] [int] NOT NULL,
	[ques] [nvarchar](max) NOT NULL,
	[graphics] [nvarchar](max) NULL,
	[option1] [nvarchar](max) NULL,
	[option2] [nvarchar](max) NULL,
	[option3] [nvarchar](max) NULL,
	[option4] [nvarchar](max) NULL,
	[correct] [nvarchar](max) NULL,
 CONSTRAINT [PK_obj_bca_master] PRIMARY KEY CLUSTERED 
(
	[ques_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[paper_master]    Script Date: 2/20/2019 10:26:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[paper_master](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[paper] [nvarchar](max) NOT NULL,
	[password] [nvarchar](8) NOT NULL,
 CONSTRAINT [PK_paper_master] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pdf_master]    Script Date: 2/20/2019 10:26:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pdf_master](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[faculty_id] [int] NOT NULL,
	[pdf_code] [nvarchar](max) NOT NULL,
	[subject_id] [int] NOT NULL,
	[paper_marks] [int] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[result_master]    Script Date: 2/20/2019 10:26:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[result_master](
	[student_id] [int] NOT NULL,
	[paper] [nvarchar](max) NOT NULL,
	[marks_obtained] [int] NOT NULL,
	[total_marks] [nchar](10) NOT NULL,
	[status] [nvarchar](4) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[student_master]    Script Date: 2/20/2019 10:26:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[student_master](
	[student_id] [int] IDENTITY(1,1) NOT NULL,
	[student_enroll] [nvarchar](max) NOT NULL,
	[student_username] [nvarchar](max) NOT NULL,
	[email] [nvarchar](max) NOT NULL,
	[password] [nvarchar](max) NOT NULL,
	[contact_no] [nvarchar](max) NOT NULL,
	[gender] [nvarchar](6) NOT NULL,
	[dob] [date] NOT NULL,
 CONSTRAINT [PK_student_master] PRIMARY KEY CLUSTERED 
(
	[student_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[subject_master]    Script Date: 2/20/2019 10:26:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[subject_master](
	[subject_id] [int] NOT NULL,
	[course_id] [int] NULL,
	[sem] [int] NULL,
	[subject] [nvarchar](50) NULL,
 CONSTRAINT [PK_subject_master] PRIMARY KEY CLUSTERED 
(
	[subject_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[unit_master]    Script Date: 2/20/2019 10:26:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[unit_master](
	[unit_id] [int] NOT NULL,
	[subject_id] [int] NULL,
	[unit_name] [nvarchar](50) NULL,
 CONSTRAINT [PK_unit_master] PRIMARY KEY CLUSTERED 
(
	[unit_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[course_master] ([course_id], [course_name]) VALUES (1, N'BCA')
SET IDENTITY_INSERT [dbo].[faculty_master] ON 

INSERT [dbo].[faculty_master] ([faculty_id], [faculty_enroll], [faculty_username], [email], [password], [gender], [contact_no], [dob], [skills]) VALUES (1, N'1111111111111111', N'Shubham', N'shubhamindrawat@gmail.com', N'123456', N'Male  ', N'9408804479', N'1996-08-28', N'C++')
INSERT [dbo].[faculty_master] ([faculty_id], [faculty_enroll], [faculty_username], [email], [password], [gender], [contact_no], [dob], [skills]) VALUES (2, N'2222222222222222', N'Mehul', N'mjariwala98@gmail.com', N'123456', N'Male  ', N'8866669302', N'1996-11-06', N'c')
SET IDENTITY_INSERT [dbo].[faculty_master] OFF
INSERT [dbo].[faculty_subjects_master] ([faculty_id], [subject_id]) VALUES (1, 501)
INSERT [dbo].[faculty_subjects_master] ([faculty_id], [subject_id]) VALUES (1, 502)
INSERT [dbo].[faculty_subjects_master] ([faculty_id], [subject_id]) VALUES (1, 503)
INSERT [dbo].[faculty_subjects_master] ([faculty_id], [subject_id]) VALUES (2, 201)
SET IDENTITY_INSERT [dbo].[obj_501_1_18] ON 

INSERT [dbo].[obj_501_1_18] ([ques_no], [ques_id]) VALUES (1, 30)
INSERT [dbo].[obj_501_1_18] ([ques_no], [ques_id]) VALUES (2, 10)
INSERT [dbo].[obj_501_1_18] ([ques_no], [ques_id]) VALUES (3, 36)
INSERT [dbo].[obj_501_1_18] ([ques_no], [ques_id]) VALUES (4, 18)
INSERT [dbo].[obj_501_1_18] ([ques_no], [ques_id]) VALUES (5, 19)
INSERT [dbo].[obj_501_1_18] ([ques_no], [ques_id]) VALUES (6, 16)
INSERT [dbo].[obj_501_1_18] ([ques_no], [ques_id]) VALUES (7, 32)
INSERT [dbo].[obj_501_1_18] ([ques_no], [ques_id]) VALUES (8, 14)
INSERT [dbo].[obj_501_1_18] ([ques_no], [ques_id]) VALUES (9, 8)
INSERT [dbo].[obj_501_1_18] ([ques_no], [ques_id]) VALUES (10, 3)
INSERT [dbo].[obj_501_1_18] ([ques_no], [ques_id]) VALUES (11, 6)
INSERT [dbo].[obj_501_1_18] ([ques_no], [ques_id]) VALUES (12, 4)
INSERT [dbo].[obj_501_1_18] ([ques_no], [ques_id]) VALUES (13, 31)
INSERT [dbo].[obj_501_1_18] ([ques_no], [ques_id]) VALUES (14, 21)
INSERT [dbo].[obj_501_1_18] ([ques_no], [ques_id]) VALUES (15, 60)
INSERT [dbo].[obj_501_1_18] ([ques_no], [ques_id]) VALUES (16, 75)
INSERT [dbo].[obj_501_1_18] ([ques_no], [ques_id]) VALUES (17, 66)
INSERT [dbo].[obj_501_1_18] ([ques_no], [ques_id]) VALUES (18, 82)
INSERT [dbo].[obj_501_1_18] ([ques_no], [ques_id]) VALUES (19, 58)
INSERT [dbo].[obj_501_1_18] ([ques_no], [ques_id]) VALUES (20, 48)
INSERT [dbo].[obj_501_1_18] ([ques_no], [ques_id]) VALUES (21, 45)
INSERT [dbo].[obj_501_1_18] ([ques_no], [ques_id]) VALUES (22, 64)
INSERT [dbo].[obj_501_1_18] ([ques_no], [ques_id]) VALUES (23, 49)
INSERT [dbo].[obj_501_1_18] ([ques_no], [ques_id]) VALUES (24, 52)
INSERT [dbo].[obj_501_1_18] ([ques_no], [ques_id]) VALUES (25, 38)
INSERT [dbo].[obj_501_1_18] ([ques_no], [ques_id]) VALUES (26, 59)
INSERT [dbo].[obj_501_1_18] ([ques_no], [ques_id]) VALUES (27, 78)
INSERT [dbo].[obj_501_1_18] ([ques_no], [ques_id]) VALUES (28, 74)
INSERT [dbo].[obj_501_1_18] ([ques_no], [ques_id]) VALUES (29, 94)
INSERT [dbo].[obj_501_1_18] ([ques_no], [ques_id]) VALUES (30, 91)
INSERT [dbo].[obj_501_1_18] ([ques_no], [ques_id]) VALUES (31, 85)
INSERT [dbo].[obj_501_1_18] ([ques_no], [ques_id]) VALUES (32, 104)
INSERT [dbo].[obj_501_1_18] ([ques_no], [ques_id]) VALUES (33, 87)
INSERT [dbo].[obj_501_1_18] ([ques_no], [ques_id]) VALUES (34, 92)
INSERT [dbo].[obj_501_1_18] ([ques_no], [ques_id]) VALUES (35, 103)
INSERT [dbo].[obj_501_1_18] ([ques_no], [ques_id]) VALUES (36, 96)
INSERT [dbo].[obj_501_1_18] ([ques_no], [ques_id]) VALUES (37, 88)
INSERT [dbo].[obj_501_1_18] ([ques_no], [ques_id]) VALUES (38, 100)
INSERT [dbo].[obj_501_1_18] ([ques_no], [ques_id]) VALUES (39, 84)
INSERT [dbo].[obj_501_1_18] ([ques_no], [ques_id]) VALUES (40, 98)
INSERT [dbo].[obj_501_1_18] ([ques_no], [ques_id]) VALUES (41, 93)
INSERT [dbo].[obj_501_1_18] ([ques_no], [ques_id]) VALUES (42, 89)
INSERT [dbo].[obj_501_1_18] ([ques_no], [ques_id]) VALUES (43, 123)
INSERT [dbo].[obj_501_1_18] ([ques_no], [ques_id]) VALUES (44, 112)
INSERT [dbo].[obj_501_1_18] ([ques_no], [ques_id]) VALUES (45, 138)
INSERT [dbo].[obj_501_1_18] ([ques_no], [ques_id]) VALUES (46, 125)
INSERT [dbo].[obj_501_1_18] ([ques_no], [ques_id]) VALUES (47, 116)
INSERT [dbo].[obj_501_1_18] ([ques_no], [ques_id]) VALUES (48, 137)
INSERT [dbo].[obj_501_1_18] ([ques_no], [ques_id]) VALUES (49, 117)
INSERT [dbo].[obj_501_1_18] ([ques_no], [ques_id]) VALUES (50, 135)
INSERT [dbo].[obj_501_1_18] ([ques_no], [ques_id]) VALUES (51, 130)
INSERT [dbo].[obj_501_1_18] ([ques_no], [ques_id]) VALUES (52, 127)
INSERT [dbo].[obj_501_1_18] ([ques_no], [ques_id]) VALUES (53, 110)
INSERT [dbo].[obj_501_1_18] ([ques_no], [ques_id]) VALUES (54, 113)
INSERT [dbo].[obj_501_1_18] ([ques_no], [ques_id]) VALUES (55, 128)
INSERT [dbo].[obj_501_1_18] ([ques_no], [ques_id]) VALUES (56, 133)
INSERT [dbo].[obj_501_1_18] ([ques_no], [ques_id]) VALUES (57, 168)
INSERT [dbo].[obj_501_1_18] ([ques_no], [ques_id]) VALUES (58, 218)
INSERT [dbo].[obj_501_1_18] ([ques_no], [ques_id]) VALUES (59, 231)
INSERT [dbo].[obj_501_1_18] ([ques_no], [ques_id]) VALUES (60, 184)
INSERT [dbo].[obj_501_1_18] ([ques_no], [ques_id]) VALUES (61, 193)
INSERT [dbo].[obj_501_1_18] ([ques_no], [ques_id]) VALUES (62, 188)
INSERT [dbo].[obj_501_1_18] ([ques_no], [ques_id]) VALUES (63, 144)
INSERT [dbo].[obj_501_1_18] ([ques_no], [ques_id]) VALUES (64, 160)
INSERT [dbo].[obj_501_1_18] ([ques_no], [ques_id]) VALUES (65, 202)
INSERT [dbo].[obj_501_1_18] ([ques_no], [ques_id]) VALUES (66, 206)
INSERT [dbo].[obj_501_1_18] ([ques_no], [ques_id]) VALUES (67, 141)
INSERT [dbo].[obj_501_1_18] ([ques_no], [ques_id]) VALUES (68, 223)
INSERT [dbo].[obj_501_1_18] ([ques_no], [ques_id]) VALUES (69, 207)
INSERT [dbo].[obj_501_1_18] ([ques_no], [ques_id]) VALUES (70, 164)
SET IDENTITY_INSERT [dbo].[obj_501_1_18] OFF
SET IDENTITY_INSERT [dbo].[obj_501_2_18] ON 

INSERT [dbo].[obj_501_2_18] ([ques_no], [ques_id]) VALUES (1, 37)
INSERT [dbo].[obj_501_2_18] ([ques_no], [ques_id]) VALUES (2, 7)
INSERT [dbo].[obj_501_2_18] ([ques_no], [ques_id]) VALUES (3, 25)
INSERT [dbo].[obj_501_2_18] ([ques_no], [ques_id]) VALUES (4, 31)
INSERT [dbo].[obj_501_2_18] ([ques_no], [ques_id]) VALUES (5, 33)
INSERT [dbo].[obj_501_2_18] ([ques_no], [ques_id]) VALUES (6, 20)
INSERT [dbo].[obj_501_2_18] ([ques_no], [ques_id]) VALUES (7, 17)
INSERT [dbo].[obj_501_2_18] ([ques_no], [ques_id]) VALUES (8, 16)
INSERT [dbo].[obj_501_2_18] ([ques_no], [ques_id]) VALUES (9, 9)
INSERT [dbo].[obj_501_2_18] ([ques_no], [ques_id]) VALUES (10, 22)
INSERT [dbo].[obj_501_2_18] ([ques_no], [ques_id]) VALUES (11, 14)
INSERT [dbo].[obj_501_2_18] ([ques_no], [ques_id]) VALUES (12, 32)
INSERT [dbo].[obj_501_2_18] ([ques_no], [ques_id]) VALUES (13, 34)
INSERT [dbo].[obj_501_2_18] ([ques_no], [ques_id]) VALUES (14, 1)
INSERT [dbo].[obj_501_2_18] ([ques_no], [ques_id]) VALUES (15, 77)
INSERT [dbo].[obj_501_2_18] ([ques_no], [ques_id]) VALUES (16, 41)
INSERT [dbo].[obj_501_2_18] ([ques_no], [ques_id]) VALUES (17, 47)
INSERT [dbo].[obj_501_2_18] ([ques_no], [ques_id]) VALUES (18, 78)
INSERT [dbo].[obj_501_2_18] ([ques_no], [ques_id]) VALUES (19, 63)
INSERT [dbo].[obj_501_2_18] ([ques_no], [ques_id]) VALUES (20, 62)
INSERT [dbo].[obj_501_2_18] ([ques_no], [ques_id]) VALUES (21, 56)
INSERT [dbo].[obj_501_2_18] ([ques_no], [ques_id]) VALUES (22, 58)
INSERT [dbo].[obj_501_2_18] ([ques_no], [ques_id]) VALUES (23, 40)
INSERT [dbo].[obj_501_2_18] ([ques_no], [ques_id]) VALUES (24, 64)
INSERT [dbo].[obj_501_2_18] ([ques_no], [ques_id]) VALUES (25, 54)
INSERT [dbo].[obj_501_2_18] ([ques_no], [ques_id]) VALUES (26, 82)
INSERT [dbo].[obj_501_2_18] ([ques_no], [ques_id]) VALUES (27, 80)
INSERT [dbo].[obj_501_2_18] ([ques_no], [ques_id]) VALUES (28, 79)
INSERT [dbo].[obj_501_2_18] ([ques_no], [ques_id]) VALUES (29, 98)
INSERT [dbo].[obj_501_2_18] ([ques_no], [ques_id]) VALUES (30, 106)
INSERT [dbo].[obj_501_2_18] ([ques_no], [ques_id]) VALUES (31, 108)
INSERT [dbo].[obj_501_2_18] ([ques_no], [ques_id]) VALUES (32, 105)
INSERT [dbo].[obj_501_2_18] ([ques_no], [ques_id]) VALUES (33, 95)
INSERT [dbo].[obj_501_2_18] ([ques_no], [ques_id]) VALUES (34, 104)
INSERT [dbo].[obj_501_2_18] ([ques_no], [ques_id]) VALUES (35, 96)
INSERT [dbo].[obj_501_2_18] ([ques_no], [ques_id]) VALUES (36, 84)
INSERT [dbo].[obj_501_2_18] ([ques_no], [ques_id]) VALUES (37, 102)
INSERT [dbo].[obj_501_2_18] ([ques_no], [ques_id]) VALUES (38, 91)
INSERT [dbo].[obj_501_2_18] ([ques_no], [ques_id]) VALUES (39, 86)
INSERT [dbo].[obj_501_2_18] ([ques_no], [ques_id]) VALUES (40, 92)
INSERT [dbo].[obj_501_2_18] ([ques_no], [ques_id]) VALUES (41, 90)
INSERT [dbo].[obj_501_2_18] ([ques_no], [ques_id]) VALUES (42, 85)
INSERT [dbo].[obj_501_2_18] ([ques_no], [ques_id]) VALUES (43, 132)
INSERT [dbo].[obj_501_2_18] ([ques_no], [ques_id]) VALUES (44, 109)
INSERT [dbo].[obj_501_2_18] ([ques_no], [ques_id]) VALUES (45, 118)
INSERT [dbo].[obj_501_2_18] ([ques_no], [ques_id]) VALUES (46, 137)
INSERT [dbo].[obj_501_2_18] ([ques_no], [ques_id]) VALUES (47, 133)
INSERT [dbo].[obj_501_2_18] ([ques_no], [ques_id]) VALUES (48, 121)
INSERT [dbo].[obj_501_2_18] ([ques_no], [ques_id]) VALUES (49, 128)
INSERT [dbo].[obj_501_2_18] ([ques_no], [ques_id]) VALUES (50, 134)
INSERT [dbo].[obj_501_2_18] ([ques_no], [ques_id]) VALUES (51, 117)
INSERT [dbo].[obj_501_2_18] ([ques_no], [ques_id]) VALUES (52, 112)
INSERT [dbo].[obj_501_2_18] ([ques_no], [ques_id]) VALUES (53, 120)
INSERT [dbo].[obj_501_2_18] ([ques_no], [ques_id]) VALUES (54, 115)
INSERT [dbo].[obj_501_2_18] ([ques_no], [ques_id]) VALUES (55, 131)
INSERT [dbo].[obj_501_2_18] ([ques_no], [ques_id]) VALUES (56, 113)
INSERT [dbo].[obj_501_2_18] ([ques_no], [ques_id]) VALUES (57, 176)
INSERT [dbo].[obj_501_2_18] ([ques_no], [ques_id]) VALUES (58, 152)
INSERT [dbo].[obj_501_2_18] ([ques_no], [ques_id]) VALUES (59, 158)
INSERT [dbo].[obj_501_2_18] ([ques_no], [ques_id]) VALUES (60, 216)
INSERT [dbo].[obj_501_2_18] ([ques_no], [ques_id]) VALUES (61, 178)
INSERT [dbo].[obj_501_2_18] ([ques_no], [ques_id]) VALUES (62, 163)
INSERT [dbo].[obj_501_2_18] ([ques_no], [ques_id]) VALUES (63, 209)
INSERT [dbo].[obj_501_2_18] ([ques_no], [ques_id]) VALUES (64, 141)
INSERT [dbo].[obj_501_2_18] ([ques_no], [ques_id]) VALUES (65, 208)
INSERT [dbo].[obj_501_2_18] ([ques_no], [ques_id]) VALUES (66, 236)
INSERT [dbo].[obj_501_2_18] ([ques_no], [ques_id]) VALUES (67, 238)
INSERT [dbo].[obj_501_2_18] ([ques_no], [ques_id]) VALUES (68, 190)
INSERT [dbo].[obj_501_2_18] ([ques_no], [ques_id]) VALUES (69, 154)
INSERT [dbo].[obj_501_2_18] ([ques_no], [ques_id]) VALUES (70, 245)
SET IDENTITY_INSERT [dbo].[obj_501_2_18] OFF
SET IDENTITY_INSERT [dbo].[obj_501_3_18] ON 

INSERT [dbo].[obj_501_3_18] ([ques_no], [ques_id]) VALUES (1, 23)
INSERT [dbo].[obj_501_3_18] ([ques_no], [ques_id]) VALUES (2, 3)
INSERT [dbo].[obj_501_3_18] ([ques_no], [ques_id]) VALUES (3, 12)
INSERT [dbo].[obj_501_3_18] ([ques_no], [ques_id]) VALUES (4, 16)
INSERT [dbo].[obj_501_3_18] ([ques_no], [ques_id]) VALUES (5, 35)
INSERT [dbo].[obj_501_3_18] ([ques_no], [ques_id]) VALUES (6, 21)
INSERT [dbo].[obj_501_3_18] ([ques_no], [ques_id]) VALUES (7, 49)
INSERT [dbo].[obj_501_3_18] ([ques_no], [ques_id]) VALUES (8, 69)
INSERT [dbo].[obj_501_3_18] ([ques_no], [ques_id]) VALUES (9, 76)
INSERT [dbo].[obj_501_3_18] ([ques_no], [ques_id]) VALUES (10, 57)
INSERT [dbo].[obj_501_3_18] ([ques_no], [ques_id]) VALUES (11, 67)
INSERT [dbo].[obj_501_3_18] ([ques_no], [ques_id]) VALUES (12, 42)
INSERT [dbo].[obj_501_3_18] ([ques_no], [ques_id]) VALUES (13, 88)
INSERT [dbo].[obj_501_3_18] ([ques_no], [ques_id]) VALUES (14, 97)
INSERT [dbo].[obj_501_3_18] ([ques_no], [ques_id]) VALUES (15, 87)
INSERT [dbo].[obj_501_3_18] ([ques_no], [ques_id]) VALUES (16, 84)
INSERT [dbo].[obj_501_3_18] ([ques_no], [ques_id]) VALUES (17, 93)
INSERT [dbo].[obj_501_3_18] ([ques_no], [ques_id]) VALUES (18, 104)
INSERT [dbo].[obj_501_3_18] ([ques_no], [ques_id]) VALUES (19, 132)
INSERT [dbo].[obj_501_3_18] ([ques_no], [ques_id]) VALUES (20, 110)
INSERT [dbo].[obj_501_3_18] ([ques_no], [ques_id]) VALUES (21, 112)
INSERT [dbo].[obj_501_3_18] ([ques_no], [ques_id]) VALUES (22, 113)
INSERT [dbo].[obj_501_3_18] ([ques_no], [ques_id]) VALUES (23, 123)
INSERT [dbo].[obj_501_3_18] ([ques_no], [ques_id]) VALUES (24, 129)
INSERT [dbo].[obj_501_3_18] ([ques_no], [ques_id]) VALUES (25, 146)
INSERT [dbo].[obj_501_3_18] ([ques_no], [ques_id]) VALUES (26, 214)
INSERT [dbo].[obj_501_3_18] ([ques_no], [ques_id]) VALUES (27, 158)
INSERT [dbo].[obj_501_3_18] ([ques_no], [ques_id]) VALUES (28, 224)
INSERT [dbo].[obj_501_3_18] ([ques_no], [ques_id]) VALUES (29, 186)
INSERT [dbo].[obj_501_3_18] ([ques_no], [ques_id]) VALUES (30, 199)
SET IDENTITY_INSERT [dbo].[obj_501_3_18] OFF
SET IDENTITY_INSERT [dbo].[obj_501_4_18] ON 

INSERT [dbo].[obj_501_4_18] ([ques_no], [ques_id]) VALUES (1, 17)
INSERT [dbo].[obj_501_4_18] ([ques_no], [ques_id]) VALUES (2, 4)
INSERT [dbo].[obj_501_4_18] ([ques_no], [ques_id]) VALUES (3, 36)
INSERT [dbo].[obj_501_4_18] ([ques_no], [ques_id]) VALUES (4, 11)
INSERT [dbo].[obj_501_4_18] ([ques_no], [ques_id]) VALUES (5, 21)
INSERT [dbo].[obj_501_4_18] ([ques_no], [ques_id]) VALUES (6, 28)
INSERT [dbo].[obj_501_4_18] ([ques_no], [ques_id]) VALUES (7, 54)
INSERT [dbo].[obj_501_4_18] ([ques_no], [ques_id]) VALUES (8, 46)
INSERT [dbo].[obj_501_4_18] ([ques_no], [ques_id]) VALUES (9, 49)
INSERT [dbo].[obj_501_4_18] ([ques_no], [ques_id]) VALUES (10, 44)
INSERT [dbo].[obj_501_4_18] ([ques_no], [ques_id]) VALUES (11, 47)
INSERT [dbo].[obj_501_4_18] ([ques_no], [ques_id]) VALUES (12, 45)
INSERT [dbo].[obj_501_4_18] ([ques_no], [ques_id]) VALUES (13, 108)
INSERT [dbo].[obj_501_4_18] ([ques_no], [ques_id]) VALUES (14, 88)
INSERT [dbo].[obj_501_4_18] ([ques_no], [ques_id]) VALUES (15, 83)
INSERT [dbo].[obj_501_4_18] ([ques_no], [ques_id]) VALUES (16, 96)
INSERT [dbo].[obj_501_4_18] ([ques_no], [ques_id]) VALUES (17, 102)
INSERT [dbo].[obj_501_4_18] ([ques_no], [ques_id]) VALUES (18, 93)
INSERT [dbo].[obj_501_4_18] ([ques_no], [ques_id]) VALUES (19, 117)
INSERT [dbo].[obj_501_4_18] ([ques_no], [ques_id]) VALUES (20, 121)
INSERT [dbo].[obj_501_4_18] ([ques_no], [ques_id]) VALUES (21, 112)
INSERT [dbo].[obj_501_4_18] ([ques_no], [ques_id]) VALUES (22, 135)
INSERT [dbo].[obj_501_4_18] ([ques_no], [ques_id]) VALUES (23, 115)
INSERT [dbo].[obj_501_4_18] ([ques_no], [ques_id]) VALUES (24, 123)
INSERT [dbo].[obj_501_4_18] ([ques_no], [ques_id]) VALUES (25, 190)
INSERT [dbo].[obj_501_4_18] ([ques_no], [ques_id]) VALUES (26, 236)
INSERT [dbo].[obj_501_4_18] ([ques_no], [ques_id]) VALUES (27, 171)
INSERT [dbo].[obj_501_4_18] ([ques_no], [ques_id]) VALUES (28, 183)
INSERT [dbo].[obj_501_4_18] ([ques_no], [ques_id]) VALUES (29, 209)
INSERT [dbo].[obj_501_4_18] ([ques_no], [ques_id]) VALUES (30, 200)
SET IDENTITY_INSERT [dbo].[obj_501_4_18] OFF
SET IDENTITY_INSERT [dbo].[obj_501_5_18] ON 

INSERT [dbo].[obj_501_5_18] ([ques_no], [ques_id]) VALUES (1, 18)
INSERT [dbo].[obj_501_5_18] ([ques_no], [ques_id]) VALUES (2, 27)
INSERT [dbo].[obj_501_5_18] ([ques_no], [ques_id]) VALUES (3, 34)
INSERT [dbo].[obj_501_5_18] ([ques_no], [ques_id]) VALUES (4, 2)
INSERT [dbo].[obj_501_5_18] ([ques_no], [ques_id]) VALUES (5, 33)
INSERT [dbo].[obj_501_5_18] ([ques_no], [ques_id]) VALUES (6, 8)
INSERT [dbo].[obj_501_5_18] ([ques_no], [ques_id]) VALUES (7, 3)
INSERT [dbo].[obj_501_5_18] ([ques_no], [ques_id]) VALUES (8, 1)
INSERT [dbo].[obj_501_5_18] ([ques_no], [ques_id]) VALUES (9, 19)
INSERT [dbo].[obj_501_5_18] ([ques_no], [ques_id]) VALUES (10, 22)
INSERT [dbo].[obj_501_5_18] ([ques_no], [ques_id]) VALUES (11, 7)
INSERT [dbo].[obj_501_5_18] ([ques_no], [ques_id]) VALUES (12, 21)
INSERT [dbo].[obj_501_5_18] ([ques_no], [ques_id]) VALUES (13, 6)
INSERT [dbo].[obj_501_5_18] ([ques_no], [ques_id]) VALUES (14, 36)
INSERT [dbo].[obj_501_5_18] ([ques_no], [ques_id]) VALUES (15, 31)
INSERT [dbo].[obj_501_5_18] ([ques_no], [ques_id]) VALUES (16, 25)
INSERT [dbo].[obj_501_5_18] ([ques_no], [ques_id]) VALUES (17, 26)
INSERT [dbo].[obj_501_5_18] ([ques_no], [ques_id]) VALUES (18, 5)
INSERT [dbo].[obj_501_5_18] ([ques_no], [ques_id]) VALUES (19, 29)
INSERT [dbo].[obj_501_5_18] ([ques_no], [ques_id]) VALUES (20, 30)
INSERT [dbo].[obj_501_5_18] ([ques_no], [ques_id]) VALUES (21, 63)
INSERT [dbo].[obj_501_5_18] ([ques_no], [ques_id]) VALUES (22, 78)
INSERT [dbo].[obj_501_5_18] ([ques_no], [ques_id]) VALUES (23, 60)
INSERT [dbo].[obj_501_5_18] ([ques_no], [ques_id]) VALUES (24, 40)
INSERT [dbo].[obj_501_5_18] ([ques_no], [ques_id]) VALUES (25, 66)
INSERT [dbo].[obj_501_5_18] ([ques_no], [ques_id]) VALUES (26, 53)
INSERT [dbo].[obj_501_5_18] ([ques_no], [ques_id]) VALUES (27, 44)
INSERT [dbo].[obj_501_5_18] ([ques_no], [ques_id]) VALUES (28, 49)
INSERT [dbo].[obj_501_5_18] ([ques_no], [ques_id]) VALUES (29, 52)
INSERT [dbo].[obj_501_5_18] ([ques_no], [ques_id]) VALUES (30, 80)
INSERT [dbo].[obj_501_5_18] ([ques_no], [ques_id]) VALUES (31, 77)
INSERT [dbo].[obj_501_5_18] ([ques_no], [ques_id]) VALUES (32, 58)
INSERT [dbo].[obj_501_5_18] ([ques_no], [ques_id]) VALUES (33, 56)
INSERT [dbo].[obj_501_5_18] ([ques_no], [ques_id]) VALUES (34, 68)
INSERT [dbo].[obj_501_5_18] ([ques_no], [ques_id]) VALUES (35, 54)
INSERT [dbo].[obj_501_5_18] ([ques_no], [ques_id]) VALUES (36, 72)
INSERT [dbo].[obj_501_5_18] ([ques_no], [ques_id]) VALUES (37, 67)
INSERT [dbo].[obj_501_5_18] ([ques_no], [ques_id]) VALUES (38, 69)
INSERT [dbo].[obj_501_5_18] ([ques_no], [ques_id]) VALUES (39, 70)
INSERT [dbo].[obj_501_5_18] ([ques_no], [ques_id]) VALUES (40, 48)
INSERT [dbo].[obj_501_5_18] ([ques_no], [ques_id]) VALUES (41, 85)
INSERT [dbo].[obj_501_5_18] ([ques_no], [ques_id]) VALUES (42, 89)
INSERT [dbo].[obj_501_5_18] ([ques_no], [ques_id]) VALUES (43, 86)
INSERT [dbo].[obj_501_5_18] ([ques_no], [ques_id]) VALUES (44, 103)
INSERT [dbo].[obj_501_5_18] ([ques_no], [ques_id]) VALUES (45, 97)
INSERT [dbo].[obj_501_5_18] ([ques_no], [ques_id]) VALUES (46, 83)
INSERT [dbo].[obj_501_5_18] ([ques_no], [ques_id]) VALUES (47, 84)
INSERT [dbo].[obj_501_5_18] ([ques_no], [ques_id]) VALUES (48, 91)
INSERT [dbo].[obj_501_5_18] ([ques_no], [ques_id]) VALUES (49, 93)
INSERT [dbo].[obj_501_5_18] ([ques_no], [ques_id]) VALUES (50, 108)
INSERT [dbo].[obj_501_5_18] ([ques_no], [ques_id]) VALUES (51, 106)
INSERT [dbo].[obj_501_5_18] ([ques_no], [ques_id]) VALUES (52, 107)
INSERT [dbo].[obj_501_5_18] ([ques_no], [ques_id]) VALUES (53, 92)
INSERT [dbo].[obj_501_5_18] ([ques_no], [ques_id]) VALUES (54, 102)
INSERT [dbo].[obj_501_5_18] ([ques_no], [ques_id]) VALUES (55, 95)
INSERT [dbo].[obj_501_5_18] ([ques_no], [ques_id]) VALUES (56, 99)
INSERT [dbo].[obj_501_5_18] ([ques_no], [ques_id]) VALUES (57, 94)
INSERT [dbo].[obj_501_5_18] ([ques_no], [ques_id]) VALUES (58, 100)
INSERT [dbo].[obj_501_5_18] ([ques_no], [ques_id]) VALUES (59, 88)
INSERT [dbo].[obj_501_5_18] ([ques_no], [ques_id]) VALUES (60, 104)
INSERT [dbo].[obj_501_5_18] ([ques_no], [ques_id]) VALUES (61, 113)
INSERT [dbo].[obj_501_5_18] ([ques_no], [ques_id]) VALUES (62, 130)
INSERT [dbo].[obj_501_5_18] ([ques_no], [ques_id]) VALUES (63, 117)
INSERT [dbo].[obj_501_5_18] ([ques_no], [ques_id]) VALUES (64, 129)
INSERT [dbo].[obj_501_5_18] ([ques_no], [ques_id]) VALUES (65, 137)
INSERT [dbo].[obj_501_5_18] ([ques_no], [ques_id]) VALUES (66, 132)
INSERT [dbo].[obj_501_5_18] ([ques_no], [ques_id]) VALUES (67, 138)
INSERT [dbo].[obj_501_5_18] ([ques_no], [ques_id]) VALUES (68, 125)
INSERT [dbo].[obj_501_5_18] ([ques_no], [ques_id]) VALUES (69, 111)
INSERT [dbo].[obj_501_5_18] ([ques_no], [ques_id]) VALUES (70, 121)
INSERT [dbo].[obj_501_5_18] ([ques_no], [ques_id]) VALUES (71, 116)
INSERT [dbo].[obj_501_5_18] ([ques_no], [ques_id]) VALUES (72, 127)
INSERT [dbo].[obj_501_5_18] ([ques_no], [ques_id]) VALUES (73, 128)
INSERT [dbo].[obj_501_5_18] ([ques_no], [ques_id]) VALUES (74, 133)
INSERT [dbo].[obj_501_5_18] ([ques_no], [ques_id]) VALUES (75, 115)
INSERT [dbo].[obj_501_5_18] ([ques_no], [ques_id]) VALUES (76, 119)
INSERT [dbo].[obj_501_5_18] ([ques_no], [ques_id]) VALUES (77, 118)
INSERT [dbo].[obj_501_5_18] ([ques_no], [ques_id]) VALUES (78, 135)
INSERT [dbo].[obj_501_5_18] ([ques_no], [ques_id]) VALUES (79, 136)
INSERT [dbo].[obj_501_5_18] ([ques_no], [ques_id]) VALUES (80, 131)
INSERT [dbo].[obj_501_5_18] ([ques_no], [ques_id]) VALUES (81, 216)
INSERT [dbo].[obj_501_5_18] ([ques_no], [ques_id]) VALUES (82, 180)
INSERT [dbo].[obj_501_5_18] ([ques_no], [ques_id]) VALUES (83, 212)
INSERT [dbo].[obj_501_5_18] ([ques_no], [ques_id]) VALUES (84, 206)
INSERT [dbo].[obj_501_5_18] ([ques_no], [ques_id]) VALUES (85, 168)
INSERT [dbo].[obj_501_5_18] ([ques_no], [ques_id]) VALUES (86, 219)
INSERT [dbo].[obj_501_5_18] ([ques_no], [ques_id]) VALUES (87, 142)
INSERT [dbo].[obj_501_5_18] ([ques_no], [ques_id]) VALUES (88, 169)
INSERT [dbo].[obj_501_5_18] ([ques_no], [ques_id]) VALUES (89, 143)
INSERT [dbo].[obj_501_5_18] ([ques_no], [ques_id]) VALUES (90, 224)
INSERT [dbo].[obj_501_5_18] ([ques_no], [ques_id]) VALUES (91, 203)
INSERT [dbo].[obj_501_5_18] ([ques_no], [ques_id]) VALUES (92, 167)
INSERT [dbo].[obj_501_5_18] ([ques_no], [ques_id]) VALUES (93, 237)
INSERT [dbo].[obj_501_5_18] ([ques_no], [ques_id]) VALUES (94, 244)
INSERT [dbo].[obj_501_5_18] ([ques_no], [ques_id]) VALUES (95, 231)
INSERT [dbo].[obj_501_5_18] ([ques_no], [ques_id]) VALUES (96, 160)
INSERT [dbo].[obj_501_5_18] ([ques_no], [ques_id]) VALUES (97, 227)
INSERT [dbo].[obj_501_5_18] ([ques_no], [ques_id]) VALUES (98, 235)
INSERT [dbo].[obj_501_5_18] ([ques_no], [ques_id]) VALUES (99, 191)
GO
INSERT [dbo].[obj_501_5_18] ([ques_no], [ques_id]) VALUES (100, 146)
SET IDENTITY_INSERT [dbo].[obj_501_5_18] OFF
SET IDENTITY_INSERT [dbo].[obj_501_6_18] ON 

INSERT [dbo].[obj_501_6_18] ([ques_no], [ques_id]) VALUES (1, 28)
INSERT [dbo].[obj_501_6_18] ([ques_no], [ques_id]) VALUES (2, 5)
INSERT [dbo].[obj_501_6_18] ([ques_no], [ques_id]) VALUES (3, 10)
INSERT [dbo].[obj_501_6_18] ([ques_no], [ques_id]) VALUES (4, 18)
INSERT [dbo].[obj_501_6_18] ([ques_no], [ques_id]) VALUES (5, 33)
INSERT [dbo].[obj_501_6_18] ([ques_no], [ques_id]) VALUES (6, 9)
INSERT [dbo].[obj_501_6_18] ([ques_no], [ques_id]) VALUES (7, 67)
INSERT [dbo].[obj_501_6_18] ([ques_no], [ques_id]) VALUES (8, 74)
INSERT [dbo].[obj_501_6_18] ([ques_no], [ques_id]) VALUES (9, 44)
INSERT [dbo].[obj_501_6_18] ([ques_no], [ques_id]) VALUES (10, 64)
INSERT [dbo].[obj_501_6_18] ([ques_no], [ques_id]) VALUES (11, 48)
INSERT [dbo].[obj_501_6_18] ([ques_no], [ques_id]) VALUES (12, 50)
INSERT [dbo].[obj_501_6_18] ([ques_no], [ques_id]) VALUES (13, 105)
INSERT [dbo].[obj_501_6_18] ([ques_no], [ques_id]) VALUES (14, 99)
INSERT [dbo].[obj_501_6_18] ([ques_no], [ques_id]) VALUES (15, 96)
INSERT [dbo].[obj_501_6_18] ([ques_no], [ques_id]) VALUES (16, 84)
INSERT [dbo].[obj_501_6_18] ([ques_no], [ques_id]) VALUES (17, 104)
INSERT [dbo].[obj_501_6_18] ([ques_no], [ques_id]) VALUES (18, 87)
INSERT [dbo].[obj_501_6_18] ([ques_no], [ques_id]) VALUES (19, 128)
INSERT [dbo].[obj_501_6_18] ([ques_no], [ques_id]) VALUES (20, 127)
INSERT [dbo].[obj_501_6_18] ([ques_no], [ques_id]) VALUES (21, 115)
INSERT [dbo].[obj_501_6_18] ([ques_no], [ques_id]) VALUES (22, 130)
INSERT [dbo].[obj_501_6_18] ([ques_no], [ques_id]) VALUES (23, 131)
INSERT [dbo].[obj_501_6_18] ([ques_no], [ques_id]) VALUES (24, 126)
INSERT [dbo].[obj_501_6_18] ([ques_no], [ques_id]) VALUES (25, 236)
INSERT [dbo].[obj_501_6_18] ([ques_no], [ques_id]) VALUES (26, 233)
INSERT [dbo].[obj_501_6_18] ([ques_no], [ques_id]) VALUES (27, 193)
INSERT [dbo].[obj_501_6_18] ([ques_no], [ques_id]) VALUES (28, 212)
INSERT [dbo].[obj_501_6_18] ([ques_no], [ques_id]) VALUES (29, 204)
INSERT [dbo].[obj_501_6_18] ([ques_no], [ques_id]) VALUES (30, 140)
SET IDENTITY_INSERT [dbo].[obj_501_6_18] OFF
SET IDENTITY_INSERT [dbo].[obj_501_7_18] ON 

INSERT [dbo].[obj_501_7_18] ([ques_no], [ques_id]) VALUES (1, 32)
INSERT [dbo].[obj_501_7_18] ([ques_no], [ques_id]) VALUES (2, 33)
INSERT [dbo].[obj_501_7_18] ([ques_no], [ques_id]) VALUES (3, 4)
INSERT [dbo].[obj_501_7_18] ([ques_no], [ques_id]) VALUES (4, 9)
INSERT [dbo].[obj_501_7_18] ([ques_no], [ques_id]) VALUES (5, 28)
INSERT [dbo].[obj_501_7_18] ([ques_no], [ques_id]) VALUES (6, 15)
INSERT [dbo].[obj_501_7_18] ([ques_no], [ques_id]) VALUES (7, 75)
INSERT [dbo].[obj_501_7_18] ([ques_no], [ques_id]) VALUES (8, 38)
INSERT [dbo].[obj_501_7_18] ([ques_no], [ques_id]) VALUES (9, 66)
INSERT [dbo].[obj_501_7_18] ([ques_no], [ques_id]) VALUES (10, 68)
INSERT [dbo].[obj_501_7_18] ([ques_no], [ques_id]) VALUES (11, 67)
INSERT [dbo].[obj_501_7_18] ([ques_no], [ques_id]) VALUES (12, 82)
INSERT [dbo].[obj_501_7_18] ([ques_no], [ques_id]) VALUES (13, 102)
INSERT [dbo].[obj_501_7_18] ([ques_no], [ques_id]) VALUES (14, 85)
INSERT [dbo].[obj_501_7_18] ([ques_no], [ques_id]) VALUES (15, 98)
INSERT [dbo].[obj_501_7_18] ([ques_no], [ques_id]) VALUES (16, 105)
INSERT [dbo].[obj_501_7_18] ([ques_no], [ques_id]) VALUES (17, 87)
INSERT [dbo].[obj_501_7_18] ([ques_no], [ques_id]) VALUES (18, 94)
INSERT [dbo].[obj_501_7_18] ([ques_no], [ques_id]) VALUES (19, 123)
INSERT [dbo].[obj_501_7_18] ([ques_no], [ques_id]) VALUES (20, 136)
INSERT [dbo].[obj_501_7_18] ([ques_no], [ques_id]) VALUES (21, 117)
INSERT [dbo].[obj_501_7_18] ([ques_no], [ques_id]) VALUES (22, 133)
INSERT [dbo].[obj_501_7_18] ([ques_no], [ques_id]) VALUES (23, 124)
INSERT [dbo].[obj_501_7_18] ([ques_no], [ques_id]) VALUES (24, 131)
INSERT [dbo].[obj_501_7_18] ([ques_no], [ques_id]) VALUES (25, 154)
INSERT [dbo].[obj_501_7_18] ([ques_no], [ques_id]) VALUES (26, 161)
INSERT [dbo].[obj_501_7_18] ([ques_no], [ques_id]) VALUES (27, 163)
INSERT [dbo].[obj_501_7_18] ([ques_no], [ques_id]) VALUES (28, 184)
INSERT [dbo].[obj_501_7_18] ([ques_no], [ques_id]) VALUES (29, 183)
INSERT [dbo].[obj_501_7_18] ([ques_no], [ques_id]) VALUES (30, 240)
SET IDENTITY_INSERT [dbo].[obj_501_7_18] OFF
SET IDENTITY_INSERT [dbo].[objective_master] ON 

INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (1, 501, 1, N'A complete set of precise and clear instruction given to a computer for performing a predifined tas is called a _________ .', N'NULL', N'Pseudo code', N'Flow chart', N'Algorithm ', N'Program', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (2, 501, 1, N'Which of the following technique is used to solve a program', N'NULL', N'Pseudo code', N'Flow chart', N'Algorithm ', N'All of the given', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (3, 501, 1, N'__________  means simulated code.', N'NULL', N'Pseudo code', N'Flow chart', N'Algorithm ', N'None of the given', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (4, 501, 1, N'A ___________  is a pictorial representation of every action that are performed within the machine process that solves a problem', N'NULL', N'Pseudo code', N'Flow chart', N'Algorithm ', N'Program', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (5, 501, 1, N'Which of the following is the pictorial representation of a problem solving technique?', N'NULL', N'Pseudo code', N'Flow chart', N'Algorithm ', N'Computer Program', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (6, 501, 1, N'Which of the following institute has defined the symbol of flowchart?', N'NULL', N'ASCII', N'ANSI', N'ANCI', N'ASCI', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (7, 501, 1, N'Which of the following symbol is used to represent input/output in flowchart?', N'NULL', N'Square', N'Circle', N'Parallelogram', N'Triangle', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (8, 501, 1, N'Which of the following is the standard terminal symbol for a flowchart ? ', N'NULL', N'Circle', N'Oval', N'Rounded rectangle ', N'Square', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (9, 501, 1, N'Which of the following symbol is used to test conditions in a flowchart ?', N'NULL', N'Diamond', N'Circle', N'Arrow', N'Square', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (10, 501, 1, N'An arrow symbol in flowchart is used to show ______________ .', N'NULL', N'the flow of an action', N'the sequence of an action', N'the starts of actions ', N'the completion of an action', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (11, 501, 1, N'Which of the following is used to distinguish different connector pairs in flowchart ?', N'NULL', N'Arrows are used ', N'Alphabets or other character are used', N'Circles are used', N'Diamond are used', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (12, 501, 1, N'In which of the following, the data enters from one point but comes out from more than one point ?', N'NULL', N'input/output', N'process', N'connector', N'decision', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (13, 501, 1, N'When a flowchart becomes too large, to fit into a single page, in such case a ________  symbol can be used to join the two parts of a flowchart', N'NULL', N'input/output', N'connector', N'procese', N'flow line', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (14, 501, 1, N'In which of the followinf symbol, the variable is assigned the value or the output is displaced ?', N'NULL', N'Oval', N'Diamond', N'Rectangle', N'Parallelogram', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (15, 501, 1, N'In which symbol the statement Print B is written ?', N'NULL', N'Oval', N'Rectangle', N'Parallelogram', N'Circle', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (16, 501, 1, N'Which of the following symbol is used to write the statement let X=A+B ?', N'NULL', N'Oval', N'Diamond', N'Rectangle', N'Circle', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (17, 501, 1, N'Which of the following refers to the core part of any solution ?', N'NULL', N'Input ', N'Output', N'Process', N'Algorithm', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (18, 501, 1, N'Which of the following can be considered as a computer process ?', N'NULL', N'Social', N'Arithmetiv operation', N'logical operation', N'Both option2 & option3', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (19, 501, 1, N'Which of the following operations are performed using process symbol in flowchart ?', N'NULL', N'Social', N'Mathematical operation ', N'Loogical operation', N'Both option2 & option3', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (20, 501, 1, N'Which of the following are arithmetic operation? ', N'NULL', N'Addition,Subtraction', N'Division,Multiplication', N'Both option1 & option2  ', N'Taking any decision', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (21, 501, 1, N'___________  is an entity whose value once assigned remains fixed and cannot be changed during the entire process . ', N'NULL', N'Variable ', N'Constant', N'Both option1 & option2  ', N'None of the given', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (22, 501, 1, N'___________ symbol shows the value of variable.', N'NULL', N'Process', N'Decision', N'flow line', N'Terminal', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (23, 501, 1, N'___________  refers to a list of instructions in a proper order to solve a problem.', N'NULL', N'Pseudo code', N'Algorithm', N'Flow chart', N'Program', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (24, 501, 1, N'Which of the following is not a problem solving technique ?', N'NULL', N'Pseudo code', N'Flow chart', N'Algorithm ', N'Sequence', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (25, 501, 1, N'Which of the following refers to a list of instructions in a proper order to solve a problem is called ?', N'NULL', N'Algorithm', N'Flow chart', N'Sequence', N'Roadmap', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (26, 501, 1, N'Which of the following refers to the purpose of alogorithm and flowchart ?', N'NULL', N'Know the memory capacity', N'Identify the base of the number system', N'Direct the output to the printer ', N'Specify the problem completely and clearly', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (27, 501, 1, N'An algorithm is written in a natural language like ___________ .', N'NULL', N'Chinese', N'English', N'Russia', N'Gujarati', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (28, 501, 1, N'____________  shows the flow of the program.', N'NULL', N'Terminal', N'process', N'flow line', N'decision', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (29, 501, 1, N'__________  symbol refers to begning as well as the end of a flowchart.', N'NULL', N'Terminal', N'connector', N'Process', N'decision', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (30, 501, 1, N'Which of the following command can be written in the decision box ?', N'NULL', N'X>Y ?', N'Print y', N'Input x', N'C=A+B', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (31, 501, 1, N'For which of the following input/output symbols are used while solving a problem ?', N'NULL', N'To get the value from the user', N'To give output', N'To display a message', N'All of the given', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (32, 501, 1, N'Which symbol is used for performing mathematical calulation or to display message ?', N'NULL', N'input/output', N'Start/End', N'Decision', N'Process', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (33, 501, 1, N'A __________  is used to alter the normal sequence of the solution .', N'NULL', N'Process', N'Decision Box', N'Connector', N'Start', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (34, 501, 1, N'In which of the following way decision box is used ?', N'NULL', N'Two way', N'Three way', N'Multi way', N'All of the given', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (35, 501, 1, N'What does following symbol reperesent ?', N'NULL', N'The flow of the process is on part 5', N'Part 5 of the flow starts from here', N'Go to page number 5 to see the process', N'None of the given', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (36, 501, 1, N'In flowchart , when the same set of statement is repeated for more than one time, it is called ______________ .', N'NULL', N'nesting', N'looping', N'jumping', N'All of the given', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (37, 501, 1, N'What does following symbol reperesent ?', N'NULL', N'The flow of the process is on part 5', N'Part 5 of the flow starts from here', N'Go to page number 5 to see the process', N'None of the given', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (38, 501, 2, N'A set of precise and clear instruction given to a computer for performing a predifened task is called _________ .', N'NULL', N'Syntax ', N'Data', N'Program', N'Input', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (39, 501, 2, N'The program that converts programming language into the machine language is called _____.', N'NULL', N'Compiler', N'Loader', N'Linker', N'All of the given', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (40, 501, 2, N'__________ owns the credit of creating C language.', N'NULL', N'Bill Gates', N'Steve Jobs', N'Pascal', N'Dennis.M.Ritchie', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (41, 501, 2, N'C language was derived from ____________.', N'NULL', N'BCPL', N'ICPL', N'IPCL', N'SGML', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (42, 501, 2, N'The full form of BCPL is __________.', N'NULL', N'Basic Combined Programming Language', N'Basic Computing Programming Language', N'Basic Computer Programming Language', N'Basic Co-ordinatedProgramming Language', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (43, 501, 2, N'The full form of ANSI is __________.', N'NULL', N'American National Symbolic Institute ', N'Australian National Symbolic Institute', N'American National Standard Institute', N'Australian National Standard Institute', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (44, 501, 2, N'C is a____ language', N'NULL', N'structured', N'portable', N'middle level and higher level', N'All of the given', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (45, 501, 2, N'By which other language C is known as ?', N'NULL', N'general purpose programming language', N'ANSI C', N'Both option1 &option2', N'ASCII C', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (46, 501, 2, N'In C language, comments are enclosed within _________.', N'NULL', N'/ and /', N'< and >', N'/* and */', N'* and *', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (47, 501, 2, N'The pre-processor directive # define is used to define which of the following in C.', N'NULL', N'String Constant', N'Symbolic Constant', N'Integer Constant', N'A character', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (48, 501, 2, N'In C language, symbolic constant is generally written using _____________.', N'NULL', N'# include', N'# define', N'# main', N'none of the given', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (49, 501, 2, N'The extension of header file is ___________.', N'NULL', N'.head', N'.header', N'.h', N'none of the given', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (50, 501, 2, N'The variable defined within _________ are known as local variable.', N'NULL', N'(  )', N'[  ] ', N'<  > ', N'{  }', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (51, 501, 2, N'The executive og C program starts from ________.', N'NULL', N'#include<stdio.h>', N'#define PI 3.14', N'main()', N'All of the given', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (52, 501, 2, N'____________ of the following is/are built-in function/s', N'NULL', N'printf()', N'scanf()', N'sqrt()', N'All of the given', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (53, 501, 2, N'C statements end with _________ sign.', N'NULL', N': ', N';', N',', N'!', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (54, 501, 2, N'Which of the following is an extension of C program file ?', N'NULL', N'c ', N'h ', N's ', N't', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (55, 501, 2, N'The default extension of object code is ___________ .', N'NULL', N'.c', N'.exe', N'.obj', N'.o', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (56, 501, 2, N'The extension of executable code is ___________ .', N'NULL', N'.c', N'.exe', N'.obj', N'.o', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (57, 501, 2, N'Which of the following C character categories does the = symbol  belong ?', N'NULL', N'Letters', N'White Spaces', N'Special Character', N'Digits', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (58, 501, 2, N'The syntax of header file is ______.', N'NULL', N'#include<filename.c>', N'#define<filename.h>', N'#include<filename.h>', N'#define<filename.c>', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (59, 501, 2, N'Which of the following function is used to print message/instruction ?', N'NULL', N'scanf()', N'main()', N'return()', N'printf()', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (60, 501, 2, N'___________ of the following comes under the letters category of C character set.', N'NULL', N'0 to 9', N'A to Z', N'Form feed', N'=', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (61, 501, 2, N'___________ of the following are the white spaces of C character set .', N'NULL', N'Horizontal and vertical tab', N'Blank space, Form feed, New line', N'#,@[ ],{ },( )', N'both option1 and option2', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (62, 501, 2, N'The C character set is made up of _________ language.', N'NULL', N'Hindi', N'Chinese', N'English', N'Japanese', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (63, 501, 2, N'Set of __________ sequential C statements is identified as C program. ', N'NULL', N'Starting', N'internal', N'logically', N'escape', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (64, 501, 2, N'_____________ of the following is not a token of C language .', N'NULL', N'Strimg', N'Operator', N'Word', N'Constant', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (65, 501, 2, N'Which of the following is a valid keyword Of C ?', N'NULL', N'ofsize', N'sizeof', N'forsize', N'sizefor', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (66, 501, 2, N'A word that a user has constructed by making use of C character set is known as __________ .', N'NULL', N'Token', N'Keyword', N'Identifier', N'Variable', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (67, 501, 2, N'_______ is a keyword .', N'NULL', N'main()', N'int', NULL, N'*', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (68, 501, 2, N'Which of the following cannot be used in a variable name ?', N'NULL', N'Blank Space', N'Keyword', N'Letters', N'both option1 and option2', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (69, 501, 2, N'The first character of variable name must be __________ .', N'NULL', N'Letters', N'#', N'underscore', N'option1 or option3', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (70, 501, 2, N'Which of the following is an invalid variable name in C ?', N'NULL', N'Register', N'RegIster', N'registre', N'register', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (71, 501, 2, N'_____________ of the followinf is a string .', N'NULL', N'main()', N'Welcome', N'*', N'}', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (72, 501, 2, N'In hexadecimal constant, A to F refers to numeric values ____________ respectively .', N'NULL', N'15 to 20', N'10 to 15', N'12 to 17', N'20 to 25', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (73, 501, 2, N'The octal constants use numeric digits from ________.', N'NULL', N'0 to 8', N'1 to 7', N'1 to 8', N'0 to 7', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (74, 501, 2, N'In C language, ___________ of the following constant is displayed using 0 as prefix.', N'NULL', N'decimal', N'octal', N'hexadecimal', N'hexagone', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (75, 501, 2, N'Which of the following is an invalid integer constant in C ?', N'NULL', N'0xG', N'0xA', N'0XB', N'0xD', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (76, 501, 2, N'_____________ of the following is an invalid hexadecimal constant .', N'NULL', N'0XAH', N'OXAB', N'OX97', N'OX53', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (77, 501, 2, N'Which of the following occupies single space in memory ?', N'NULL', N'Single character constant', N'String constant', N'Both option1 &option2', N'none of the given', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (78, 501, 2, N'The first character of back slash character is always a ___________.', N'NULL', N'?', N'>', N'\', N'ASCII Value', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (79, 501, 2, N'____________ is used to insert audible alert.', N'NULL', N'\s', N'\t', N'\n', N'\a', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (80, 501, 2, N'Which of the following is not a symbolic constant ?', N'NULL', N'#define P printf', N'#define F float', N'#define PI 3.14', N'#include <stdio.h>', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (81, 501, 2, N'The full form of IDE is __________.', N'NULL', N'Integrated Development Environment', N'International Development Entity', N'Informal Developed Environment', N'InformalDeveloped Entity', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (82, 501, 2, N'Which default file is created to store the output of the C program written in gedit .', N'NULL', N'a.out', N'o.out', N'out.out', N'in,out', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (83, 501, 3, N'Decision structure statemebts in C are also known as  ___________  statements .', N'NULL', N'selective structure', N'branching ', N'control ', N'all of the given', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (84, 501, 3, N'The __________ is the one of the poweful statement for transfering control of instruction execution .', N'NULL', N'switch', N'if', N'case', N'break', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (85, 501, 3, N'which of the following is the simplest form of decision structure statement ?', N'NULL', N'if', N'if…else', N'Nested...if', N'else…if ladder', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (86, 501, 3, N'In simple if statement, there is__________  statement block.', N'NULL', N'only one', N'two', N'multiple', N'none of the given', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (87, 501, 3, N'The __________ statement gets executed only when test expression is true .', N'NULL', N'if…else', N'Nested if', N'simple if', N'else…if ladder', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (88, 501, 3, N'Test expression of if statement is always written in ______________ .', N'NULL', N'[]brackets', N'<>sign', N'{}brackets', N'brackets', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (89, 501, 3, N'Test expression of if statement contains ____________ , the result of the same may be true or false .', N'NULL', N'Logical operator', N'relational operator', N'logical expression', N'bitwise operator', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (90, 501, 3, N'if statement is considered to be __________ statement when the test expression part of if ends with a semicolon.', N'NULL', N'dull', N'null', N'extra', N'conditional', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (91, 501, 3, N'When both the test expression of if …else are evaluated to false , _______ parts gets executed', N'NULL', N'if', N'else', N'third', N'none of the given', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (92, 501, 3, N'When only else (false) block of nested …if statements together it is known as _________ .', N'NULL', N'false…if ladder', N'else…if ladder', N'wrong…if ladder', N'continue…if ladder', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (93, 501, 3, N'Each case option of switch statement contains __________ .', N'NULL', N'constant ', N'variable', N'key ', N'condition ', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (94, 501, 3, N'The __________ statement is used to terminate the case statement block .', N'NULL', N'exit', N'break', N'loop', N'stop', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (95, 501, 3, N'In switch statement, switch, case and _______ words are used .', N'NULL', N'break', N'default', N'both option1 and option2', N'if…else', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (96, 501, 3, N'When no case is found during execution of switch statement the ________  statement block is executed.   ', N'NULL', N'break', N'default', N'continue', N'none of the given', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (97, 501, 3, N'The use of ________ is optional in switch .', N'NULL', N'break', N'default', N'both option1 and option2', N'case', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (98, 501, 3, N'What is the value of variable ''s'' after the execution of following switch statement ?', N'NULL', N'A', N'B', N'C', N'D', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (99, 501, 3, N'What will be the output when following program segment is executed ?', N'NULL', N'A', N'B', N'C', N'error', N'4')
GO
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (100, 501, 3, N'What can be first in the statement switch(first) ?', N'NULL', N'constant ', N'variable', N'expression', N'all of the given', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (101, 501, 3, N'Each case statement of switch contains constant or constant expressions and it is known as __________ .', N'NULL', N'label', N'constant label', N'case label', N'all of the given', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (102, 501, 3, N'What will be the output when following program segment is executed ?', N'NULL', N'6 7 7', N'6 7', N'123', N'error', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (103, 501, 3, N'When chain of if statements are used together to evaluate multiple decision, it becomes ________ statement .', N'NULL', N'if…else', N'nested…if', N'else…if ladder', N'none of the given', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (104, 501, 3, N'Simple one or more relational tests joined together by ___________ are known as compound relational tests .', N'NULL', N'logical AND operator', N'logical OR operator', N'option1 or option2', N'if…else', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (105, 501, 3, N'__________ structure is used to display the message           Student Passed                  if the marks of the student is greater than 40 otherwise the message                     Sudent failed', N'NULL', N'simple if', N'else…if ladder', N'if…else', N'switch', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (106, 501, 3, N'All programing language offers ___________  structure allowing programmers to execute a statement or group of statements multiple times .', N'NULL', N'loop control', N'switch', N'decision making', N'option1 or option3', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (107, 501, 3, N'In looping , the sequence of statement are executed until some __________ condition is satisfied .', N'NULL', N'exit', N'entry', N'if', N'switch', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (108, 501, 3, N'The word ______________  suggests that the flow of execution may not be sequential and control may be transfer to any statement based on given condition of the program .', N'NULL', N'Binary structure', N'conditional structure', N'control structure', N'none of the given', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (109, 501, 4, N'Depending on ________ in loop , it can be classified int two types.', N'NULL', N'parts', N'the place of control statement', N'both option1 and option2', N'Types of program', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (110, 501, 4, N'In__________ controlled loop. The exit/control condition is checked before executions of statement inside loop body .', N'NULL', N'entry', N'exit', N'process', N'time', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (111, 501, 4, N'In case of ________  loop , body body will be executed at least once before exiting from the loop.', N'NULL', N'entry controlled', N'exit controlled', N'process controlled', N'time controlled', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (112, 501, 4, N'_________ is/are entry/controlled loop.', N'NULL', N'for', N'while', N'do…while', N'both option1 and option 2', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (113, 501, 4, N'_________ is/are exit/controlled loop.', N'NULL', N'for', N'while', N'do…while', N'both option2 and option 3', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (114, 501, 4, N'The _________ loop is generally used when block of statements need to be executed for fixed number of times .', N'NULL', N'while', N'break', N'do…while', N'for', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (115, 501, 4, N'_________ condition is used inside for loop to make it more dynamic .', N'NULL', N'entry', N'exit', N'option1 or option 2', N'none of the given', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (116, 501, 4, N'The for loop cobtains expression in __________ .', N'NULL', N'(  )', N'{  }', N'[  ] ', N'{(  )}', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (117, 501, 4, N'Expression 1 in for loop works ______________.', N'NULL', N'for intializing value of counter variable ', N'as control variable', N'for increment', N'both option1 and option 2', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (118, 501, 4, N'_____________ in for loop is also known as control variable .', N'NULL', N'Expression3', N'Expression1', N'Statement block', N'Expression2', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (119, 501, 4, N'In __________  loop , control variable is used to control the number time a loop is to be executed .', N'NULL', N'while', N'do…while', N'for  ', N'if', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (120, 501, 4, N'___________ in for loop , is used to evalute the test condition every time .', N'NULL', N'Expression1', N'Expression3', N'Expression2', N'all of the given', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (121, 501, 4, N'All the expression of for loop are _____.', N'NULL', N'compulsary', N'optional', N'conditional', N'operator', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (122, 501, 4, N'__________ loop is more suitable when number of iterations can''t be pre-determined and also loop terminating condition is to be tested before entering the loop. ', N'NULL', N'while', N'do…while', N'for', N'both option1 and option 3', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (123, 501, 4, N'____________ loop is suitable to find sum of all numbers entered until user enters zero .', N'NULL', N'for', N'while', N'do…while', N'both option2 and option 3', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (124, 501, 4, N'Which of the following loop is used when numbe of iteration are noe pre-determined .', N'NULL', N'while', N'do…while', N'both option1 and option2', N'for', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (125, 501, 4, N'The control structure of the loop may varu in _________ loop .', N'NULL', N'for', N'do…while', N'while', N'Nested', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (126, 501, 4, N'The _________ statement is used to terminate a case in the switch statement .', N'NULL', N'continue', N'break', N'default', N'case', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (127, 501, 4, N'The _____________ statements stops the current iteration of the loop and continues the next iteration of the loop .', N'NULL', N'Continue', N'go to ', N'break', N'start', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (128, 501, 4, N'In for loop, continue statement causes __________ of the loop to  execute .', N'NULL', N'conditional test', N'increment portion', N'both option1 and option2', N'Expression1', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (129, 501, 4, N'_______________ are unconditional transfer control statements .', N'NULL', N'for,while', N'for,do…while', N'break,continue', N'while,do…while', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (130, 501, 4, N'Any loop in a program becomes _____________ loop if it runs forever and program control never comesout of it .  ', N'NULL', N'entry', N'exit', N'infinite', N'incoming', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (131, 501, 4, N'C program runs forever when ___________ construct is used .', N'NULL', N'for(; ;)', N'for ( ; )', N'for(; ; ; )', N'for( ; ) ;', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (132, 501, 4, N'An array is generally used for __________ data.', N'NULL', N'Processed', N'table', N'business', N'none of the given', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (133, 501, 4, N'A/An ___________ is a data structure made up of group of variables having same property .', N'NULL', N'structure', N'array', N'function', N'constant', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (134, 501, 4, N'An array is generally used for __________ data.', N'NULL', N'contiguous', N'separate', N'small ', N'large', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (135, 501, 4, N'_________ is a fixed-size sequential collection of elements .', N'NULL', N'A function', N'Storage classes', N'An array', N'none of the given', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (136, 501, 4, N'All the____________ of an array is reffered by single name .', N'NULL', N'parts', N'values', N'elements', N'option1 or option2 or option3', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (137, 501, 4, N'_____________ is an arrayname marks [i].', N'NULL', N'marks', N'i', N'[ ]', N'none of the given', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (138, 501, 4, N'An array variable marks [60] can store __________ values .', N'NULL', N'1 to 60', N'0 to 60', N'0 to 59', N'0', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (139, 501, 5, N'In array , the index number contained within square bracket is known as ______.', N'NULL', N'subscript', N'index number', N'option1 or option2', N'none of the given', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (140, 501, 5, N'The subscript of an array must be _____________ .', N'NULL', N'an integer', N'an integer expression', N'option1 or option2', N'real number', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (141, 501, 5, N'Which of the following array have one row or one column?', N'NULL', N'Single dimentional array', N'Multidimential array', N'Three dimentional array', N'Two dimentional array', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (142, 501, 5, N'Which of the following array have one or more row and one or more column?', N'NULL', N'Single dimentional array', N'Multidimential array', N'Multipurpose array', N'none of the given', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (143, 501, 5, N'In array syntax , data type arrayname[size];_________ indicates the type of element that an array stores . ', N'NULL', N'data type ', N'arrayname', N'[  ]', N'size', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (144, 501, 5, N'What does arrayname specify in array syntax , data type arrayname[size]; ?', N'NULL', N'Type of data', N'Name of array variable', N'Number of elements', N'all of the given', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (145, 501, 5, N'Which of the following data type can be used for an array variable ?', N'NULL', N'int', N'float,double', N'char', N'all of the given', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (146, 501, 5, N'Which of the following is not provided as in-built data type by C language ?', N'NULL', N'int', N'char', N'float ', N'string', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (147, 501, 5, N'In array syntax , data type arrayname[size];_________ indicates the number of elements the array can store . ', N'NULL', N'data type ', N'arrayname', N'size', N'none of the given', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (148, 501, 5, N'The list of values that is to be assigned to an array element is enclosed within __________ .', N'NULL', N'(  )', N'[  ]', N'{  }', N'([  ])', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (149, 501, 5, N'The initial values of an array are seperated using ____ sign. ', N'NULL', N',', N'-', N':', N';', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (150, 501, 5, N'When an array is assigned values at time of declaration , it is known as _________ array initializataion .', N'NULL', N'run time ', N'compile time', N'declaration time', N'none of the given', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (151, 501, 5, N'When an array is assigned values at time of execution of program , it is known as _________ array initializataion .', N'NULL', N'run time ', N'compile time', N'declaration time', N'none of the given', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (152, 501, 5, N'During the declaration of an integer array variable, if lists of value are lrss than the size of an array, then only specified number of elements will be initialized and the remaing elements will be initialized to ___________ .', N'NULL', N'\n', N'\O', N'\t', N'\b', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (153, 501, 5, N'In C language ,___________ array is used to represent string .', N'NULL', N'Integer', N'character', N'string', N'float', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (154, 501, 5, N'String in a C language are terminated by  the special character called null character ___________ .', N'NULL', N'\n', N'\0', N'\t', N'\b', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (155, 501, 5, N'_________ operator is used to know the size of of an array .', N'NULL', N'sizeof', N'>>', N'<<', N'!', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (156, 501, 5, N'_________ is the first element of an array X [10].', N'NULL', N'x[1]', N'x[0]', N'x[-1]', N'A[0]', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (157, 501, 5, N'Which of the following array element will get value 7 from int a[5]= {3,15,25,7,10}; ?', N'NULL', N'A[4]', N'A[6]', N'A[3]', N'A[0]', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (158, 501, 5, N'Which of the following array is allowed in C ?', N'NULL', N'One dimentional,two dimentional', N'Three dimentional', N'N-dimentional', N'all of the given', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (159, 501, 5, N'The single dimentional array keeps track of information in __________ order .', N'NULL', N'linear', N'random', N'two dimentional', N'both option2 and option3', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (160, 501, 5, N'The data associated with which of the following are in two dimentional ?', N'NULL', N'Digital image ', N'chess game board', N'Matrix', N'all of the given', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (161, 501, 5, N'The simplest form of the multi dimentional array is ________.', N'NULL', N'three dimentonal', N'N-dimentional', N'two dimentional', N'one dimentional', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (162, 501, 5, N'The __________ array have row index as well as column index .', N'NULL', N'three dimentonal', N'N-dimentional', N'two dimentional', N'one dimentional', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (163, 501, 5, N'The statement int a[3][3]; divides the array elements as per ______.', N'NULL', N'3*3', N'3+3', N'3+3', N'3%3', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (164, 501, 5, N'An array element is stored in ___________.', N'NULL', N'CPU', N'CD', N'memory', N'scrreen', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (165, 501, 5, N'In C language , the multi dimentional arrays are _________ major .', N'NULL', N'rows', N'columns', N'Both option1 and option2', N'none of the given', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (166, 501, 5, N'C language provides power to the programmer to write any __________  within the [ ] of an array .', N'NULL', N'index value', N'data type', N'array name', N'all of the given', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (167, 501, 5, N'Which of the following is invalid index value for an array int number[5]; ?', N'NULL', N'number[-1]', N'number[6]', N'Both option1 and option2', N'number[4]', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (168, 501, 5, N'What happens when invalid index value is used with an array ?', N'NULL', N'The program may give garbagr data', N'The program may get crash', N'Both option1 and option2', N'The program will run properly', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (169, 501, 5, N'What happens if a C program tries to access a value from an array element whose subscript exceeds the size of array ?', N'NULL', N'The element will set to 0', N'The compiler would report an error', N'The program may crash or gives garbage data', N'The array size increases automatically', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (170, 501, 5, N'Which of the foolowing is not provided by C ?', N'NULL', N'To make single dimentional array', N'No bound check on array index', N'To make N-dimentional array', N'none of the given', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (171, 501, 5, N'____________ of the following is twi dimentional array .', N'NULL', N'int a[3][3];', N'int a[2][2]={{0,0}, {1,1}};', N'int a[4][4];', N'int a[5][4];', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (172, 501, 5, N'What will be the output of the following program segment ?', N'NULL', N'0 1 2 3 4 5', N'1 2 3 4 5 6', N'1 2 3 4 5', N'none of the given', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (173, 501, 5, N'Single dimention and multi dimention are type of __________ in C .', N'NULL', N'an array', N'loop', N'condition', N'both option2 and option3', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (174, 501, 5, N'Which of the following is used to represent data in tabular form ?', N'NULL', N'table', N'array', N'function', N'all of the given', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (175, 501, 5, N'Character array in C is considered as ________ .', N'NULL', N'string', N'list', N'function', N'control', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (176, 501, 5, N'In an array int x[10], 10 is the __________ of an array .', N'NULL', N'size ', N'variable', N'variable name', N'none of the given', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (177, 501, 5, N'It is ___________ to specify the size of an array .', N'NULL', N'compulsory', N'optional', N'programmer responsibility', N'none of the given', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (178, 501, 5, N'If the size of an array is not specified, then _______  will automatically calculate the size by counting total numbers of values written inside curly brackets { }.', N'NULL', N'C language', N'programmer', N'compiler', N'all of the given', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (179, 501, 5, N'What will be the output of the following program segment ?', N'NULL', N'1,2', N'1,0', N'1,3', N'2,3', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (180, 501, 5, N'Input means _________ .', N'NULL', N'to read data from any input device like keyboard, disk, etc .', N'to write data to output devices like monitor, printers, etc .', N'Both option1 and option2', N'none of the given', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (181, 501, 5, N'Output means _________ .', N'NULL', N'to read data from any input device like keyboard, disk, etc .', N'to write data to output devices like monitor, printers, etc .', N'Both option1 and option3', N'none of the given', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (182, 501, 5, N'A variable can be given input using _______ in a C program .', N'NULL', N'assignment operator ', N'bitwise operator ', N'special operator', N'ternary operator', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (183, 501, 5, N'Which of the following file contains various input and output operations related functions ?', N'NULL', N'math.h', N'stdio.h', N'conio.h', N'string.h', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (184, 501, 5, N'Which of the following statement informs the compiler to find stdio.h file and place its content in the beginning of C program ?', N'NULL', N'#compare<stdio.h>', N'#compile<stdio.h>', N'#include<stdio.h>', N'none of the given', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (185, 501, 5, N'It is not necessary to include stdio.h file while using _________ functions .', N'NULL', N'printf( )', N'getchar( )', N'putchar( )', N'scanf( )', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (186, 501, 5, N'___________ means standard input-output header file .', N'NULL', N'stdio.hf', N'stdio.h', N'sioh.f', N'none of the given', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (187, 501, 5, N'One of the simplest way to read a character in a C program at runtime is to use the ___________ function .', N'NULL', N'getc( )', N'getch( )', N'getche( )', N'getchar( )', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (188, 501, 5, N'When ________ function is encountered , the program will wait for the user to press enter key after giving the required character as input .', N'NULL', N'getc( )', N'getchar( )', N'gets( )', N'getch( )', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (189, 501, 5, N'With_________ function, the character keyed in will not be echoed on the screen .', N'NULL', N'getc( )', N'getch( )', N'gets( )', N'getchar( )', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (190, 501, 5, N'__________ finction is used when the user donot want to show a character typed in by him on the screen .', N'NULL', N'getc( )', N'gets( )', N'getch( )', N'getchar( )', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (191, 501, 5, N'____________ function reads a character from a file instead of the standard input device .', N'NULL', N'getfc( )', N'getch( )', N'getc( )', N'gets( )', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (192, 501, 5, N'Each strings in C ends with ________ .', N'NULL', N'.', N'\0', N'\t', N'\n', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (193, 501, 5, N'Which of the following function is more appropriate for accepting a string ?', N'NULL', N'getch( )', N'gets( )', N'getchar( )', N'getc( )', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (194, 501, 5, N'The _______ function will read characters until a new line character is entered by the user .', N'NULL', N'getchar( )', N'getc( )', N'gets( )', N'getwords( )', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (195, 501, 5, N'Which of the following are useful in C language I/O operations ?', N'NULL', N'Monitor', N'Keyboard', N'Mouse', N'all of the given', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (196, 501, 5, N'Input in a program can be possible using which of the following device ?', N'NULL', N'Keyboard', N'Speaker', N'Printer', N'Monitor', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (197, 501, 5, N'Which of the following functions reads a character without using a standard input device ?', N'NULL', N'getchar( )', N'getch( )', N'getc( )', N'gets( )', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (198, 501, 5, N'An array is generally used for __________ data.', N'NULL', N'Processed', N'table', N'business', N'none of the given', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (199, 501, 5, N'A/An ___________ is a data structure made up of group of variables having same property .', N'NULL', N'structure', N'array', N'function', N'constant', N'4')
GO
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (200, 501, 5, N'An array is generally used for __________ data.', N'NULL', N'contiguous', N'separate', N'small ', N'large', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (201, 501, 5, N'_________ is a fixed-size sequential collection of elements .', N'NULL', N'A function', N'Storage classes', N'An array', N'none of the given', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (202, 501, 5, N'All the____________ of an array is reffered by single name .', N'NULL', N'parts', N'values', N'elements', N'option1 or option2 or option3', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (203, 501, 5, N'_____________ is an arrayname marks [i].', N'NULL', N'marks', N'i', N'[ ]', N'none of the given', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (204, 501, 5, N'An array variable marks [60] can store __________ values .', N'NULL', N'1 to 60', N'0 to 60', N'0 to 59', N'0', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (205, 501, 5, N'In array , the index number contained within square bracket is known as ______.', N'NULL', N'subscript', N'index number', N'option1 or option2', N'none of the given', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (206, 501, 5, N'The subscript of an array must be _____________ .', N'NULL', N'an integer', N'an integer expression', N'option1 or option2', N'real number', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (207, 501, 5, N'Which of the following array have one row or one column?', N'NULL', N'Single dimentional array', N'Multidimential array', N'Three dimentional array', N'Two dimentional array', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (208, 501, 5, N'Which of the following array have one or more row and one or more column?', N'NULL', N'Single dimentional array', N'Multidimential array', N'Multipurpose array', N'none of the given', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (209, 501, 5, N'In array syntax , data type arrayname[size];_________ indicates the type of element that an array stores . ', N'NULL', N'data type ', N'arrayname', N'[  ]', N'size', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (210, 501, 5, N'What does arrayname specify in array syntax , data type arrayname[size]; ?', N'NULL', N'Type of data', N'Name of array variable', N'Number of elements', N'all of the given', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (211, 501, 5, N'Which of the following data type can be used for an array variable ?', N'NULL', N'int', N'float,double', N'char', N'all of the given', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (212, 501, 5, N'Which of the following is not provided as in-built data type by C language ?', N'NULL', N'int', N'char', N'float ', N'string', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (213, 501, 5, N'In array syntax , data type arrayname[size];_________ indicates the number of elements the array can store . ', N'NULL', N'data type ', N'arrayname', N'size', N'none of the given', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (214, 501, 5, N'The list of values that is to be assigned to an array element is enclosed within __________ .', N'NULL', N'(  )', N'[  ]', N'{  }', N'([  ])', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (215, 501, 5, N'The initial values of an array are seperated using ____ sign. ', N'NULL', N',', N'-', N':', N';', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (216, 501, 5, N'When an array is assigned values at time of declaration , it is known as _________ array initializataion .', N'NULL', N'run time ', N'compile time', N'declaration time', N'none of the given', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (217, 501, 5, N'When an array is assigned values at time of execution of program , it is known as _________ array initializataion .', N'NULL', N'run time ', N'compile time', N'declaration time', N'none of the given', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (218, 501, 5, N'During the declaration of an integer array variable, if lists of value are lrss than the size of an array, then only specified number of elements will be initialized and the remaing elements will be initialized to ___________ .', N'NULL', N'\n', N'\O', N'\t', N'\b', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (219, 501, 5, N'In C language ,___________ array is used to represent string .', N'NULL', N'Integer', N'character', N'string', N'float', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (220, 501, 5, N'String in a C language are terminated by  the special character called null character ___________ .', N'NULL', N'\n', N'\0', N'\t', N'\b', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (221, 501, 5, N'_________ operator is used to know the size of of an array .', N'NULL', N'sizeof', N'>>', N'<<', N'!', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (222, 501, 5, N'_________ is the first element of an array X [10].', N'NULL', N'x[1]', N'x[0]', N'x[-1]', N'A[0]', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (223, 501, 5, N'Which of the following array element will get value 7 from int a[5]= {3,15,25,7,10}; ?', N'NULL', N'A[4]', N'A[6]', N'A[3]', N'A[0]', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (224, 501, 5, N'Which of the following array is allowed in C ?', N'NULL', N'One dimentional,two dimentional', N'Three dimentional', N'N-dimentional', N'all of the given', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (225, 501, 5, N'The single dimentional array keeps track of information in __________ order .', N'NULL', N'linear', N'random', N'two dimentional', N'both option2 and option3', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (226, 501, 5, N'The data associated with which of the following are in two dimentional ?', N'NULL', N'Digital image ', N'chess game board', N'Matrix', N'all of the given', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (227, 501, 5, N'The simplest form of the multi dimentional array is ________.', N'NULL', N'three dimentonal', N'N-dimentional', N'two dimentional', N'one dimentional', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (228, 501, 5, N'The __________ array have row index as well as column index .', N'NULL', N'three dimentonal', N'N-dimentional', N'two dimentional', N'one dimentional', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (229, 501, 5, N'The statement int a[3][3]; divides the array elements as per ______.', N'NULL', N'3*3', N'3+3', NULL, N'3%3', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (230, 501, 5, N'An array element is stored in ___________.', N'NULL', N'CPU', N'CD', N'memory', N'scrreen', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (231, 501, 5, N'In C language , the multi dimentional arrays are _________ major .', N'NULL', N'rows', N'columns', N'Both option1 and option2', N'none of the given', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (232, 501, 5, N'C language provides power to the programmer to write any __________  within the [ ] of an array .', N'NULL', N'index value', N'data type', N'array name', N'all of the given', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (233, 501, 5, N'Which of the following is invalid index value for an array int number[5]; ?', N'NULL', N'number[-1]', N'number[6]', N'Both option1 and option2', N'number[4]', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (234, 501, 5, N'What happens when invalid index value is used with an array ?', N'NULL', N'The program may give garbagr data', N'The program may get crash', N'Both option1 and option2', N'The program will run properly', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (235, 501, 5, N'What happens if a C program tries to access a value from an array element whose subscript exceeds the size of array ?', N'NULL', N'The element will set to 0', N'The compiler would report an error', N'The program may crash or gives garbage data', N'The array size increases automatically', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (236, 501, 5, N'Which of the foolowing is not provided by C ?', N'NULL', N'To make single dimentional array', N'No bound check on array index', N'To make N-dimentional array', N'none of the given', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (237, 501, 5, N'____________ of the following is twi dimentional array .', N'NULL', N'int a[3][3];', N'int a[2][2]={{0,0}, {1,1}};', N'int a[4][4];', N'int a[5][4];', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (238, 501, 5, N'What will be the output of the following program segment ?', N'NULL', N'0 1 2 3 4 5', N'1 2 3 4 5 6', N'1 2 3 4 5', N'none of the given', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (239, 501, 5, N'Single dimention and multi dimention are type of __________ in C .', N'NULL', N'an array', N'loop', N'condition', N'both option2 and option3', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (240, 501, 5, N'Which of the following is used to represent data in tabular form ?', N'NULL', N'table', N'array', N'function', N'all of the given', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (241, 501, 5, N'Character array in C is considered as ________ .', N'NULL', N'string', N'list', N'function', N'control', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (242, 501, 5, N'In an array int x[10], 10 is the __________ of an array .', N'NULL', N'size ', N'variable', N'variable name', N'none of the given', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (243, 501, 5, N'It is ___________ to specify the size of an array .', N'NULL', N'compulsory', N'optional', N'programmer responsibility', N'none of the given', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (244, 501, 5, N'If the size of an array is not specified, then _______  will automatically calculate the size by counting total numbers of values written inside curly brackets { }.', N'NULL', N'C language', N'programmer', N'compiler', N'all of the given', N'4')
INSERT [dbo].[objective_master] ([ques_id], [subject_id], [unit_id], [ques], [graphics], [option1], [option2], [option3], [option4], [correct]) VALUES (245, 501, 5, N'What will be the output of the following program segment ?', N'NULL', N'1,2', N'1,0', N'1,3', N'2,3', N'4')
SET IDENTITY_INSERT [dbo].[objective_master] OFF
SET IDENTITY_INSERT [dbo].[paper_master] ON 

INSERT [dbo].[paper_master] ([id], [paper], [password]) VALUES (1, N'obj_501_2_18', N'CDdxQFc8')
INSERT [dbo].[paper_master] ([id], [paper], [password]) VALUES (2, N'obj_501_3_18', N'v4mHsrIZ')
INSERT [dbo].[paper_master] ([id], [paper], [password]) VALUES (4, N'obj_501_7_18', N'vJoK8pKS')
SET IDENTITY_INSERT [dbo].[paper_master] OFF
SET IDENTITY_INSERT [dbo].[pdf_master] ON 

INSERT [dbo].[pdf_master] ([id], [faculty_id], [pdf_code], [subject_id], [paper_marks]) VALUES (1, 1, N'obj_501_1_18', 501, 70)
INSERT [dbo].[pdf_master] ([id], [faculty_id], [pdf_code], [subject_id], [paper_marks]) VALUES (2, 1, N'obj_501_2_18', 501, 70)
INSERT [dbo].[pdf_master] ([id], [faculty_id], [pdf_code], [subject_id], [paper_marks]) VALUES (3, 1, N'obj_501_3_18', 501, 30)
INSERT [dbo].[pdf_master] ([id], [faculty_id], [pdf_code], [subject_id], [paper_marks]) VALUES (4, 1, N'obj_501_4_18', 501, 30)
INSERT [dbo].[pdf_master] ([id], [faculty_id], [pdf_code], [subject_id], [paper_marks]) VALUES (5, 1, N'obj_501_7_18', 501, 30)
SET IDENTITY_INSERT [dbo].[pdf_master] OFF
INSERT [dbo].[result_master] ([student_id], [paper], [marks_obtained], [total_marks], [status]) VALUES (1, N'obj_501_7_18', 0, N'30        ', N'Fail')
INSERT [dbo].[result_master] ([student_id], [paper], [marks_obtained], [total_marks], [status]) VALUES (3, N'obj_501_7_18', 6, N'30        ', N'Fail')
SET IDENTITY_INSERT [dbo].[student_master] ON 

INSERT [dbo].[student_master] ([student_id], [student_enroll], [student_username], [email], [password], [contact_no], [gender], [dob]) VALUES (1, N'3333333333333333', N'Shubham', N'shubhamindrawat@yahoo.in', N'123456', N'8200183787', N'Male', CAST(N'1996-08-28' AS Date))
INSERT [dbo].[student_master] ([student_id], [student_enroll], [student_username], [email], [password], [contact_no], [gender], [dob]) VALUES (2, N'4444444444444444', N'Mehul', N'mjariwala98@gmail.com', N'SSyKW6Kq', N'8866669302', N'Male', CAST(N'1996-11-06' AS Date))
INSERT [dbo].[student_master] ([student_id], [student_enroll], [student_username], [email], [password], [contact_no], [gender], [dob]) VALUES (3, N'5555555555555555', N'Pankaj', N'pankajd744@gmail.com', N'1T2z4cmG', N'9428292641', N'Male', CAST(N'2018-11-22' AS Date))
SET IDENTITY_INSERT [dbo].[student_master] OFF
INSERT [dbo].[subject_master] ([subject_id], [course_id], [sem], [subject]) VALUES (201, 1, 2, N'Mobile Computing')
INSERT [dbo].[subject_master] ([subject_id], [course_id], [sem], [subject]) VALUES (202, 1, 2, N'AWS')
INSERT [dbo].[subject_master] ([subject_id], [course_id], [sem], [subject]) VALUES (401, 1, 4, N'Cloud Computing')
INSERT [dbo].[subject_master] ([subject_id], [course_id], [sem], [subject]) VALUES (501, 1, 5, N'Service Oriented Architecture')
INSERT [dbo].[subject_master] ([subject_id], [course_id], [sem], [subject]) VALUES (502, 1, 5, N'Object Oriented Modelling & Designing')
INSERT [dbo].[subject_master] ([subject_id], [course_id], [sem], [subject]) VALUES (503, 1, 5, N'Cryptography & Network Security')
INSERT [dbo].[subject_master] ([subject_id], [course_id], [sem], [subject]) VALUES (504, 1, 5, N'Service Oriented Architecture')
INSERT [dbo].[unit_master] ([unit_id], [subject_id], [unit_name]) VALUES (1, 501, N'Introduction to SOA, Evolution of SOA')
INSERT [dbo].[unit_master] ([unit_id], [subject_id], [unit_name]) VALUES (2, 501, N'Web Services and Contemporary SOA')
INSERT [dbo].[unit_master] ([unit_id], [subject_id], [unit_name]) VALUES (3, 501, N'Principles of Service – Orientation')
INSERT [dbo].[unit_master] ([unit_id], [subject_id], [unit_name]) VALUES (4, 501, N'Service Layers')
INSERT [dbo].[unit_master] ([unit_id], [subject_id], [unit_name]) VALUES (5, 501, N'Business Process Design')
ALTER TABLE [dbo].[faculty_subjects_master]  WITH CHECK ADD  CONSTRAINT [fk_faculty_id] FOREIGN KEY([faculty_id])
REFERENCES [dbo].[faculty_master] ([faculty_id])
GO
ALTER TABLE [dbo].[faculty_subjects_master] CHECK CONSTRAINT [fk_faculty_id]
GO
ALTER TABLE [dbo].[faculty_subjects_master]  WITH CHECK ADD  CONSTRAINT [fk_subject_id] FOREIGN KEY([subject_id])
REFERENCES [dbo].[subject_master] ([subject_id])
GO
ALTER TABLE [dbo].[faculty_subjects_master] CHECK CONSTRAINT [fk_subject_id]
GO
ALTER TABLE [dbo].[subject_master]  WITH CHECK ADD  CONSTRAINT [fk_course_id] FOREIGN KEY([course_id])
REFERENCES [dbo].[course_master] ([course_id])
GO
ALTER TABLE [dbo].[subject_master] CHECK CONSTRAINT [fk_course_id]
GO
ALTER TABLE [dbo].[unit_master]  WITH CHECK ADD  CONSTRAINT [fk_unit_subject_id] FOREIGN KEY([subject_id])
REFERENCES [dbo].[subject_master] ([subject_id])
GO
ALTER TABLE [dbo].[unit_master] CHECK CONSTRAINT [fk_unit_subject_id]
GO
USE [master]
GO
ALTER DATABASE [online_exam] SET  READ_WRITE 
GO
