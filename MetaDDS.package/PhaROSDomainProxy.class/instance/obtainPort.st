as yet unclassified
obtainPort
	| basePort | 
	basePort :=  exposures isEmpty ifTrue: [  
		9999
	] ifFalse: [
		(exposures collect: #port ) max .
	].

	[ self canAdquire: basePort ] whileFalse: [ basePort := basePort + 1 ].

	^ basePort.