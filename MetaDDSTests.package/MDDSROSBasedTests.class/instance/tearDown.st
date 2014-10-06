setup
tearDown
	super tearDown.
	TKTRunner allSubInstances do: #cancel.
	MDDSReadingConnection allInstances do: #destroy.
	XMLRPCService stopAll.
	Socket allInstances do:#close.
	Smalltalk allClasses select: [ : c | c category = 'MDDSGenerated' ] thenDo: #removeFromSystem.
	7 timesRepeat: [  Smalltalk garbageCollect  ].

