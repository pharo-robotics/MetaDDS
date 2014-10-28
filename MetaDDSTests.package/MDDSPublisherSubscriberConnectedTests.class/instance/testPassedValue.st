as yet unclassified
testPassedValue
	| value allTrue publication subscription executed |
	allTrue := true.
	executed := 0.
	value := nil. 
	publication :=  publisher publishing: participant.
	subscription := subscriber forParticipant: participant onRead: [ :val | 
			executed := executed + 1.
			allTrue := allTrue and: [ val data = value ] ].
		
	1 to: 20 do: [ :i | 
		value := i.
		publication publish: [ :val | val data: value ] ].
	self assert: executed = 20.
	self assert: allTrue