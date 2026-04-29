USE [DecorPlastDB]
GO
/****** Object:  StoredProcedure [dbo].[USP_VerifyOtp]    Script Date: 03-03-2026 10.48.26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[USP_VerifyOtp]
    @PhoneNumber VARCHAR(15),
    @OtpCode VARCHAR(6)
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @StoredOtp VARCHAR(6)
    DECLARE @ExpiryTime DATETIME
    DECLARE @IsVerified BIT

    -- Get latest OTP for that phone number
    SELECT TOP 1 
        @StoredOtp = OtpCode,
        @ExpiryTime = ExpiryTime,
        @IsVerified = IsVerified
    FROM OtpVerification
    WHERE PhoneNumber = @PhoneNumber
    ORDER BY Id DESC


    -- If no OTP found
    IF @StoredOtp IS NULL
    BEGIN
        SELECT 0 AS Status, 'OTP not found' AS Message
        RETURN
    END


    -- If already verified
    IF @IsVerified = 1
    BEGIN
        SELECT 0 AS Status, 'OTP already verified' AS Message
        RETURN
    END


    -- If OTP expired
    IF @ExpiryTime < GETDATE()
    BEGIN
        SELECT 0 AS Status, 'OTP has been expired' AS Message
        RETURN
    END


    -- If OTP does not match
    IF @StoredOtp <> @OtpCode
    BEGIN
        SELECT 0 AS Status, 'OTP is wrong' AS Message
        RETURN
    END


    -- If everything correct → Verify OTP
    UPDATE OtpVerification
    SET IsVerified = 1
    WHERE PhoneNumber = @PhoneNumber
    AND OtpCode = @StoredOtp

    SELECT 1 AS Status, 'OTP verified successfully' AS Message

END
GO
