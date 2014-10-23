shape-tests
testTopicDescriptorsTypesAreTypes

	self assert: ( topics allSatisfy: [  : topic | topic type isKindOf:  MDDSTypeDescriptor ]).
	
	