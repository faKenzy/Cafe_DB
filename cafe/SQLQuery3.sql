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
--('������', '����', '89001112233', '���������, ��.��������, 1'),
--('������', '����', '89002223344', '���������, ��.��������, 2'),
--('�������', '�������', '89001231223', '���������, ��.��������, 3');

--SET IDENTITY_INSERT DishesCategories ON
--ALTER TABLE DishesCategories
--ALTER COLUMN CategoriesDescription nvarchar(200)
--INSERT INTO DishesCategories (ID_DishCategories, CategoriesName, CategoriesDescription, CategoriesImage) 
--SELECT '1','�������', '��������� �� ������ ��������������� �������� ����� ������ ������.', BulkColumn
--FROM Openrowset( Bulk 'E:\DateBase\DB2\images\zakuski.jpg', Single_Blob) as Image

--INSERT INTO DishesCategories (ID_DishCategories, CategoriesName, CategoriesDescription, CategoriesImage) 
--SELECT '2','������ �����', '������ �����-��� �����, ������ �������������� �� ���� ��� �������, ������� ���� � ������ ���, �� ������ ��� ����� �������������� ���� ��� ��������� �������.', BulkColumn
--FROM Openrowset( Bulk 'E:\DateBase\DB2\images\pervie.jpeg', Single_Blob) as Image

--INSERT INTO DishesCategories (ID_DishCategories, CategoriesName, CategoriesDescription, CategoriesImage) 
--SELECT '3','������ �����', '������ ����� - ��� �� ���� ����� �� ������ ����. ����� ����� ������ ������� � �����, ������� � ��� ��� � ������.', BulkColumn
--FROM Openrowset( Bulk 'E:\DateBase\DB2\images\vtorie.jpg', Single_Blob) as Image

--ALTER TABLE Dishes
--ALTER COLUMN DishDescription nvarchar(250)
--SET IDENTITY_INSERT Dishes ON
--INSERT INTO Dishes (ID_Dish, DishName, ID_Categories, DishDescription, DishImage, DishPrice)
--SELECT '1', '������', '1', '������������ ��������� ������ ������� ������ ������, ������� �����, � ���������� ��������, ����� ��������� � ������������ ���������.', BulkColumn, '349'
--FROM Openrowset( Bulk 'E:\DateBase\DB2\images\cezar.jpg', Single_Blob) as Image

--INSERT INTO Dishes (ID_Dish, DishName, ID_Categories, DishDescription, DishImage, DishPrice)
--SELECT '2', '��������� �����', '1', '��������� ����� �� ���������, �������� �����, �������, ����, ������ � ������, ������������ ��������� ������ � �����, ������ ������, �������.', BulkColumn, '259'
--FROM Openrowset( Bulk 'E:\DateBase\DB2\images\greek.jpeg', Single_Blob) as Image

--INSERT INTO Dishes (ID_Dish, DishName, ID_Categories, DishDescription, DishImage, DishPrice)
--SELECT '3', '����', '2', '������� ����������� ��� �� ������ �����, ������� ������ ��� ����������� ������� ����.', BulkColumn, '199'
--FROM Openrowset( Bulk 'E:\DateBase\DB2\images\borsch.jpg', Single_Blob) as Image

--INSERT INTO Dishes (ID_Dish, DishName, ID_Categories, DishDescription, DishImage, DishPrice)
--SELECT '4', '������� ���', '2', '��� �� ������, ��������� �� ��������� ���� � ����, ����������� ������� ������, ������, ���������� �������, ���.', BulkColumn, '149'
--FROM Openrowset( Bulk 'E:\DateBase\DB2\images\sup.jpeg', Single_Blob) as Image

--INSERT INTO Dishes (ID_Dish, DishName, ID_Categories, DishDescription, DishImage, DishPrice)
--SELECT '5', '������ ��-����������', '3', '�������, �� ����� ��������� � ������� ����� ��� ��������� ����� ��� �����.', BulkColumn, '459'
--FROM Openrowset( Bulk 'E:\DateBase\DB2\images\jarkoe.jpg', Single_Blob) as Image

--INSERT INTO Dishes (ID_Dish, DishName, ID_Categories, DishDescription, DishImage, DishPrice)
--SELECT '6', '������ � ������� � �������', '3', '������� ������ � ������� � �������, � ���������, ��� ���������� ������ ��������.', BulkColumn, '349'
--FROM Openrowset( Bulk 'E:\DateBase\DB2\images\jul.jpeg', Single_Blob) as Image

--INSERT INTO Orders (ID_Client, OrderDate, TotalPayable, Delivery, Comment) VALUES
--('1', '2023-03-29T13:59:06Z', '718', '���������', '��������� ���'),
--('2', '2023-03-29T15:53:23Z', '548', '��������', '��������� ���'),
--('3', '2023-04-02T17:14:27Z', '757', '���������', '��������� ���');

--INSERT INTO DishesOrder (ID_Dish, Amount, ID_Order) VALUES
--('1', '718', '11'),
--('2', '548', '12'),
--('3', '757', '13');


--CREATE VIEW View_Dishes
--	AS
--		SELECT 
--			Dishes.DishName AS [�������� �����], 
--			DishesCategories.CategoriesName AS [�������� ���������],
--			Dishes.DishPrice AS [���� �����]
--		FROM Dishes, DishesCategories
--		WHERE (Dishes.ID_Categories=DishesCategories.ID_DishCategories)
--	GO

--CREATE VIEW View_Order
--	AS
--		SELECT 
--			Orders.ID_Order AS [��� ������],
--			Orders.OrderDate AS [���� � ����� ������],
--			Clients.NameClient AS [��� �������],
--			Clients.ClientAddress AS [����� �������]
--		FROM Orders, Clients
--		WHERE (Orders.ID_Client = Clients.ID_Client)
--	GO

--CREATE VIEW View_DishesOrder
--	AS
--		SELECT
--			dbo.DishesOrder.ID_DishOrder AS [��� ����� ������],
--			dbo.Dishes.DishName AS [�������� �����],
--			dbo.Orders.ID_Order AS [��� ������],
--			dbo.Dishes.DishPrice AS [����],
--			dbo.DishesOrder.Amount AS [���-��],
--			dbo.Dishes.DishPrice * dbo.DishesOrder.Amount AS [�����]
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
--		SELECT @Result=AVG(�����) FROM View_DishesOrder
--		RETURN @Result
--	END
--	GO

--CREATE FUNCTION MAX_Coste()
--	RETURNS numeric(10,2)
--	AS
--	BEGIN
--		DECLARE @Result numeric(10,2)
--		SELECT @Result=MAX(�����) FROM View_DishesOrder
--		RETURN @Result
--	END
--	GO

--CREATE FUNCTION Fn_snacks(@Snaks nvarchar(30))
--	RETURNS TABLE
--	AS
--		RETURN
--			(
--				SELECT * FROM View_Dishes WHERE '�������� ���������'=@Snaks
--			)
--	GO

--CREATE FUNCTION Fn_DishesN(@DishesN nvarchar(30))
--	RETURNS TABLE
--	AS
--		RETURN
--			(
--				SELECT * FROM View_DishesOrder WHERE '�������� �����'=@DishesN
--			)
--	GO

--CREATE PROCEDURE Dishes_Of_Categories
--	@Categories nvarchar(30) = NULL
--	AS
--	BEGIN
--		SELECT * FROM View_Dishes WHERE '��������� �����'=@Categories
--	END
--	GO

--CREATE PROCEDURE Info_this_dish
--	@NameDish nvarchar(50) = NULL
--	AS
--	BEGIN
--		SELECT '�������� ���������', '���� �����' FROM View_Dishes
--		WHERE '�������� �����'=@NameDish
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
--exec Create_Order 2, '2023-03-29T13:59:06Z', 100, '���', '��������� ���'

--CREATE TRIGGER Insert_Orders ON Orders
--	FOR INSERT
--	AS
--	BEGIN
--		PRINT '������ ���������'
--	END
--	GO

--CREATE TRIGGER Delete_Orders ON Orders
--	FOR DELETE
--	AS
--	BEGIN
--		PRINT '������ �������'
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
--		PRINT '������ ������'
--	END
--	GO

