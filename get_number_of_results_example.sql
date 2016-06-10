
/*
 * Get the number of AirTestResults that are needed
 * to go through a group of them and figure stuff out
 */

select count(*) from AirTestResult
inner join
(
	select * from TestDateAndLocation
)T
on AirTestResult.locationDateID = T.locationDateID
where AirTestResult.userID = 2
and T.streetAddress = '123 Main Street';