tests
testTypeIsAType
	self assert: (self adhoc type isKindOf: MDDSType ).
	self assert: (self rosout type isKindOf: MDDSType )