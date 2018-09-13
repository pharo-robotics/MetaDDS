as yet unclassified
testExpectedType
	|   publication subscription  isExpectedType |
	
	publication :=  publisher publishing: participant.
	subscription := subscriber forParticipant: participant onRead: [ : val | isExpectedType := val isKindOf: (Smalltalk at:#Std_msgs_Int16 ) ].
	publication publish: [ : v | v data: 1  ].
	self assert: isExpectedType.