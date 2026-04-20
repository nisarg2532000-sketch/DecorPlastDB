USE [DecorPlastDB]
GO
/****** Object:  StoredProcedure [dbo].[USP_GetUserByIds]    Script Date: 03-03-2026 10.48.26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[USP_GetUserByIds]
    @Id INT
AS
BEGIN
    SET NOCOUNT ON;

    SELECT 
        Id,
        Name,
        MobileNo
    FROM tblUser
    WHERE Id = @Id;
END
GO
