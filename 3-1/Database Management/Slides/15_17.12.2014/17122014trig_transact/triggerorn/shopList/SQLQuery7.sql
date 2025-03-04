USE [myTestDB]
GO
/****** Object:  Trigger [dbo].[trg_UpdateShoppingListFood]    Script Date: 15.12.2014 11:57:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER TRIGGER [dbo].[trg_UpdateShoppingListFood]
ON [dbo].[ShoppingListFood]
AFTER INSERT, UPDATE
AS
    UPDATE dbo.ShoppingList
    SET LastModifiedDate = GETDATE()
    WHERE ShopListID IN (SELECT DISTINCT ID FROM Inserted)