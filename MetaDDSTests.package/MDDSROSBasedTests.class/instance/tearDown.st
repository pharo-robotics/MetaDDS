setup
tearDown
	super tearDown.
	XMLRPCService stop: 9999.
	Smalltalk allClasses select: [ : c | c category = 'MDDSGenerated' ] thenDo: #removeFromSystem.
	20 timesRepeat: [  Smalltalk garbageCollect  ].

