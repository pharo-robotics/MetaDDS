as yet unclassified
obtainPort
	lastAssignedPort := lastAssignedPort + ((Random seed: DateAndTime now asUnixTime) nextInt:10).
	^ lastAssignedPort.