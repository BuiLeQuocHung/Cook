CREATE PROCEDURE dbo.ContactAddorEdit
@mode nvarchar(10),
@Customer nvarchar(50),
@Order nvarchar(50),
@Quantity int,
@Prices int,
@Note nvarchar(50)

AS
	IF @mode='Add'
	BEGIN
		INSERT into OrderList(Customer, Food, Quantity, Prices, Note)
		Values (@Customer, @Order, @Quantity, @Prices, @Note)
	END