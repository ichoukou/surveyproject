﻿USE [YOURDBNAME]
GO
/****** Object:  StoredProcedure [dbo].[vts_spSurveyDeleteFriendlyName]    Script Date: 7-2-2017 16:47:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:	<W3DevPro>
-- Create date: <2017/02/07>
-- Description:	<update to "remove" FriendlyUrl from Survey table i.e. set it to null>
-- =============================================
CREATE PROCEDURE [dbo].[vts_spSurveyDeleteFriendlyName]
	@SurveyId int
AS
BEGIN
	SET NOCOUNT ON;
	
    Update vts_tbSurvey
	set friendlyname= null
	where SurveyID = @SurveyId
	
END
