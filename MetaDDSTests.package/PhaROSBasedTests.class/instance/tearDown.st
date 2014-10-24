setup
tearDown
	super tearDown.
	[ 
	XMLRPCService stopAll.
	TKTRunner allSubInstances do: #cancel.
	MDDSPublication allInstances do: #stopPublishing.
	MDDSPublicationServer allInstances do: #stop.
	PhaROSParticipantExposure allInstances do: #unexpose.
	MDDSReadingNetworkConnection allInstances do: #destroy.
	Socket allInstances do: #destroy.
	MDDSEntity allSubInstances do: [ :e | e domain: nil ] ]
		on: Error
		do: [  ].
	2 timesRepeat: [ Smalltalk garbageCollect ]