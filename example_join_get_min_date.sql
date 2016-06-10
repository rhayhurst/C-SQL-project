


/*
 * find the min and max dates
 */

/*
 * So we'll be armed with both the userID and either the zip code or the address,
 * dependent on what the user wants to do.
 * From there, we run a minimum query on the date....
 */

begin tran t1;
select min(_date) from TestDateAndLocation 
join 
AirTestResult
on TestDateAndLocation.locationDateID = AirTestResult.locationDateID 
where TestDateAndLocation.zipCode = 60630 and AirTestResult.userID = 1;


select * from TestDateAndLocation
inner join
(
select * from AirTestResult
)T
on TestDateAndLocation.locationDateID = T.locationDateID;

commit tran t1;