comparing
max: anOtherHz
	^ timesPerSecond > anOtherHz timesPerSecond
		ifTrue: [ self ]
		ifFalse: [ anOtherHz ]