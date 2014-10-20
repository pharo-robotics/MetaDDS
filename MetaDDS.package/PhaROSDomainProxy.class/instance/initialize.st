as yet unclassified
initialize
	exposures := Set new .
	lastAssignedPort := 9000 + ((Random seed: DateAndTime now asUnixTime) nextInt:100).
	registeredTopics := Set new.