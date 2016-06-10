
select avg(particulates) from AirTestResult
inner join
(
select * from TestDateAndLocation
)T
on AirTestResult.locationDateID = T.locationDateID
where AirTestResult.userID = 2 and
T.streetAddress = '123 Main Street';