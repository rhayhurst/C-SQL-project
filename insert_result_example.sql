


/*
 * Example of inserting a new user into the UserTable
 */
 /*
insert into UserTable(userName, password)
values('rhayhurst', 'password1');
*/

/*
 * Example of inserting a new air result test into the
 * database.
 * Note that we will just make up the userID and the date....
 * and, well, every other variable!
 *
 * With that said, we DO need to user SQL variables to insert
 * the locationDateID..
 */

declare @locationDateID int;

insert into TestDateAndLocation(streetAddress, zipCode, _date)
values('4978 North Menard', 60630, '20150525')
set @locationDateID = SCOPE_IDENTITY();

insert into AirTestResult
(
	userID,                 /* variable */
	locationDateID,         /* variable */
	particulateDescriptor,  /* int      */
	CO2Descriptor,          /* int      */
	leadDescriptor,         /* int      */
	particulates,           /* double   */
	carbonMonoxide,         /* int      */
	lead                    /* double   */
)
values(1, @locationDateID,2,0,2,15.5,0,0.01);

insert into TestDateAndLocation(streetAddress, zipCode, _date)
values('4978 North Menard', 60630, '20150525')
set @locationDateID = SCOPE_IDENTITY();

insert into WaterTestResult
(
	userID,                 /* variable */
	locationDateID,         /* variable */
	turbidityDescriptor,    /* int      */
	coliformsDescriptor,    /* int      */
	arsenicDescriptor,      /* int      */
	copperDescriptor,       /* int      */
	turbidity,              /* double   */
	coliforms,              /* int      */
	arsenic,                /* double   */
	copper                  /* double   */
)
values(1, @locationDateID, 2,1,1,3,0.31,1,0.00,1.5);
