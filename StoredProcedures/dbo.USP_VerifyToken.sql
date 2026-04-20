USE [DecorPlastDB]
GO
/****** Object:  StoredProcedure [dbo].[USP_VerifyToken]    Script Date: 03-03-2026 10.48.26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[USP_VerifyToken] 
	@UserId INT,
    @Token VARCHAR(MAX)
AS
BEGIN
	SET NOCOUNT ON;
	  IF EXISTS (
        SELECT 1 FROM tbltoken 
        WHERE userid = @UserId 
          AND token = @Token
    )
    BEGIN
        SELECT 1 AS STATUS
    END
    ELSE
    BEGIN
        SELECT 0 AS STATUS
    END
END
GO
