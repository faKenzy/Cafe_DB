--CREATE DATABASE Cafe ON (NAME=Cafe, FILENAME= 'E:\DateBase\DB2\Cafe.mdf')


--CREATE TABLE Clients (
--	ID_Client INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
--	NameClient NVARCHAR(30) NOT NULL,
--	SecondNameClient NVARCHAR(30) NOT NULL,
--	Contacts NVARCHAR(30) NOT NULL,
--	ClientAddress NVARCHAR(50) NOT NULL
--)


--CREATE TABLE DishesCategories (
--	ID_DishCategories INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
--	CategoriesName NVARCHAR(30) NOT NULL,
--	CategoriesDescription NVARCHAR(50) NOT NULL,
--	CategoriesImage VARBINARY(max)
--)


--CREATE TABLE Dishes (
--	ID_Dish INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
--	DishName NVARCHAR(30) NOT NULL,
--	ID_Categories INT FOREIGN KEY REFERENCES DishesCategories ON DELETE CASCADE NOT NULL,
--	DishDescription NVARCHAR(50) NOT NULL,
--	DishImage VARBINARY(max),
--	DishPrice NUMERIC(10,2) 
--	)


--CREATE TABLE Orders (
--	ID_Order INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
--	ID_Client INT FOREIGN KEY REFERENCES Clients ON DELETE CASCADE NOT NULL,
--	OrderDate datetime default getdate() NOT NULL,
--	TotalPayable NUMERIC(10,2) NOT NULL,
--	Delivery NVARCHAR(30) NOT NULL,
--	Comment NVARCHAR(100) NOT NULL 
--)


--CREATE TABLE DishesOrder (
--	ID_DishOrder INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
--	ID_Dish INT FOREIGN KEY REFERENCES Dishes ON DELETE CASCADE NOT NULL,
--	Amount NUMERIC(10,2) NOT NULL,
--	ID_Order INT FOREIGN KEY REFERENCES Orders ON DELETE CASCADE NOT NULL 
--)


--INSERT INTO Clients VALUES 
--('Иванов', 'Иван', '89001112233', 'Пятигорск, ул.Калинина, 1'),
--('Петров', 'Петр', '89002223344', 'Пятигорск, ул.Калинина, 2'),
--('Сидоров', 'Алексей', '89001231223', 'Пятигорск, ул.Калинина, 3');

--SET IDENTITY_INSERT DishesCategories ON
--ALTER TABLE DishesCategories
--ALTER COLUMN CategoriesDescription nvarchar(200)
--INSERT INTO DishesCategories (ID_DishCategories, CategoriesName, CategoriesDescription, CategoriesImage) 
--SELECT '1','Закуски', 'Небольшое по объёму преимущественно холодное блюдо первой подачи.', BulkColumn
--FROM Openrowset( Bulk 'E:\DateBase\DB2\images\zakuski.jpg', Single_Blob) as Image

--INSERT INTO DishesCategories (ID_DishCategories, CategoriesName, CategoriesDescription, CategoriesImage) 
--SELECT '2','Первые блюда', 'Первое блюдо-это блюдо, обычно приготовленное из риса или макарон, которое едят в начале еды, но иногда ему может предшествовать одна или несколько закусок.', BulkColumn
--FROM Openrowset( Bulk 'E:\DateBase\DB2\images\pervie.jpeg', Single_Blob) as Image

--INSERT INTO DishesCategories (ID_DishCategories, CategoriesName, CategoriesDescription, CategoriesImage) 
--SELECT '3','Вторые блюда', 'Вторые блюда - это по сути блюда на каждый день. Такие блюда обычно готовят с мясом, включая в них ещё и гарнир.', BulkColumn
--FROM Openrowset( Bulk 'E:\DateBase\DB2\images\vtorie.jpg', Single_Blob) as Image

--ALTER TABLE Dishes
--ALTER COLUMN DishDescription nvarchar(250)
--SET IDENTITY_INSERT Dishes ON
--INSERT INTO Dishes (ID_Dish, DishName, ID_Categories, DishDescription, DishImage, DishPrice)
--SELECT '1', 'Цезарь', '1', 'Классическое сочетание сочных листьев салата Романо, томатов черри, с чесночными гренками, сыром «Пармезан» и оригинальной заправкой.', BulkColumn, '349'
--FROM Openrowset( Bulk 'E:\DateBase\DB2\images\cezar.jpg', Single_Blob) as Image

--INSERT INTO Dishes (ID_Dish, DishName, ID_Categories, DishDescription, DishImage, DishPrice)
--SELECT '2', 'Греческий салат', '1', 'Греческий салат из помидоров, сладкого перца, огурцов, феты, шалота и маслин, заправленный оливковым маслом с солью, чёрным перцем, душицей.', BulkColumn, '259'
--FROM Openrowset( Bulk 'E:\DateBase\DB2\images\greek.jpeg', Single_Blob) as Image

--INSERT INTO Dishes (ID_Dish, DishName, ID_Categories, DishDescription, DishImage, DishPrice)
--SELECT '3', 'Борщ', '2', 'Горячий заправочный суп на основе свёклы, которая придаёт ему характерный красный цвет.', BulkColumn, '199'
--FROM Openrowset( Bulk 'E:\DateBase\DB2\images\borsch.jpg', Single_Blob) as Image

--INSERT INTO Dishes (ID_Dish, DishName, ID_Categories, DishDescription, DishImage, DishPrice)
--SELECT '4', 'Куриный суп', '2', 'Суп из курицы, сваренной на медленном огне в воде, добавляются кусочки курицы, овощей, макаронные изделия, рис.', BulkColumn, '149'
--FROM Openrowset( Bulk 'E:\DateBase\DB2\images\sup.jpeg', Single_Blob) as Image

--INSERT INTO Dishes (ID_Dish, DishName, ID_Categories, DishDescription, DishImage, DishPrice)
--SELECT '5', 'Жаркое по-деревенски', '3', 'Простое, но очень ароматное и вкусное блюдо для семейного обеда или ужина.', BulkColumn, '459'
--FROM Openrowset( Bulk 'E:\DateBase\DB2\images\jarkoe.jpg', Single_Blob) as Image

--INSERT INTO Dishes (ID_Dish, DishName, ID_Categories, DishDescription, DishImage, DishPrice)
--SELECT '6', 'Жюльен с курицей и грибами', '3', 'Вкусный жюльен с курицей и грибами, в кокотнице, под золотистой сырной корочкой.', BulkColumn, '349'
--FROM Openrowset( Bulk 'E:\DateBase\DB2\images\jul.jpeg', Single_Blob) as Image

--INSERT INTO Orders (ID_Client, OrderDate, TotalPayable, Delivery, Comment) VALUES
--('1', '2023-03-29T13:59:06Z', '718', 'Самовывоз', 'Пожеланий нет'),
--('2', '2023-03-29T15:53:23Z', '548', 'Доставка', 'Пожеланий нет'),
--('3', '2023-04-02T17:14:27Z', '757', 'Самовывоз', 'Пожеланий нет');

--INSERT INTO DishesOrder (ID_Dish, Amount, ID_Order) VALUES
--('1', '718', '11'),
--('2', '548', '12'),
--('3', '757', '13');


--CREATE VIEW View_Dishes
--	AS
--		SELECT 
--			Dishes.DishName AS [Название блюда], 
--			DishesCategories.CategoriesName AS [Название категории],
--			Dishes.DishPrice AS [Цена блюда]
--		FROM Dishes, DishesCategories
--		WHERE (Dishes.ID_Categories=DishesCategories.ID_DishCategories)
--	GO

--CREATE VIEW View_Order
--	AS
--		SELECT 
--			Orders.ID_Order AS [Код заказа],
--			Orders.OrderDate AS [Дата и время заказа],
--			Clients.NameClient AS [Имя клиента],
--			Clients.ClientAddress AS [Адрес клиента]
--		FROM Orders, Clients
--		WHERE (Orders.ID_Client = Clients.ID_Client)
--	GO

--CREATE VIEW View_DishesOrder
--	AS
--		SELECT
--			dbo.DishesOrder.ID_DishOrder AS [Код блюда заказа],
--			dbo.Dishes.DishName AS [Название блюда],
--			dbo.Orders.ID_Order AS [Код заказа],
--			dbo.Dishes.DishPrice AS [Цена],
--			dbo.DishesOrder.Amount AS [Кол-во],
--			dbo.Dishes.DishPrice * dbo.DishesOrder.Amount AS [Сумма]
--		FROM dbo.DishesOrder INNER JOIN dbo.Dishes ON dbo.DishesOrder.ID_Dish = dbo.Dishes.ID_Dish INNER JOIN dbo.Orders ON dbo.DishesOrder.ID_Order = dbo.Orders.ID_Order

--CREATE FUNCTION Clients_Count()
--	RETURNS int
--	AS
--		BEGIN
--			DECLARE @rezult int
--			SELECT @rezult = COUNT(*) FROM Clients
--			RETURN @rezult
--		END

--CREATE FUNCTION DishesOrder_count()
--	RETURNS numeric(10,2)
--	AS
--	BEGIN
--		DECLARE @Result numeric(10,2)
--		SELECT @Result=AVG(Сумма) FROM View_DishesOrder
--		RETURN @Result
--	END
--	GO

--CREATE FUNCTION MAX_Coste()
--	RETURNS numeric(10,2)
--	AS
--	BEGIN
--		DECLARE @Result numeric(10,2)
--		SELECT @Result=MAX(Сумма) FROM View_DishesOrder
--		RETURN @Result
--	END
--	GO

--CREATE FUNCTION Fn_snacks(@Snaks nvarchar(30))
--	RETURNS TABLE
--	AS
--		RETURN
--			(
--				SELECT * FROM View_Dishes WHERE 'Название категории'=@Snaks
--			)
--	GO

--CREATE FUNCTION Fn_DishesN(@DishesN nvarchar(30))
--	RETURNS TABLE
--	AS
--		RETURN
--			(
--				SELECT * FROM View_DishesOrder WHERE 'Название блюда'=@DishesN
--			)
--	GO

--CREATE PROCEDURE Dishes_Of_Categories
--	@Categories nvarchar(30) = NULL
--	AS
--	BEGIN
--		SELECT * FROM View_Dishes WHERE 'Категория блюда'=@Categories
--	END
--	GO

--CREATE PROCEDURE Info_this_dish
--	@NameDish nvarchar(50) = NULL
--	AS
--	BEGIN
--		SELECT 'Название категории', 'Цена блюда' FROM View_Dishes
--		WHERE 'Название блюда'=@NameDish
--	END
--	GO

--CREATE PROCEDURE Create_Order
--	@ID_Cl int = NULL, 
--	@OD datetime = NULL, 
--	@Total numeric(10,2) = NULL, 
--	@Deliv char(30) = NULL,
--	@Comm char(100) = NULL
	
--	AS
--	BEGIN
--		insert Orders Values (@ID_Cl, @OD, @Total, @Deliv, @Comm)
--	END
--	GO

--CREATE PROCEDURE Edit_Order
--		@ID_Order int=NULL, 
--		@ID_Cl int = NULL, 
--		@OD datetime = NULL, 
--		@Total numeric(10,2) = NULL, 
--		@Deliv char(30) = NULL,
--		@Comm char(100) = NULL
--	AS
--	BEGIN
--		UPDATE Orders SET ID_Client=@ID_Cl, OrderDate=@OD, TotalPayable=@Total, Delivery=@Deliv, Comment=@Comm
--		WHERE ID_Order=@ID_Order
--	END
--	GO
--exec Create_Order 2, '2023-03-29T13:59:06Z', 100, 'Нет', 'Пожеланий нет'

--CREATE TRIGGER Insert_Orders ON Orders
--	FOR INSERT
--	AS
--	BEGIN
--		PRINT 'Запись добавлена'
--	END
--	GO

--CREATE TRIGGER Delete_Orders ON Orders
--	FOR DELETE
--	AS
--	BEGIN
--		PRINT 'Запись удалена'
--	END
--	GO

--CREATE TRIGGER Delete_Client ON Clients
--	INSTEAD OF DELETE
--	AS
--	BEGIN
--		delete Orders FROM deleted
--		WHERE deleted.ID_Client=Orders.ID_Client
--		delete Clients FROM deleted
--		WHERE deleted.ID_Client=Clients.ID_Client
--		PRINT 'Клиент удален'
--	END
--	GO

