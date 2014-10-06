as yet unclassified
initialize
	exposures := Set new .
	discovery := PhaROSDiscovery new.
	HeartbeatAnnouncer ifNil: [ 
		HeartbeatAnnouncer := PhaROSHeart new.
	].
	lastAssignedPort := 9998.