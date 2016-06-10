


/*
 *              AIR and WATER QUALITY TEST DATABASE
 */

/*
 * We're gonna store each test, the date, and the location of each test.
 * We will also store the results and descriptors of each test.
 * 
 * We will have ten tables total:
 * ( 1) UserTable
 * ( 2) TestLocationTable
 * ( 3) TestDate
 * ( 4) ParticulateDescriptor
 * ( 5) LeadCO2Descriptor
 * ( 6) TurbidityDescriptor
 * ( 7) ArsenicCopperDescriptor
 * ( 8) ColiformsDescriptor
 * ( 9) AirTestResult
 * (10) WaterTestResult
 *
 * The reason that we don't want a specific descriptor for each item measured is
 * that a lot of the time, the schedule is the same for different items measured.
 * For example, both lead and CO2 have the same results:  Good, Unhealthy, Very 
 * Unhealthy.
 */

 create table UserTable
 (
	userID int identity(1,1) primary key,
	username nvarchar(128) not null,
	password nvarchar(128) not null
 )

create table TestDateAndLocation
(
    locationDateID int identity(1,1) primary key,
	streetAddress  nvarchar(128) not null,
	zipCode int not null check
	(
	    /* all of Chicago */
		60601  <= zipCode and zipCode <= 60647 or
		zipCode = 60649  or   zipCode  = 60651 or
		zipCode = 60652  or   zipCode  = 60642 or
	    zipCode = 60653  or   zipCode  = 60655 or
		zipCode = 60656  or   zipCode  = 60657 or 
		zipCode = 60659  or   zipCode  = 60660 or
		zipCode = 60660  or   zipCode  = 60661 or
		zipCode = 60666  or   zipCode  = 60827 or

		/* Evanston */
		zipCode = 60201  or   zipCode  = 60202 or

		/* Oak Park */
		zipCode = 60301  or   zipCode  = 60302 or
		zipCode = 60304  or

		/* River Forest */
		zipCode = 60305		           
	),
	_date date not null
);

/*
 * "unhealthy for sensitive groups" has 30 chars
 */
create table ParticulateDescriptor
(
	particulateDescriptorID int identity(1,1) primary key,
	particulateDescriptor nvarchar(30) not null
);


create table LeadCO2Descriptor
(
	leadCO2DescriptorID int identity(1,1) primary key,
	leadCO2Descriptor nvarchar(14) not null
);


create table TurbidityDescriptor
(
	turbidityDescriptorID int identity(1,1) primary key,
	turbidityDescriptor nvarchar(10) not null
);

create table ArsenicCopperDescriptor
(
	arsenicCopperDescriptorID int identity(1,1) primary key,
	arsenicCopperDescriptor nvarchar(9) not null
);

create table ColiformsDescriptor
(
	coliformsDescriptorID int identity(1,1) primary key,
    coliformsDescriptor nvarchar(9) not null
);

create table AirTestResult
(
	airTestID             int identity(1,1) primary key,
	userID                int foreign key references UserTable   (userID),
	locationDateID        int foreign key references TestDateAndLocation(locationDateID),
	particulates          float not null check (0.0 <= particulates   and particulates   <= 210.0),
	carbonMonoxide        int   not null check (0   <= carbonMonoxide and carbonMonoxide <= 15),
    lead                  float not null check (0.0 <= lead           and lead           <= 0.20),
	particulateDescriptor int   not null,
	CO2Descriptor         int   not null,
	leadDescriptor        int   not null
);

create table WaterTestResult
(
	waterTestID         int identity(1,1) primary key,
	userID              int 5foreign key references UserTable   (userID),
	locationDateID      int foreign key references TestDateAndLocation(locationDateID),
	turbidity           float not null check(0.0 <= turbidity and turbidity  <= 1.4),
	coliforms           int   not null check(0    = coliforms or  coliforms   = 1),
	arsenic             float not null check(0.0 <= arsenic   and arsenic    <= 0.02),
	copper              float not null check(0.0 <= copper    and copper     <= 1.5),
	turbidityDescriptor int   not null,
	coliformsDescriptor int   not null,
	arsenicDescriptor   int   not null,
	copperDescriptor    int   not null
); 