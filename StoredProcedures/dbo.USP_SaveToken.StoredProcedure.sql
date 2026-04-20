USE [DecorPlastDB]
GO
/****** Object:  StoredProcedure [dbo].[USP_SaveToken]    Script Date: 03-03-2026 10.48.26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[USP_SaveToken] 
	-- Add the parameters for the stored procedure here
	@PhoneNumber VARCHAR(15),
	@Token VARCHAR(MAX)
AS
BEGIN
	SET NOCOUNT ON;

    -- Get UserId from tblUser by MobileNo
    DECLARE @UserId INT

    SELECT @UserId = Id 
    FROM tblUser 
    WHERE MobileNo = @PhoneNumber

    -- Check if User exists
    IF @UserId IS NULL
    BEGIN
        SELECT 'false' AS Status
        RETURN
    END

    -- Check if token already exists for this user
    IF EXISTS (SELECT 1 FROM tblToken WHERE UserId = @UserId)
    BEGIN
        -- Update existing token
        UPDATE tblToken
        SET 
            Token       = @Token,
            CreatedDate = GETDATE()
        WHERE UserId = @UserId

        SELECT 'true' AS Status
    END
    ELSE
    BEGIN
        -- Insert new token
        INSERT INTO tblToken (UserId, MobileNo, Token, CreatedDate)
        VALUES (@UserId, @PhoneNumber, @Token, GETDATE())

        SELECT 'true' AS Status
    END
END
GO
