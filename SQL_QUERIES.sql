

/*
 * We really don't need the typeOf Test.
 * All we need is the addressOrZip flag, typeOfTest,
 * and typeOfDateTest
 */

/*
 * ADDRESSORZIPFLAG = ADDRESS = CASE 1 - 27
 */

/*
 * TYPE OF TEST = AIR = CASE 1 - 12
 */

/* TYPE OF AIR TEST = ALL          = CASE 1 - 3 */
/* TYPE OF AIR TEST = PARTICULATES = CASE 4 - 6 */
/* TYPE OF AIR TEST = CO2          = CASE 7 -9  */
/* TYPE OF AIR TEST = LEAD         = CASE 10 -12*/

/*
 * CASE 1:
 * address / air / all / one date
 * PRINT ADDRESS, ALL, ONE DATE
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
 * CASE 2:
 * address / air / all / two dates
 * PRINT ADDRESS, ALL, START DATE, END DATE
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

/*
 * CASE 3:
 * address / air / all / no dates
 * PRINT ADDRESS, ALL, NO DATES
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
 * CASE 4: 
 * address / air / particulates / one date
 * PRINT ADDRESS, PARTICULATES, ONE DATE
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
 * CASE 5: 
 * address / air / particulates / two dates
 * PRINT ADDRESS, PARTICULATES, START, END DATE
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

/*
 * CASE 6:
 * address / air / particulates / no dates
 * PRINT ADDRESS, PARTICULATES, NO DATES
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
 * CASE 7: typeOfTestDate = 0 = address / air / CO2 / one date
 * PRINT ADDRESS, CO2, START DATE
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
 * CASE 8: typeOfTestDate = 1 = address / air / CO2 / two dates
 * PRINT ADDRESS, CO2, START DATE, END DATE
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

/*
 * CASE 9: typeOfTestDate = 2 = address / air / CO2 / no dates
 * PRINT ADDRESS, CO2
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
 * CASE 10: typeOfTestDate = 0 = address / air / lead / one date
 * PRINT ADDRESS, LEAD, START DATE
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
 * CASE 11: typeOfTestDate = 1 = address / air / CO2 / two dates
 * PRINT ADDRESS, LEAD, START DATE, END DATE
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

/*
 * CASE 9: typeOfTestDate = 2 = address / air / CO2 / no dates
 * PRINT ADDRESS, LEAD
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
 * CASE 10: typeOFTestDate = 0 = address / water / all / one date
 * PRINT ADDRESS, ALL, STARTDATE
 */
select * from TestDateAndLocation
inner join
(
	select * from WaterTestResult
)T
on TestDateAndLocation.locationDateID = T.locationDateID
where TestDateAndLocation.streetAddress = '123 Main Street' and
TestDateAndLocation._date = '10/30/2015' and
T.userID = 1;


/*
 * TYPE OF TEST = WATER = CASE 13 - 27
 */

/*
* CASE 13: address water one date
*/
select * from TestDateAndLocation
inner join
(
	select * from WaterTestResult
)T
on TestDateAndLocation.locationDateID = T.locationDateID
where TestDateAndLocation.streetAddress = '123 Main Street' and
TestDateAndLocation._date = '10/30/2015' and
T.userID = 1;

/*
* CASE 14: address water two dates
*/
select * from TestDateAndLocation
inner join
(
	select * from WaterTestResult
)T
on TestDateAndLocation.locationDateID = T.locationDateID
where TestDateAndLocation._date between '10/30/2015' and '10/01/2020'
and TestDateAndLocation.streetAddress = '123 Main Street' and
userID = 1;

/*
* CASE 15: address water no dates
*/
select * from TestDateAndLocation
inner join
(
	select * from WaterTestResult
)T
on TestDateAndLocation.locationDateID = T.locationDateID
where TestDateAndLocation.streetAddress = '123 Main Street' and
T.userID = 1;

 /*
 * TYPE OF TEST = AIR 
 */

/*
 * CASE 28: zipcode air one date
 */
select * from TestDateAndLocation
inner join
(
	select * from AirTestResult
)T
on TestDateAndLocation.locationDateID = T.locationDateID
where TestDateAndLocation.zipCode = 60630 and
TestDateAndLocation._date = '10/30/2015' and
T.userID = 1;

/*
 * CASE 28: zip air two dates
 */
select * from TestDateAndLocation
inner join
(
	select * from AirTestResult
)T
on TestDateAndLocation.locationDateID = T.locationDateID
where TestDateAndLocation._date between '10/30/2015' and '10/01/2020'
and TestDateAndLocation.zipCode = 60630 and
userID = 1;


/*
 * ADDRESSORZIP = ZIP CASE 29 - 54
 */

/*
 * CASE 29: zip air no dates
 */
 select * from TestDateAndLocation
inner join
(
	select * from AirTestResult
)T
on TestDateAndLocation.locationDateID = T.locationDateID
where TestDateAndLocation.zipCode = 60630 and T.userID = 1;

/*
 * TYPE OF TEST = WATER = CASE 40 - 54
 */

/*
 * CASE 40: zip water one date
 */
select * from TestDateAndLocation
inner join
(
	select * from WaterTestResult
)T
on TestDateAndLocation.locationDateID = T.locationDateID
where TestDateAndLocation.zipCode = 60630 and
TestDateAndLocation._date = '10/30/2015' and
T.userID = 1;

/*
 * CASE 41: zip water two dates
 */
select * from TestDateAndLocation
inner join
(
	select * from WaterTestResult
)T
on TestDateAndLocation.locationDateID = T.locationDateID
where TestDateAndLocation._date between '10/30/2015' and '10/01/2020'
and TestDateAndLocation.zipCode = 60630 and
userID = 1;

/*
 * CASE 41: zip water no dates
 */
 select * from TestDateAndLocation
inner join
(
	select * from WaterTestResult
)T
on TestDateAndLocation.locationDateID = T.locationDateID
where TestDateAndLocation.zipCode = 60630 and T.userID = 1;

