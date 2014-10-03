encoding
encodeTime: aTime
	| time |
	time := aTime.
	aTime isSymbol  ifTrue: [
		time := MDDSTimestamp perform: aTime.
	].
	(aTime isKindOf: DateAndTime )ifTrue:[
		time := MDDSTimestamp new timestamp: aTime; yourself.
	].

	self encodeUint32: time  secondsUTC.
	self encodeUint32: time  nanoSeconds.
	
