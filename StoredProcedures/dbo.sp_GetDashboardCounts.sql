USE [DecorPlastDB]
GO
/****** Object:  StoredProcedure [dbo].[sp_GetDashboardCounts]    Script Date: 03-03-2026 10.48.26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_GetDashboardCounts] 
	-- Add the parameters for the stored procedure here
	@Userid INT 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	DECLARE @Role VARCHAR(20)

	SELECT U.ShopName AS Name
	FROM tblUser U
	WHERE U.Id =  @UserId
	SELECT @Role = Role
	FROM tblUser
	WHERE Id = @UserId;
	
	IF @Role = 'Admin'
	BEGIN
		SELECT
		-- Pending Order Count
        (
            SELECT COUNT(*) 
            FROM tblOrders 
            WHERE Status = 'Pending'
        ) AS PandingOrdercount,
		(
            SELECT COUNT(*) 
            FROM tblOrders 
            WHERE Status = 'Completed'
        ) AS CompletedOrderCount,
		(
            SELECT ISNULL(SUM(Quantity), 0) 
            FROM tblStock 
            WHERE Quantity > 0
        ) AS Availavlestockcount,
		(
            SELECT COUNT(DISTINCT UserId) 
            FROM tblCategory 
            WHERE IsActive = 1
        ) AS totalUsercount;
	END 
	ELSE
	BEGIN
		SELECT 
		0 AS PandingOrdercount,
		0 AS CompletedOrderCount,
		0 AS totalUsercount,
		0 AS Availavlestockcount,
		0 AS ActiveUserCount;
	END
    -- Insert statements for procedure here
END
GO
