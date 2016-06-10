

/*
 * We really don't need the typeOf Test.
 * All we need is the addressOrZip flag, typeOfTest,
 * and typeOfDateTest
 */

/*
 * CASE 1:
 * address / air / all / no dates
 */
select * from TestDateAndLocation
inner join
(
	select * from AirTestResult
)T
on TestDateAndLocation.locationDateID = T.locationDateID
where TestDateAndLocation.streetAddress = '123 Main Street' and
T.userID = 1;


/*
 * CASE 2:
 * address / air / all / one date
 */
select * from TestDateAndLocation
inner join
(
	select * from AirTestResult
)T
on TestDateAndLocation.locationDateID = T.locationDateID
where TestDateAndLocation.streetAddress = '123 Main Street' and
TestDateAndLocation._date = '10/30/2015' and
T.userID = 1;

/*
 * CASE 3:
 * address / air / all / two dates
 */
select * from TestDateAndLocation
inner join
(
	select * from AirTestResult
)T
on TestDateAndLocation.locationDateID = T.locationDateID
where TestDateAndLocation._date between '10/30/2015' and '10/01/2020'
and TestDateAndLocation.streetAddress = '123 Main Street' and
userID = 1;


