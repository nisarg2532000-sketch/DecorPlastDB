USE [DecorPlastDB]
GO
/****** Object:  StoredProcedure [dbo].[USP_CheckMobileExists]    Script Date: 03-03-2026 10.48.26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[USP_CheckMobileExists]
    @PhoneNumber VARCHAR(15)
AS
BEGIN
    SET NOCOUNT ON;

    IF EXISTS (
        SELECT 1 FROM tblUser
        WHERE MobileNo = @PhoneNumber
    )
    BEGIN
        SELECT 1 AS Status
    END
    ELSE
    BEGIN
        SELECT 0 AS Status
    END
END
GO
