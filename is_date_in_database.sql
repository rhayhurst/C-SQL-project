

/*
 * To get the date, we're gonna need the userID and an address or zip code
 */

select * from AirTestResult
inner join
(
	select * from TestDateAndLocation
)T
on AirTestResult.locationDateID = T.locationDateID
where AirTestResult.userID = 1 and
T.streetAddress = '123 Main Street' and
T._date = '10/30/2015';