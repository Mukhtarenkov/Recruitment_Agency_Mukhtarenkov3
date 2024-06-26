USE [recruitment_agency]
GO
/****** Object:  Table [dbo].[Resume]    Script Date: 6/21/2024 10:48:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Resume](
	[IDResume] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[FamilyName] [nvarchar](50) NULL,
	[DadsName] [nvarchar](50) NULL,
	[Education] [nvarchar](50) NULL,
	[PhoneNumber] [nvarchar](50) NULL,
	[Proficiences] [nvarchar](max) NULL,
	[Mail] [nvarchar](50) NULL,
 CONSTRAINT [PK_Resume] PRIMARY KEY CLUSTERED 
(
	[IDResume] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 6/21/2024 10:48:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[IDRole] [int] IDENTITY(1,1) NOT NULL,
	[Role] [nvarchar](50) NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[IDRole] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sobesedovanie]    Script Date: 6/21/2024 10:48:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sobesedovanie](
	[IdSobesedovanie] [int] IDENTITY(1,1) NOT NULL,
	[Resume] [int] NULL,
	[Vacancy] [int] NULL,
	[Date] [date] NULL,
 CONSTRAINT [PK_sobesedovanie2] PRIMARY KEY CLUSTERED 
(
	[IdSobesedovanie] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 6/21/2024 10:48:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[IDUser] [int] IDENTITY(1,1) NOT NULL,
	[Login] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[Role] [int] NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[IDUser] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vacancies]    Script Date: 6/21/2024 10:48:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vacancies](
	[IDVacancy] [int] IDENTITY(1,1) NOT NULL,
	[Vacancy] [nvarchar](50) NULL,
	[Employer] [nvarchar](50) NULL,
	[Specifications] [nvarchar](max) NULL,
	[Affiliation] [nvarchar](max) NULL,
	[ContanctInfo] [nvarchar](max) NULL,
 CONSTRAINT [PK_Vacancies_1] PRIMARY KEY CLUSTERED 
(
	[IDVacancy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Resume] ON 

INSERT [dbo].[Resume] ([IDResume], [Name], [FamilyName], [DadsName], [Education], [PhoneNumber], [Proficiences], [Mail]) VALUES (2, N'Первый', N'Первов', N'Первович', N'среднее', N'7(16)890-69-95
', N'Програмирование', N'ceileuluddemme-4404@yopmail.com')
INSERT [dbo].[Resume] ([IDResume], [Name], [FamilyName], [DadsName], [Education], [PhoneNumber], [Proficiences], [Mail]) VALUES (3, N'Второй', N'Второв', N'Вторович', N'высшее', N'7(1021)544-13-41
', N'Проектирование', N'petussajaddeu-9836@yopmail.com')
INSERT [dbo].[Resume] ([IDResume], [Name], [FamilyName], [DadsName], [Education], [PhoneNumber], [Proficiences], [Mail]) VALUES (4, N'Третий', N'Третив', N'Третович', N'высшее', N'7(57)931-24-88
', N'Програмирование', N'saddezeiffiffau-9954@yopmail.com')
INSERT [dbo].[Resume] ([IDResume], [Name], [FamilyName], [DadsName], [Education], [PhoneNumber], [Proficiences], [Mail]) VALUES (5, N'Четвертый', N'Четверов', N'Четверович', N'среднее', N'7(799)944-05-62
', N'Документоведение', N'reullecivibi-1155@yopmail.com')
INSERT [dbo].[Resume] ([IDResume], [Name], [FamilyName], [DadsName], [Education], [PhoneNumber], [Proficiences], [Mail]) VALUES (6, N'Шестой', N'Шестов', N'Шестович', N'высшее', N'7(2734)753-23-72
', N'Программирование', N'kijeuweipretri-4221@yopmail.com')
INSERT [dbo].[Resume] ([IDResume], [Name], [FamilyName], [DadsName], [Education], [PhoneNumber], [Proficiences], [Mail]) VALUES (7, N'Седьмой', N'Седьмов', N'Седьмович', N'высшее', N'7(9428)552-53-20
', N'Анализ', N'cakoutufraxoi-8773@yopmail.com')
INSERT [dbo].[Resume] ([IDResume], [Name], [FamilyName], [DadsName], [Education], [PhoneNumber], [Proficiences], [Mail]) VALUES (8, N'Восьмой', N'Восьмов', N'Восьмович', N'среднее', N'7(2645)727-13-47
', N'Универсальные', N'nouxoffoimmenne-3170@yopmail.com')
INSERT [dbo].[Resume] ([IDResume], [Name], [FamilyName], [DadsName], [Education], [PhoneNumber], [Proficiences], [Mail]) VALUES (9, N'Девятый', N'Девятов', N'Девятович', N'высшее', N'7(7140)340-18-57
', N'Анализ', N'wadoveuquogrou-3316@yopmail.com')
INSERT [dbo].[Resume] ([IDResume], [Name], [FamilyName], [DadsName], [Education], [PhoneNumber], [Proficiences], [Mail]) VALUES (10, N'Десятый', N'Десятов', N'Десятович', N'высшее', N'7(10)185-72-12
', N'Универсальные', N'galliwattouxo-4890@yopmail.com')
SET IDENTITY_INSERT [dbo].[Resume] OFF
GO
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([IDRole], [Role]) VALUES (1, N'Соискатель')
INSERT [dbo].[Role] ([IDRole], [Role]) VALUES (2, N'Работодатель')
INSERT [dbo].[Role] ([IDRole], [Role]) VALUES (3, N'Менеджер')
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
SET IDENTITY_INSERT [dbo].[sobesedovanie] ON 

INSERT [dbo].[sobesedovanie] ([IdSobesedovanie], [Resume], [Vacancy], [Date]) VALUES (1, 2, 1, CAST(N'2024-10-10' AS Date))
INSERT [dbo].[sobesedovanie] ([IdSobesedovanie], [Resume], [Vacancy], [Date]) VALUES (3, 4, 1, CAST(N'2024-10-14' AS Date))
SET IDENTITY_INSERT [dbo].[sobesedovanie] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([IDUser], [Login], [Password], [Role]) VALUES (1, N'rabotodatel', N'123', 2)
INSERT [dbo].[User] ([IDUser], [Login], [Password], [Role]) VALUES (2, N'Manager', N'123', 3)
INSERT [dbo].[User] ([IDUser], [Login], [Password], [Role]) VALUES (3, N'soiskatel', N'123', 1)
SET IDENTITY_INSERT [dbo].[User] OFF
GO
SET IDENTITY_INSERT [dbo].[Vacancies] ON 

INSERT [dbo].[Vacancies] ([IDVacancy], [Vacancy], [Employer], [Specifications], [Affiliation], [ContanctInfo]) VALUES (1, N'Охрана', N'Физическое лицо', N'нет', N'нет', N'diseiwumeye-8066@yopmail.com')
INSERT [dbo].[Vacancies] ([IDVacancy], [Vacancy], [Employer], [Specifications], [Affiliation], [ContanctInfo]) VALUES (3, N'Сторож', N'Коммерческая компания', N'нет', N'агентство Сторожка', N'yizopissibou-9364@yopmail.com')
INSERT [dbo].[Vacancies] ([IDVacancy], [Vacancy], [Employer], [Specifications], [Affiliation], [ContanctInfo]) VALUES (4, N'Строитель', N'Коммерческая компания', N'высшее образование', N'строительная компания БизСтрой', N'biddapouduppo-2616@yopmail.com')
INSERT [dbo].[Vacancies] ([IDVacancy], [Vacancy], [Employer], [Specifications], [Affiliation], [ContanctInfo]) VALUES (5, N'Программист', N'Некоммерческая компания', N'навыки программирования', N'Кан', N'duhoucroicavoi-4695@yopmail.com')
INSERT [dbo].[Vacancies] ([IDVacancy], [Vacancy], [Employer], [Specifications], [Affiliation], [ContanctInfo]) VALUES (6, N'Секретарь', N'Индивидуальный предприниматель', N'навыки работы с документацией', N'страховая компанияЛегетивный', N'notoipussutrou-1203@yopmail.com')
INSERT [dbo].[Vacancies] ([IDVacancy], [Vacancy], [Employer], [Specifications], [Affiliation], [ContanctInfo]) VALUES (7, N'Программист', N'Коммерческая компания', N'навыки программирования', N'котнора Прог', N'deuffigrugrufoi-3656@yopmail.com')
INSERT [dbo].[Vacancies] ([IDVacancy], [Vacancy], [Employer], [Specifications], [Affiliation], [ContanctInfo]) VALUES (8, N'Продавец', N'Индивидуальный предприниматель', N'нет', N'Магазин Карказ', N'laprumirama-6358@yopmail.com')
INSERT [dbo].[Vacancies] ([IDVacancy], [Vacancy], [Employer], [Specifications], [Affiliation], [ContanctInfo]) VALUES (9, N'Секретарь', N'Некоммерческая компания', N'навыки работы с документацией', N'агентство Саботаж', N'prefraumajuni-9777@yopmail.com')
INSERT [dbo].[Vacancies] ([IDVacancy], [Vacancy], [Employer], [Specifications], [Affiliation], [ContanctInfo]) VALUES (10, N'Разнорабочий', N'Физическое лицо', N'нет', N'нет', N'raunnonneppira-1746@yopmail.com')
SET IDENTITY_INSERT [dbo].[Vacancies] OFF
GO
ALTER TABLE [dbo].[sobesedovanie]  WITH CHECK ADD  CONSTRAINT [FK_sobesedovanie_Resume] FOREIGN KEY([Resume])
REFERENCES [dbo].[Resume] ([IDResume])
GO
ALTER TABLE [dbo].[sobesedovanie] CHECK CONSTRAINT [FK_sobesedovanie_Resume]
GO
ALTER TABLE [dbo].[sobesedovanie]  WITH CHECK ADD  CONSTRAINT [FK_sobesedovanie_Vacancies] FOREIGN KEY([Vacancy])
REFERENCES [dbo].[Vacancies] ([IDVacancy])
GO
ALTER TABLE [dbo].[sobesedovanie] CHECK CONSTRAINT [FK_sobesedovanie_Vacancies]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Role] FOREIGN KEY([Role])
REFERENCES [dbo].[Role] ([IDRole])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Role]
GO
