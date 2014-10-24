as yet unclassified
obtainPort
	self flag: #GuaranteePortIsFree.
	lastAssignedPort := lastAssignedPort + ((Random seed: DateAndTime now asUnixTime) nextInt: 10).
	^ lastAssignedPort.