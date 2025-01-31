USE [10220463]
GO
/****** Object:  Table [dbo].[Authors]    Script Date: 22.01.2025 14:31:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Authors](
	[AuthorID] [int] IDENTITY(1,1) NOT NULL,
	[AuthorName] [nvarchar](50) NOT NULL,
	[Login] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Authors_1] PRIMARY KEY CLUSTERED 
(
	[AuthorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 22.01.2025 14:31:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[CategoryID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Categories_1] PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CookingSteps]    Script Date: 22.01.2025 14:31:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CookingSteps](
	[StepID] [int] IDENTITY(1,1) NOT NULL,
	[RecipeID] [int] NOT NULL,
	[StepNumber] [int] NOT NULL,
	[StepDescription] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_CookingSteps] PRIMARY KEY CLUSTERED 
(
	[StepID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ingredients]    Script Date: 22.01.2025 14:31:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ingredients](
	[IngredientID] [int] IDENTITY(1,1) NOT NULL,
	[IngredientName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Ingredients] PRIMARY KEY CLUSTERED 
(
	[IngredientID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RecipeIngredients]    Script Date: 22.01.2025 14:31:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RecipeIngredients](
	[RecipeIngredientID] [int] IDENTITY(1,1) NOT NULL,
	[RecipeID] [int] NOT NULL,
	[IngredientID] [int] NOT NULL,
	[Quantity] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_RecipeIngredients] PRIMARY KEY CLUSTERED 
(
	[RecipeIngredientID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Recipes]    Script Date: 22.01.2025 14:31:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Recipes](
	[RecipeID] [int] IDENTITY(1,1) NOT NULL,
	[RecipeName] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](255) NOT NULL,
	[CategoryID] [int] NOT NULL,
	[AuthorID] [int] NOT NULL,
	[CookingTime] [nvarchar](50) NOT NULL,
	[Image] [nvarchar](255) NULL,
 CONSTRAINT [PK_Recipes] PRIMARY KEY CLUSTERED 
(
	[RecipeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RecipeTags]    Script Date: 22.01.2025 14:31:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RecipeTags](
	[RecipeTagID] [int] IDENTITY(1,1) NOT NULL,
	[RecipeID] [int] NOT NULL,
	[TagID] [int] NOT NULL,
 CONSTRAINT [PK_RecipeTags] PRIMARY KEY CLUSTERED 
(
	[RecipeTagID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reviews]    Script Date: 22.01.2025 14:31:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reviews](
	[ReviewID] [int] IDENTITY(1,1) NOT NULL,
	[RecipeID] [int] NOT NULL,
	[ReviewText] [nvarchar](50) NOT NULL,
	[Rating] [int] NOT NULL,
 CONSTRAINT [PK_Reviews] PRIMARY KEY CLUSTERED 
(
	[ReviewID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tags]    Script Date: 22.01.2025 14:31:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tags](
	[TagID] [int] IDENTITY(1,1) NOT NULL,
	[TagName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Tags] PRIMARY KEY CLUSTERED 
(
	[TagID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Authors] ON 

INSERT [dbo].[Authors] ([AuthorID], [AuthorName], [Login], [Password]) VALUES (1, N'Анна Иванова', N'anna_chef', N'pass123')
INSERT [dbo].[Authors] ([AuthorID], [AuthorName], [Login], [Password]) VALUES (2, N'Иван Петров', N'ivan_cook', N'12345')
INSERT [dbo].[Authors] ([AuthorID], [AuthorName], [Login], [Password]) VALUES (3, N'Мария Смирнова', N'maria_baker', N'qwerty')
INSERT [dbo].[Authors] ([AuthorID], [AuthorName], [Login], [Password]) VALUES (4, N'Дмитрий Соколов', N'dmitry_foodie', N'food2023')
INSERT [dbo].[Authors] ([AuthorID], [AuthorName], [Login], [Password]) VALUES (5, N'Елена Кузнецова', N'elena_recipes', N'cooking123')
INSERT [dbo].[Authors] ([AuthorID], [AuthorName], [Login], [Password]) VALUES (6, N'Алексей Орлов', N'alex_grill', N'grillmaster')
INSERT [dbo].[Authors] ([AuthorID], [AuthorName], [Login], [Password]) VALUES (7, N'Ольга Сергеева', N'olga_sweets', N'sweetlife')
INSERT [dbo].[Authors] ([AuthorID], [AuthorName], [Login], [Password]) VALUES (8, N'Наталья Фомина', N'nataly_diet', N'healthy2023')
INSERT [dbo].[Authors] ([AuthorID], [AuthorName], [Login], [Password]) VALUES (9, N'Сергей Крылов', N'sergey_meat', N'meatlover')
INSERT [dbo].[Authors] ([AuthorID], [AuthorName], [Login], [Password]) VALUES (10, N'Виктория Жукова', N'vicky_chef', N'recipes2023')
SET IDENTITY_INSERT [dbo].[Authors] OFF
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([CategoryID], [CategoryName]) VALUES (1, N'Супы')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName]) VALUES (2, N'Закуски')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName]) VALUES (3, N'Основные блюда')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName]) VALUES (4, N'Десерты')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName]) VALUES (5, N'Напитки')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName]) VALUES (6, N'Салаты')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName]) VALUES (7, N'Гарниры')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName]) VALUES (8, N'Соусы')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName]) VALUES (9, N'Выпечка')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName]) VALUES (10, N'Завтраки')
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[CookingSteps] ON 

INSERT [dbo].[CookingSteps] ([StepID], [RecipeID], [StepNumber], [StepDescription]) VALUES (1, 1, 1, N'Отварить мясо до готовности.')
INSERT [dbo].[CookingSteps] ([StepID], [RecipeID], [StepNumber], [StepDescription]) VALUES (2, 1, 2, N'Добавить нарезанные овощи.')
INSERT [dbo].[CookingSteps] ([StepID], [RecipeID], [StepNumber], [StepDescription]) VALUES (3, 1, 3, N'Тушить на медленном огне.')
INSERT [dbo].[CookingSteps] ([StepID], [RecipeID], [StepNumber], [StepDescription]) VALUES (4, 2, 1, N'Обжарить курицу.')
INSERT [dbo].[CookingSteps] ([StepID], [RecipeID], [StepNumber], [StepDescription]) VALUES (5, 2, 2, N'Смешать с листьями салата.')
INSERT [dbo].[CookingSteps] ([StepID], [RecipeID], [StepNumber], [StepDescription]) VALUES (6, 3, 1, N'Смешать сухие ингредиенты.')
INSERT [dbo].[CookingSteps] ([StepID], [RecipeID], [StepNumber], [StepDescription]) VALUES (7, 3, 2, N'Добавить жидкие ингредиенты.')
INSERT [dbo].[CookingSteps] ([StepID], [RecipeID], [StepNumber], [StepDescription]) VALUES (8, 3, 3, N'Выпекать при 180°C.')
INSERT [dbo].[CookingSteps] ([StepID], [RecipeID], [StepNumber], [StepDescription]) VALUES (9, 4, 1, N'Взбить яйца.')
INSERT [dbo].[CookingSteps] ([StepID], [RecipeID], [StepNumber], [StepDescription]) VALUES (10, 4, 2, N'Обжарить на сковороде.')
SET IDENTITY_INSERT [dbo].[CookingSteps] OFF
GO
SET IDENTITY_INSERT [dbo].[Ingredients] ON 

INSERT [dbo].[Ingredients] ([IngredientID], [IngredientName]) VALUES (1, N'Картофель')
INSERT [dbo].[Ingredients] ([IngredientID], [IngredientName]) VALUES (2, N'Морковь')
INSERT [dbo].[Ingredients] ([IngredientID], [IngredientName]) VALUES (3, N'Лук')
INSERT [dbo].[Ingredients] ([IngredientID], [IngredientName]) VALUES (4, N'Куриное филе')
INSERT [dbo].[Ingredients] ([IngredientID], [IngredientName]) VALUES (5, N'Молоко')
INSERT [dbo].[Ingredients] ([IngredientID], [IngredientName]) VALUES (6, N'Мука')
INSERT [dbo].[Ingredients] ([IngredientID], [IngredientName]) VALUES (7, N'Яйца')
INSERT [dbo].[Ingredients] ([IngredientID], [IngredientName]) VALUES (8, N'Сахар')
INSERT [dbo].[Ingredients] ([IngredientID], [IngredientName]) VALUES (9, N'Соль')
INSERT [dbo].[Ingredients] ([IngredientID], [IngredientName]) VALUES (10, N'Перец чёрный молотый')
SET IDENTITY_INSERT [dbo].[Ingredients] OFF
GO
SET IDENTITY_INSERT [dbo].[RecipeIngredients] ON 

INSERT [dbo].[RecipeIngredients] ([RecipeIngredientID], [RecipeID], [IngredientID], [Quantity]) VALUES (1, 1, 1, N'500 г')
INSERT [dbo].[RecipeIngredients] ([RecipeIngredientID], [RecipeID], [IngredientID], [Quantity]) VALUES (2, 1, 2, N'200 г')
INSERT [dbo].[RecipeIngredients] ([RecipeIngredientID], [RecipeID], [IngredientID], [Quantity]) VALUES (3, 1, 3, N'100 г')
INSERT [dbo].[RecipeIngredients] ([RecipeIngredientID], [RecipeID], [IngredientID], [Quantity]) VALUES (4, 2, 4, N'150 г')
INSERT [dbo].[RecipeIngredients] ([RecipeIngredientID], [RecipeID], [IngredientID], [Quantity]) VALUES (5, 2, 6, N'50 г')
INSERT [dbo].[RecipeIngredients] ([RecipeIngredientID], [RecipeID], [IngredientID], [Quantity]) VALUES (6, 3, 7, N'4 шт')
INSERT [dbo].[RecipeIngredients] ([RecipeIngredientID], [RecipeID], [IngredientID], [Quantity]) VALUES (7, 3, 8, N'200 г')
INSERT [dbo].[RecipeIngredients] ([RecipeIngredientID], [RecipeID], [IngredientID], [Quantity]) VALUES (8, 4, 7, N'3 шт')
INSERT [dbo].[RecipeIngredients] ([RecipeIngredientID], [RecipeID], [IngredientID], [Quantity]) VALUES (9, 4, 6, N'20 г')
INSERT [dbo].[RecipeIngredients] ([RecipeIngredientID], [RecipeID], [IngredientID], [Quantity]) VALUES (10, 5, 9, N'2 ч.л.')
SET IDENTITY_INSERT [dbo].[RecipeIngredients] OFF
GO
SET IDENTITY_INSERT [dbo].[Recipes] ON 

INSERT [dbo].[Recipes] ([RecipeID], [RecipeName], [Description], [CategoryID], [AuthorID], [CookingTime], [Image]) VALUES (1, N'Борщ', N'Классический украинский борщ с буряком и мясом.', 1, 1, N'90', NULL)
INSERT [dbo].[Recipes] ([RecipeID], [RecipeName], [Description], [CategoryID], [AuthorID], [CookingTime], [Image]) VALUES (2, N'Салат Цезарь', N'Лёгкий салат с курицей, пармезаном и соусом Цезарь.', 6, 2, N'20', NULL)
INSERT [dbo].[Recipes] ([RecipeID], [RecipeName], [Description], [CategoryID], [AuthorID], [CookingTime], [Image]) VALUES (3, N'Шоколадный торт', N'Вкусный десерт с насыщенным шоколадным вкусом.', 4, 3, N'120', NULL)
INSERT [dbo].[Recipes] ([RecipeID], [RecipeName], [Description], [CategoryID], [AuthorID], [CookingTime], [Image]) VALUES (4, N'Омлет с сыром', N'Простой и быстрый завтрак из яиц и сыра.', 10, 4, N'10', NULL)
INSERT [dbo].[Recipes] ([RecipeID], [RecipeName], [Description], [CategoryID], [AuthorID], [CookingTime], [Image]) VALUES (5, N'Плов', N'Традиционное блюдо из риса и мяса.', 3, 5, N'60', NULL)
INSERT [dbo].[Recipes] ([RecipeID], [RecipeName], [Description], [CategoryID], [AuthorID], [CookingTime], [Image]) VALUES (6, N'Компот из ягод', N'Освежающий напиток из сезонных ягод.', 5, 6, N'30', NULL)
INSERT [dbo].[Recipes] ([RecipeID], [RecipeName], [Description], [CategoryID], [AuthorID], [CookingTime], [Image]) VALUES (7, N'Пюре картофельное', N'Нежное пюре из картофеля с добавлением молока.', 7, 7, N'25', NULL)
INSERT [dbo].[Recipes] ([RecipeID], [RecipeName], [Description], [CategoryID], [AuthorID], [CookingTime], [Image]) VALUES (8, N'Блины', N'Тонкие блины на молоке.', 9, 8, N'40', NULL)
INSERT [dbo].[Recipes] ([RecipeID], [RecipeName], [Description], [CategoryID], [AuthorID], [CookingTime], [Image]) VALUES (9, N'Соус тартар', N'Кремовый соус с солеными огурцами.', 8, 9, N'15', NULL)
INSERT [dbo].[Recipes] ([RecipeID], [RecipeName], [Description], [CategoryID], [AuthorID], [CookingTime], [Image]) VALUES (10, N'Куриный суп', N'Лёгкий суп с куриным мясом и овощами.', 1, 10, N'45', NULL)
SET IDENTITY_INSERT [dbo].[Recipes] OFF
GO
SET IDENTITY_INSERT [dbo].[RecipeTags] ON 

INSERT [dbo].[RecipeTags] ([RecipeTagID], [RecipeID], [TagID]) VALUES (1, 1, 7)
INSERT [dbo].[RecipeTags] ([RecipeTagID], [RecipeID], [TagID]) VALUES (2, 2, 5)
INSERT [dbo].[RecipeTags] ([RecipeTagID], [RecipeID], [TagID]) VALUES (3, 3, 9)
INSERT [dbo].[RecipeTags] ([RecipeTagID], [RecipeID], [TagID]) VALUES (4, 4, 5)
INSERT [dbo].[RecipeTags] ([RecipeTagID], [RecipeID], [TagID]) VALUES (5, 5, 7)
INSERT [dbo].[RecipeTags] ([RecipeTagID], [RecipeID], [TagID]) VALUES (6, 6, 10)
INSERT [dbo].[RecipeTags] ([RecipeTagID], [RecipeID], [TagID]) VALUES (7, 7, 3)
INSERT [dbo].[RecipeTags] ([RecipeTagID], [RecipeID], [TagID]) VALUES (8, 8, 9)
INSERT [dbo].[RecipeTags] ([RecipeTagID], [RecipeID], [TagID]) VALUES (9, 9, 8)
INSERT [dbo].[RecipeTags] ([RecipeTagID], [RecipeID], [TagID]) VALUES (10, 10, 7)
SET IDENTITY_INSERT [dbo].[RecipeTags] OFF
GO
SET IDENTITY_INSERT [dbo].[Reviews] ON 

INSERT [dbo].[Reviews] ([ReviewID], [RecipeID], [ReviewText], [Rating]) VALUES (1, 1, N'Очень вкусный борщ, всем рекомендую!', 5)
INSERT [dbo].[Reviews] ([ReviewID], [RecipeID], [ReviewText], [Rating]) VALUES (2, 2, N'Салат получился лёгким и вкусным.', 4)
INSERT [dbo].[Reviews] ([ReviewID], [RecipeID], [ReviewText], [Rating]) VALUES (3, 3, N'Шоколадный торт просто потрясающий!', 5)
INSERT [dbo].[Reviews] ([ReviewID], [RecipeID], [ReviewText], [Rating]) VALUES (4, 4, N'Омлет вышел нежным и воздушным.', 4)
INSERT [dbo].[Reviews] ([ReviewID], [RecipeID], [ReviewText], [Rating]) VALUES (5, 5, N'Плов на высшем уровне, как в ресторане.', 5)
INSERT [dbo].[Reviews] ([ReviewID], [RecipeID], [ReviewText], [Rating]) VALUES (6, 6, N'Компот освежающий и ароматный.', 4)
INSERT [dbo].[Reviews] ([ReviewID], [RecipeID], [ReviewText], [Rating]) VALUES (7, 7, N'Картофельное пюре понравилось всей семье.', 5)
INSERT [dbo].[Reviews] ([ReviewID], [RecipeID], [ReviewText], [Rating]) VALUES (8, 8, N'Блины получились тонкими и вкусными.', 5)
INSERT [dbo].[Reviews] ([ReviewID], [RecipeID], [ReviewText], [Rating]) VALUES (9, 9, N'Соус тартар дополнил блюдо идеально.', 5)
INSERT [dbo].[Reviews] ([ReviewID], [RecipeID], [ReviewText], [Rating]) VALUES (10, 10, N'Куриный суп лёгкий и питательный.', 4)
SET IDENTITY_INSERT [dbo].[Reviews] OFF
GO
SET IDENTITY_INSERT [dbo].[Tags] ON 

INSERT [dbo].[Tags] ([TagID], [TagName]) VALUES (1, N'Вегетарианское')
INSERT [dbo].[Tags] ([TagID], [TagName]) VALUES (2, N'Для детей')
INSERT [dbo].[Tags] ([TagID], [TagName]) VALUES (3, N'Диетическое')
INSERT [dbo].[Tags] ([TagID], [TagName]) VALUES (4, N'Праздничное')
INSERT [dbo].[Tags] ([TagID], [TagName]) VALUES (5, N'Быстрое')
INSERT [dbo].[Tags] ([TagID], [TagName]) VALUES (6, N'Сезонное')
INSERT [dbo].[Tags] ([TagID], [TagName]) VALUES (7, N'Классическое')
INSERT [dbo].[Tags] ([TagID], [TagName]) VALUES (8, N'Острое')
INSERT [dbo].[Tags] ([TagID], [TagName]) VALUES (9, N'Сладкое')
INSERT [dbo].[Tags] ([TagID], [TagName]) VALUES (10, N'Напитки')
SET IDENTITY_INSERT [dbo].[Tags] OFF
GO
ALTER TABLE [dbo].[CookingSteps]  WITH CHECK ADD  CONSTRAINT [FK_CookingSteps_Recipes] FOREIGN KEY([RecipeID])
REFERENCES [dbo].[Recipes] ([RecipeID])
GO
ALTER TABLE [dbo].[CookingSteps] CHECK CONSTRAINT [FK_CookingSteps_Recipes]
GO
ALTER TABLE [dbo].[RecipeIngredients]  WITH CHECK ADD  CONSTRAINT [FK_RecipeIngredients_Ingredients] FOREIGN KEY([IngredientID])
REFERENCES [dbo].[Ingredients] ([IngredientID])
GO
ALTER TABLE [dbo].[RecipeIngredients] CHECK CONSTRAINT [FK_RecipeIngredients_Ingredients]
GO
ALTER TABLE [dbo].[RecipeIngredients]  WITH CHECK ADD  CONSTRAINT [FK_RecipeIngredients_Recipes] FOREIGN KEY([RecipeID])
REFERENCES [dbo].[Recipes] ([RecipeID])
GO
ALTER TABLE [dbo].[RecipeIngredients] CHECK CONSTRAINT [FK_RecipeIngredients_Recipes]
GO
ALTER TABLE [dbo].[Recipes]  WITH CHECK ADD  CONSTRAINT [FK_Recipes_Authors] FOREIGN KEY([AuthorID])
REFERENCES [dbo].[Authors] ([AuthorID])
GO
ALTER TABLE [dbo].[Recipes] CHECK CONSTRAINT [FK_Recipes_Authors]
GO
ALTER TABLE [dbo].[Recipes]  WITH CHECK ADD  CONSTRAINT [FK_Recipes_Categories] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Categories] ([CategoryID])
GO
ALTER TABLE [dbo].[Recipes] CHECK CONSTRAINT [FK_Recipes_Categories]
GO
ALTER TABLE [dbo].[RecipeTags]  WITH CHECK ADD  CONSTRAINT [FK_RecipeTags_Recipes] FOREIGN KEY([RecipeID])
REFERENCES [dbo].[Recipes] ([RecipeID])
GO
ALTER TABLE [dbo].[RecipeTags] CHECK CONSTRAINT [FK_RecipeTags_Recipes]
GO
ALTER TABLE [dbo].[RecipeTags]  WITH CHECK ADD  CONSTRAINT [FK_RecipeTags_Tags] FOREIGN KEY([TagID])
REFERENCES [dbo].[Tags] ([TagID])
GO
ALTER TABLE [dbo].[RecipeTags] CHECK CONSTRAINT [FK_RecipeTags_Tags]
GO
ALTER TABLE [dbo].[Reviews]  WITH CHECK ADD  CONSTRAINT [FK_Reviews_Recipes] FOREIGN KEY([RecipeID])
REFERENCES [dbo].[Recipes] ([RecipeID])
GO
ALTER TABLE [dbo].[Reviews] CHECK CONSTRAINT [FK_Reviews_Recipes]
GO
