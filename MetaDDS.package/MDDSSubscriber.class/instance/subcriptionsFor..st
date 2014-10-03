registry
subcriptionsFor: aParticipant
	^ subscriptions collect: [ : each | each participant = aParticipant ].