/*
 * So what do we want to do here?
 * We want to get ALL of the particulate results
 * between certain dates.....
 */

/*
 * So what is it that we're trying to do?
 *
 * We're trying to display either:
 * (1) particulate
 * (2) turbidity
 * (3) coliforms
 *
 * But we have parameters.  
 * We're trying to display the results from either AirTestResult or
 * WaterTestResult, using:
 * a specific userID 
 * specific address OR specific zip code
 * and between specific dates.
 *
 * We have gathered all of this data in the code....
 *
 * So for our example, let's gather specifics:
 * Our userID will be 3 -- this is jimmyCrackCorn
 * the address will be 123 W Str 60601
 * and the dates will be between 10/30/2000 and 11/10/2011
 * There should be 12 entries
 */

 select T.particulates, TestDateAndLocation._date from TestDateAndLocation
 inner join
 (
	select AirTestResult.particulates, AirTestResult.locationDateID, AirTestResult.userID from AirTestResult
 )T
 on TestDateAndLocation.locationDateID = T.locationDateID 
 where T.userID = 3 and
 TestDateAndLocation._date between '10/30/2000' and '11/10/2011'; 