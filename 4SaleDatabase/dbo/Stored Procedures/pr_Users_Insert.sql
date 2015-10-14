-- =============================================
-- Author:		Rodrigo 
-- Create date:	14/10/2015
-- Description:	Insert
-- =============================================
CREATE PROCEDURE dbo.pr_Users_Insert
(
	@p_Username varchar (20),
	@p_Email varchar (50),
	@p_PasswordSalt varchar (10),
	@p_Password varchar (64),
	@p_CreationDate datetime,
	@p_IdUser numeric (18,0) OUTPUT
)
AS
Begin
	SET NOCOUNT ON

	INSERT INTO USR.Users
	( 
		Username, 
		Email, 
		PasswordSalt, 
		[Password], 
		CreationDate
	)
	VALUES
	(
		@p_Username,
		@p_Email,
		@p_PasswordSalt,
		@p_Password,
		@p_CreationDate
	)

	SET @p_IdUser = SCOPE_IDENTITY();
End;