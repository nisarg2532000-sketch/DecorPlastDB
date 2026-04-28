USE [DecorPlastDB]
GO
/****** Object:  StoredProcedure [dbo].[USP_SaveOtp]    Script Date: 03-03-2026 10.48.26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[USP_SaveOtp]
    @PhoneNumber VARCHAR(15),
    @OtpCode VARCHAR(6),
    @ExpiryTime DATETIME
AS
BEGIN
    SET NOCOUNT ON;
IF EXISTS (SELECT 1 FROM OtpVerification WHERE PhoneNumber = @PhoneNumber)
    BEGIN
        -- Phone exists, update OTP
        UPDATE OtpVerification
        SET OtpCode = @OtpCode,
            ExpiryTime = @ExpiryTime,
            IsVerified = 0
        WHERE PhoneNumber = @PhoneNumber
    END
    ELSE
    BEGIN
        -- Phone not exists, insert new record
        INSERT INTO OtpVerification (PhoneNumber, OtpCode, ExpiryTime, IsVerified)
        VALUES (@PhoneNumber, @OtpCode, @ExpiryTime, 0)
    END
END
GO
