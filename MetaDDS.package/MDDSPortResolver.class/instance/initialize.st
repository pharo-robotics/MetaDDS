initialization
initialize
	super initialize.
	lastAssignedPort := 9000 + ((Random seed: DateAndTime now asUnixTime) nextInt: 100)