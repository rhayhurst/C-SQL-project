



select min(_date) from TestDateAndLocation
inner join
(
select * from AirTestResult
)T
on TestDateAndLocation.locationDateID = T.locationDateID
where TestDateAndLocation.streetAddress = '4978 North Menard'
and
T.userID = 1;

