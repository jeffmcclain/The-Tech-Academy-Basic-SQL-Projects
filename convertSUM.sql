USE [db_zooTest2]
GO

/*CONVERT(varchar(50),@totalHab) = This is converting the data type from MONEY to String Characters
char(9) = Tab Key
char(13) = Line Break
*/
DECLARE @totalHab MONEY;
DECLARE @totalNut MONEY;
DECLARE @results MONEY;
SET @totalHab = (SELECT SUM(habitat_cost) FROM tbl_habitat);
SET @totalNut = (SELECT SUM(nutrition_cost) FROM tbl_nutrition);
SET @results = (@totalHab + @totalNut)
PRINT (
	CONVERT(varchar(50),@totalHab) + char(9) + ' - The Total Cost' + char(13) +
	CONVERT(varchar(50),@totalNut) + char(9) + char(9) + ' - The Total Nutrition ' + char(13) + '----------' + char(13) +
	CONVERT(varchar(50),@results)
);